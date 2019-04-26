; Subroutine called when the state change to this state
game_states_init:
VECTOR(init_game_state)
VECTOR(init_title_screen)
VECTOR(init_gameover_screen)
VECTOR(init_credits_screen)
VECTOR(init_config_screen)
VECTOR(init_stage_selection_screen)
VECTOR(init_character_selection_screen)

; Subroutine called each frame
game_states_tick:
VECTOR(game_tick)
VECTOR(title_screen_tick)
VECTOR(gameover_screen_tick)
VECTOR(credits_screen_tick)
VECTOR(config_screen_tick)
VECTOR(stage_selection_screen_tick)
VECTOR(character_selection_screen_tick)

#define GAME_STATE_INGAME $00
#define GAME_STATE_TITLE $01
#define GAME_STATE_GAMEOVER $02
#define GAME_STATE_CREDITS $03
#define GAME_STATE_CONFIG $04
#define GAME_STATE_STAGE_SELECTION $05
#define GAME_STATE_CHARACTER_SELECTION $06

#include "game/logic/game_states/character_selection_screen.asm"
#include "game/logic/game_states/config_screen.asm"
#include "game/logic/game_states/credits_screen.asm"
#include "game/logic/game_states/game.asm"
#include "game/logic/game_states/gameover_screen.asm"
#include "game/logic/game_states/stage_selection_screen.asm"
#include "game/logic/game_states/title_screen.asm"
#include "game/logic/game_states/transitions/transitions.asm"