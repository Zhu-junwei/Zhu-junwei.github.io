# df -h命令卡住
命令行输入`df -h`却发现一直卡在那里，有可能是挂载出了问题。

这种问题，大概率是由于 mount 的目录被删除了，但是没有提前执行 umount 操作，因此报错！

# 解决方法：
1、首先就是使用strace去追踪到底在哪里卡住了
```sql
strace df -h
```
2、然后在使用strace df -h 就会显示出卡住的地方
```sql
stat ("/tmp/abc"
```
3、使用 umount -l 命令卸载无效挂载目录
```sql
umount -l /tmp/abc/
```

再使用`df -h`就可以看到命令正常执行了