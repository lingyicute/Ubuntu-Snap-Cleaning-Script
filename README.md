# 🧹 Ubuntu Snap Cleaning Script

[🇨🇳 简体中文](#%F0%9F%87%A8%F0%9F%87%B3-简体中文) | [🇺🇸 English](#%F0%9F%87%BA%F0%9F%87%B8-english)

# 🧹 Ubuntu Snap Cleaning Script

[🇨🇳 简体中文](#%F0%9F%87%A8%F0%9F%87%B3-简体中文) | [🇺🇸 English](#%F0%9F%87%BA%F0%9F%87%B8-english)

---

## 🇨🇳 简体中文

欢迎使用 **Ubuntu Snap Cleaning Script**！这个脚本专门用来清理那些已经被禁用但却还在继续占用磁盘空间的 Snap 修订版本，让你的系统更清爽、更干净！✨

---

### 🛠 功能介绍
- 检测所有被禁用（`disabled`）的 Snap 修订版本。
- 自动删除它们，释放宝贵的磁盘空间。
- 每次删除都会记录在日志文件中，方便追踪和检查。
- 日志文件会记录脚本运行的开始时间、结束时间，以及每个 Snap 的删除状态。

---

### 📋 使用方法

#### 1️⃣ 准备工作
- **请确保在运行脚本之前关闭所有的 Snap 应用**，以免意外出现问题。
- 请以 `root` 用户身份或 sudo 命令执行此脚本，因为删除 Snap 修订版本需要 root 权限。

#### 2️⃣ 下载脚本
你可以使用以下命令把脚本 clone 到你的系统上。
```bash
git clone https://github.com/lingyicute/Ubuntu-Snap-Cleaning-Script
```

#### 3️⃣ 运行脚本
在终端中运行以下命令：
```bash
sudo bash cleansnap.sh
```

#### 4️⃣ 日志文件
运行完成后，你可以在 `/root/cleansnap-script-log.txt` 中查看脚本运行的详细日志，包括：
- 脚本的开始和结束时间。
- 每个被删除的 Snap 名称和修订版本。
- 删除是否成功的状态。

---

### 注意事项
1. **请务必先关闭 Snap 应用再运行脚本**，否则可能会影响正在运行的程序。
2. 日志文件会保存在 `/root/cleansnap-script-log.txt`，你可以根据需要修改脚本中的日志文件路径。
3. 运行脚本时，确保你的 Snap 版本支持 `--revision` 参数。

---

### 示例日志
以下是日志文件的一个小片段。没错，就是这么贴心！
```
脚本运行时间: Tue Jan 28 12:00:00 UTC 2025
删除 Snap: firefox, 修订版本: 42
成功删除: firefox, 修订版本: 42
删除 Snap: snapd, 修订版本: 97
删除失败: snapd, 修订版本: 97
脚本运行结束时间: Tue Jan 28 12:05:00 UTC 2025
```

---

### 🌟 未来计划
- 增加更多日志信息，比如剩余磁盘空间的情况。
- 支持自动关闭所有正在运行的 Snap 应用（开发中 🛠）。
- 提供更详细的错误报告。

---

### 🐧 适用环境
- Ubuntu 以及其他使用了 Snap 的 Linux 系统。
- Bash Shell 环境。

---

### 💖 支持我
如果你觉得这个脚本对你有帮助，请给它一颗小星星⭐，并分享给更多需要它的人吧！

---


## 🇺🇸 English

Welcome to **Ubuntu Snap Cleaning Script**! This script is designed to clean up disabled Snap revisions that are still taking up disk space, helping you keep your system tidy and optimized! ✨

---

### 🛠 Features
- Detects all disabled Snap revisions (`disabled` state).
- Automatically deletes them to free up valuable disk space.
- Logs every deletion for tracking and review.
- Log file includes the script's start time, end time, and the status of each Snap revision deletion.

---

### 📋 How to Use

#### 1️⃣ Preparation
- **Make sure to close all Snap applications before running the script** to avoid potential issues.
- Run the script as the `root` user or with `sudo` privileges since deleting Snap revisions requires administrative access.

#### 2️⃣ Download the Script
Clone the script to your system using the following command:
```bash
git clone https://github.com/lingyicute/Ubuntu-Snap-Cleaning-Script
```

#### 3️⃣ Run the Script
Execute the script from the terminal with:
```bash
sudo bash cleansnap.sh
```

#### 4️⃣ Log File
After the script finishes running, you can find detailed logs in `/root/cleansnap-script-log.txt`. The log file includes:
- The start and end time of the script.
- Names and revision numbers of the deleted Snaps.
- Success or failure status of each deletion.

---

### ⚠️ Notes
1. **Always close Snap applications before running the script** to prevent interruptions.
2. The log file is saved in `/root/cleansnap-script-log.txt`. You can modify the log file path in the script if needed.
3. Ensure your Snap version supports the `--revision` parameter for proper functionality.

---

### Example Log
Below is a sample of the log file. Yes, it's this user-friendly!
```
Script Start Time: Tue Jan 28 12:00:00 UTC 2025
Deleting Snap: firefox, Revision: 42
Successfully Deleted: firefox, Revision: 42
Deleting Snap: snapd, Revision: 97
Failed to Delete: snapd, Revision: 97
Script End Time: Tue Jan 28 12:05:00 UTC 2025
```

---

### 🌟 Future Plans
- Add more detailed log information, such as available disk space after cleanup.
- Support for automatically closing all running Snap applications (in development 🛠).
- Provide more descriptive error reports.

---

### 🐧 Supported Environments
- Ubuntu and other Linux systems using Snap.
- Bash Shell environment.

---

### 💖 Support Me
If you find this script helpful, please give it a star ⭐ and share it with others who might need it!

---
