# 如何使用

1. 下載並安裝 [GPG4Win](https://gpg4win.org/thanks-for-download.html)、rclone。
2. 開啟 CMD，輸入：

```
rclone config --config=./rclone.conf
```

```
name: onedrive            For OneDrive      (名稱，需與 copy.sh 配搭)
name: gdrive_mirror       For Google Drive  (名稱，需與 copy.sh 配搭)
```

(You can change them in `copy.sh`)

```
gpg --symmetric --cipher-algo AES256 rclone.conf 
```

(輸入想設定的金鑰)

It'll ask you for a passphrase, pick one you can remember.
Upload the generated rclone.conf.gpg to this repository's root directory(there is one already, that's mine. You should delete it.).
Go to `Settings` and click `Secrets`, create a repository secret called `GPG_PASSPHRASE`, paste your passphrase into it, click save.
Then edit this document, add sth. or delete sth. Then click save(This'll start the workflow).

**That's it, it'll run per 6 hrs.**
