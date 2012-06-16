/*
 * Rename Master by Crispi Special For wowjp.net
 * SD Name -> C++ Customize Master
 * SD Data -> 100%
 * SD Script Content -> C++
 * SD Category -> Custom
 * SD Release 17.10.2011
 * The Support For TrinityCore
 */

#include "ScriptPCH.h"

enum ActCustomizeMaster
{
    ACTION_RENAME                = 1001,
    ACTION_CUSTOMIZE             = 1002,
    ACTION_CONFIRM_RENAME        = 1003,
    ACTION_CONFIRM_CUSTOMIZE     = 1004
};

#define RENAME_GOLD_COST    60000000000 // Цена за смену имени (Указывать в медных монетах)
#define CUSTOMIZE_GOLD_COST 90000000000 // Цена за смену внешности (Указывать в медных монетах)

#define GOSSIP_MENU_RENAME "Я Хочу Сменить Имя Персонажа"
#define GOSSIP_MENU_CUSTOMIZE "Я хочу Сменить Внешность Персонажа"
#define GOSSIP_MENU_RENAME_CONFIRM "Стоимость 60.000 Золотых Продолжить?" // Меню Стоимости смены имени
#define GOSSIP_MENU_CUSTOMIZE_CONFIRM "Стоимость 90.000 Золотых Продолжить?" // Меню Стоимости смены внешности

#define SEND_CHAT_MSG_NOT_GOLD "У Вас Не Достаточно Золота!"
#define SEND_CHAT_MSG_RENAME_COMPLETE "Оплата Успешно Произведена Сделайте Логаут и Введите Новое Имя Персонажа.Не Забудьте После Смены Имени,Выйти Из Игры и Удалить Из Клиента Папку Cache!"
#define SEND_CHAT_MSG_CUSTOMIZE_COMPLETE "Оплата Успешно Произведена Сделайте Логаут и Измените Внешность Персонажа.Не Забудьте После Смены Внешности,Выйти Из Игры и Удалить Из Клиента Папку Cache!"

class npc_customize_master : public CreatureScript
{
public:
    npc_customize_master() : CreatureScript("npc_customize_master") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_MENU_RENAME, GOSSIP_SENDER_MAIN, ACTION_RENAME);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_MENU_CUSTOMIZE, GOSSIP_SENDER_MAIN, ACTION_CUSTOMIZE);
        player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 uiSender, uint32 uiAction)
    {
        if (uiSender != GOSSIP_SENDER_MAIN)
            return false;

        player->PlayerTalkClass->ClearMenus();

        switch (uiAction)
        {
        case ACTION_RENAME:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_MENU_RENAME_CONFIRM, GOSSIP_SENDER_MAIN, ACTION_CONFIRM_RENAME);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
            break;
        case ACTION_CUSTOMIZE:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_MENU_CUSTOMIZE_CONFIRM, GOSSIP_SENDER_MAIN, ACTION_CONFIRM_CUSTOMIZE);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
            break;
        case ACTION_CONFIRM_RENAME:
            if (player->GetMoney() < RENAME_GOLD_COST)
            {
                creature->MonsterWhisper(SEND_CHAT_MSG_NOT_GOLD, player->GetGUID());
            }else{
                creature->MonsterWhisper(SEND_CHAT_MSG_RENAME_COMPLETE, player->GetGUID());
                player->ModifyMoney(-RENAME_GOLD_COST);
                player->SetAtLoginFlag(AT_LOGIN_RENAME);
            }
            player->CLOSE_GOSSIP_MENU();
            break;
        case ACTION_CONFIRM_CUSTOMIZE:
            if (player->GetMoney() < CUSTOMIZE_GOLD_COST)
            {
                creature->MonsterWhisper(SEND_CHAT_MSG_NOT_GOLD, player->GetGUID());
            }else{
                creature->MonsterWhisper(SEND_CHAT_MSG_CUSTOMIZE_COMPLETE, player->GetGUID());
                player->ModifyMoney(-CUSTOMIZE_GOLD_COST);
                player->SetAtLoginFlag(AT_LOGIN_CUSTOMIZE);
            }
            player->CLOSE_GOSSIP_MENU();
            break;
        default:
            player->CLOSE_GOSSIP_MENU();
        }
        return true;
    }
};

void AddSC_npc_customize_master()
{
    new npc_customize_master();
}