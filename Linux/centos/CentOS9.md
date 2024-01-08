# CentOS9安装后配置

# 网络管理工具
```bash
# 网络管理工具
dnf install net-tools vim yum-utils -y
```

# 设置语系
```bash
# 先查看有没有已安装的语系
locale -a
# 如果没有就下载语系，这里下载的是英文
dnf install langpacks-en -y

# 修改语系
LANG=en_US.utf8
# 设置所有语言环境
export LC_ALL=en_US.utf8
```
> 系统永久生效可以修改`/etc/locale.conf`文件

## 更新系统
```bash
dnf update -y
```

## 清理缓存
```bash
dnf clean all
```

## 清理多余内核
```bash
package-cleanup --oldkernels --count=1
```