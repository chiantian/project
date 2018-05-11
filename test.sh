#!/bin/bash
case $1 in 
list)
 virsh list --all;;
start)
 virsh start $2;;
stop)
 virsh stop $2;;
*)
 echo "Usage:$0 list"
 echo "Usage:$0 [start|stop] VM_name"
 cat << EOF
 list 显示虚拟机列表
 start 启动虚拟机
 stop  关闭虚拟机
EOF
 ;;
esac
