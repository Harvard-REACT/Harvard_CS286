#!/bin/bash

#$1 = remote rx1 username
#$2 = remote rx1 IP
#$3 = packet length
#$4 = remote tx1 username
#$5 = remote tx1 IP


#FOR TX-Node
#bot_dir="/home/$5/catkin_ws/src"
ssh $4@$5 "bash ~/Harvard_CS286/cs286_mini_hack_2/scripts/start_csi_logging.sh tx1" &


#FOR RX-ROBOT
#bot_dir="/home/$2/catkin_ws/src"
ssh $1@$2 "bash ~/Harvard_CS286/cs286_mini_hack_2/scripts/start_csi.sh rx1 $3" & 


