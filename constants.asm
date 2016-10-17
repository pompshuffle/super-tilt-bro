#define STAGE_EDGE_LEFT #$20
#define STAGE_EDGE_RIGHT #$d8
#define STAGE_EDGE_TOP #$80
#define STAGE_EDGE_BOTTOM #$ff

#define RESPAWN_X #$70
#define RESPAWN_Y #$60

#define PLAYER_STATE_STANDING #$00
#define PLAYER_STATE_RUNNING #$01
#define PLAYER_STATE_FALLING #$02
#define PLAYER_STATE_JUMPING #$03
#define PLAYER_STATE_JABBING #$04
#define PLAYER_STATE_THROWN #$05
#define PLAYER_STATE_RESPAWN #$06
#define PLAYER_STATE_SIDE_TILT #$07
#define PLAYER_STATE_SPECIAL #$08
#define PLAYER_STATE_SIDE_SPECIAL #$09
#define PLAYER_STATE_HELPLESS #$0a
#define PLAYER_STATE_LANDING #$0b

#define DIRECTION_LEFT #$00
#define DIRECTION_RIGHT #$01

#define HITBOX_DISABLED #$00
#define HITBOX_ENABLED #$01

#define TILENUM_NT_CHAR_0 #$14

#define CONTROLLER_BTN_A      %10000000
#define CONTROLLER_BTN_B      %01000000
#define CONTROLLER_BTN_SELECT %00100000
#define CONTROLLER_BTN_START  %00010000
#define CONTROLLER_BTN_UP     %00001000
#define CONTROLLER_BTN_DOWN   %00000100
#define CONTROLLER_BTN_LEFT   %00000010
#define CONTROLLER_BTN_RIGHT  %00000001

#define CONTROLLER_INPUT_JUMP          CONTROLLER_BTN_UP
#define CONTROLLER_INPUT_JAB           CONTROLLER_BTN_A
#define CONTROLLER_INPUT_LEFT          CONTROLLER_BTN_LEFT
#define CONTROLLER_INPUT_RIGHT         CONTROLLER_BTN_RIGHT
#define CONTROLLER_INPUT_JUMP_RIGHT    CONTROLLER_BTN_UP | CONTROLLER_BTN_RIGHT
#define CONTROLLER_INPUT_JUMP_LEFT     CONTROLLER_BTN_UP | CONTROLLER_BTN_LEFT
#define CONTROLLER_INPUT_ATTACK_LEFT   CONTROLLER_BTN_LEFT | CONTROLLER_BTN_A
#define CONTROLLER_INPUT_ATTACK_RIGHT  CONTROLLER_BTN_RIGHT | CONTROLLER_BTN_A
#define CONTROLLER_INPUT_SPECIAL       CONTROLLER_BTN_B
#define CONTROLLER_INPUT_SPECIAL_RIGHT CONTROLLER_BTN_B | CONTROLLER_BTN_RIGHT
#define CONTROLLER_INPUT_SPECIAL_LEFT  CONTROLLER_BTN_B | CONTROLLER_BTN_LEFT
