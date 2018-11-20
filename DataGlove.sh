#!/bin/bash
echo "Welcome!"
echo "You are about to begin 3 programs that control 5DT Glove."
read -rsn1 -p"Press any key or wait for 3 seconds to continue..." -t 3 unm
password='shabadabadoo' #Don't record my keyword pls.

#Change this varito your node name
#node1_example: OnlyRight, Command, Gesture
node1='dataglovetest dataglove_publisher_OnlyRight' 
node2='ihand_control ihand_control_node'
node3='pololu_maestro_servo pololu_maestro_servo_node'

#Process: node 1 -> node 2 -> node 3

#node 2
#ihand_control_node
gnome-terminal -x bash -c "echo ==========${node2}==========;. /home/shabadabadoo/workspace/dataglove/devel/setup.sh;rosrun ${node2}"

#node 3
#pololu_mastro_servnode
gnome-terminal -x bash -c "echo ==========${node3}==========;. /home/shabadabadoo/workspace/dataglove/devel/setup.sh;echo ${password} | sudo -S chmod 666 /dev/ttyACM0;rosrun ${node3} /dev/ttyACM0"

#node 1
#dataglove_publisher_OnlyRight
gnome-terminal -x bash -c "echo ==========${node1}==========;. /home/shabadabadoo/workspace/dataglove/devel/setup.sh;echo ${password} | sudo -S chmod 666 /dev/usb/hiddev0;rosrun ${node1} /dev/usb/hiddev0"

password='' #Clean password
node1='' #Clean node1
exit 0
