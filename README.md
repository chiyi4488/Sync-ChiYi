# 如何使用

1. 下載並安裝 [GPG4Win](https://gpg4win.org/thanks-for-download.html)、rclone。
2. 開啟 CMD，輸入：

```
rclone config --config=./rclone.conf
```

```
name: onedrive              For OneDrive      (名稱，需與 copy.sh 配搭)
name: google_drive          For Google Drive  (名稱，需與 copy.sh 配搭)
```


```
gpg --symmetric --cipher-algo AES256 rclone.conf 
```

輸入此指令後，將會有視窗提示你輸入金鑰，請輸入一個是你可以記得的。

3. 上傳 gpg 指令所生成的 rclone.conf.gpg 檔案至 repository 的主目錄 (root)(在主目錄中應該已經有了，但那是我的，你應該替換它)

4. 前往 **Settings**，然後點 **Secrets**，建立一個secret，名叫 `GPG_PASSPHRASE`，然後輸入你設定的金鑰，並儲存。

5. 最後編輯此文件，新增無用的換行，或刪除無用的換行，然後儲存。(觸發) workflow

**完成了，它將會每 6 小時執行一次。**
