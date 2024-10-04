#!/bin/bash
# This script will replace ps5 controller buttons with XB1 controller buttons

target_file=$1

ps=(
	PS._CROSS
	PS._CIRCLE
	PS._SQUARE
	PS._TRIANGLE
	PS._L1
	PS._R1
	PS._L2
	PS._R2
	PS._L3
	PS._R3
	PS._UP
	PS._DOWN
	PS._LEFT
	PS._RIGHT
	PS._PS
	"PS._SELECT|PS._SHARE"
	"PS._START|PS._OPTIONS"
	PS._RX
	PS._RY
	PS._LX
	PS._LY
	GET_L1
	PRESS_L1
	XB_B
	XB_A
	XB_X
	XB_Y
)

xb=(
	XB1_A
	XB1_B
	XB1_X
	XB1_Y
	XB1_LB
	XB1_RB
	XB1_LT
	XB1_RT
	XB1_LS
	XB1_RS
	XB1_UP
	XB1_DOWN
	XB1_LEFT
	XB1_RIGHT
	XB1_XBOX
	XB1_VIEW
	XB1_MENU
	XB1_RX
	XB1_RY
	XB1_LX
	XB1_LY
	GET_LB
	PRESS_LB
	XB1_B
	XB1_A
	XB1_X
	XB1_Y
)

num_buttons=${#ps[@]}

for i in $(seq 0 $((num_buttons-1)))
do
	echo sed -i -r "s/${ps[$i]}/${xb[$i]}/g" "$target_file"
	sed -i -r "s/${ps[$i]}/${xb[$i]}/g" "$target_file"
done

# Remove semi-colons at the end of lines
sed -i -r 's/;$//g' "$target_file"
