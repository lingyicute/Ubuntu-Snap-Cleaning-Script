#!/bin/bash

# 定义日志文件路径
LOG_FILE="/root/cleansnap-final-runtime.txt"

# 记录脚本开始运行时间
echo "脚本运行时间: $(date)" >> "$LOG_FILE"

# 确保脚本在出错时停止
set -eu

LANG=en_US.UTF-8

# 遍历所有已禁用的 Snap 并删除，同时记录删除的 Snap 到日志中
snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        echo "删除 Snap: $snapname, 修订版本: $revision" >> "$LOG_FILE"
        snap remove "$snapname" --revision="$revision"
        if [ $? -eq 0 ]; then
            echo "成功删除: $snapname, 修订版本: $revision" >> "$LOG_FILE"
        else
            echo "删除失败: $snapname, 修订版本: $revision" >> "$LOG_FILE"
        fi
    done

# 记录脚本结束运行时间
echo "脚本运行结束时间: $(date)" >> "$LOG_FILE"
echo "-------" >> "$LOG_FILE"
