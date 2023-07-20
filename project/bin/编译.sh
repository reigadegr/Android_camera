/data/data/com.termux/files/usr/lib/dart-sdk/bin/dart compile exe $(ls -a *dart) && echo "编译成功" || (echo "编译失败" && exit 1)
chmod +x $(pwd)/*.exe
rm $(pwd)/*.bak 2>/dev/null
exit 0