# 🧹 Ubuntu Snap Cleaning Script

[🇨🇳 简体中文](#%F0%9F%87%A8%F0%9F%87%B3-简体中文) | [🇺🇸 English](#%F0%9F%87%BA%F0%9F%87%B8-english)

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
