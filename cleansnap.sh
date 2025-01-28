#!/bin/bash

# 定义日志文件路径
LOG_FILE="/root/cleansnap-script-log"

# 记录脚本开始运行时间
echo "Script start time 脚本运行时间: $(date)" >> "$LOG_FILE"

# 确保脚本在出错时停止
set -eu

LANG=en_US.UTF-8

# 遍历所有已禁用的 Snap 并删除，同时记录删除的 Snap 到日志中
snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        echo "Deleting Snap 正在删除: $snapname, Revision 修订版本: $revision" >> "$LOG_FILE"
        snap remove "$snapname" --revision="$revision"
        if [ $? -eq 0 ]; then
            echo "Successfully deleted 成功删除: $snapname, Revision 修订版本: $revision" >> "$LOG_FILE"
        else
            echo "Failed to delete 删除失败: $snapname, Revision 修订版本: $revision" >> "$LOG_FILE"
        fi
    done

# 记录脚本结束运行时间
echo "Script end time 脚本运行结束时间: $(date)" >> "$LOG_FILE"
echo "-------" >> "$LOG_FILE"
