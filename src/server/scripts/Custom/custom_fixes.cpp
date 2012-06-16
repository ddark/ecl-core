/*
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptPCH.h"

/*######
## go_memorial_plaque_play_movie
######*/

enum GOSSIPS
{
        FALL_OF_THE_LICH_KING,
};

#define GOSSIP_TEXT_SEE_FALL_OF_THE_LICH_KING   "See the fall of the Lich King."
#define GOSSIP_MESSAGE_MEMORIAL                                 15921

class go_memorial_plaque_play_movie : public GameObjectScript
{
public: 
        go_memorial_plaque_play_movie() : GameObjectScript("go_memorial_plaque_play_movie") { }
        
        bool OnGossipHello(Player *player, GameObject *go)
        {
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_TEXT_SEE_FALL_OF_THE_LICH_KING, GOSSIP_SENDER_MAIN, FALL_OF_THE_LICH_KING);
                player->SEND_GOSSIP_MENU(GOSSIP_MESSAGE_MEMORIAL, go->GetGUID());
                
                return true;
        }
        
        bool OnGossipSelect(Player *player, GameObject *go, uint32 /*uiSender*/, uint32 uiAction)
        {
                player->PlayerTalkClass->ClearMenus();
                switch(uiAction)
                {
                        case FALL_OF_THE_LICH_KING:
                                player->SendMovieStart(16);
                                player->CLOSE_GOSSIP_MENU(); 
                                break;
                }

                return true;
        }
};

void AddSC_custom_fixes()
{
    new go_memorial_plaque_play_movie();
}
