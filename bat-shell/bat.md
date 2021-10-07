[TOC]

# SC

> 描述:
> ​        SC 是用来与服务控制管理器和服务进行通信
> ​        的命令行程序。
> 用法:
> ​        sc <server> \[command][service name] <option1> <option2>...



## 启动服务

```powershell
//启动mysql服务
sc start mysql
//启动clouddriveservice
sc start clouddriveservice
```

## 停止服务

```powershell
//停止mysql服务
sc stop mysql
//停止clouddriveservice
sc stop clouddriveservice
```

## 设置服务启动类型

> sc <server> config [服务名称] <option1> <option2>...

```powershell
//设置为手动启动
sc config mysql start=demand
//设置为禁用
sc config mysql start=disabled
//设置为自动
sc config mysql start=auto
//设置为自动（延迟启动）
sc config mysql start=delayed-auto
```

## 创建服务

> sc create
>
> 描述:
> ​        在注册表和服务数据库中创建服务项。
> 用法:
> ​        sc <server> create \[service name] [binPath= ] <option1> <option2>...

```powershell
sc create clouddrive binPath=D:\CloudDrive\CloudDriveService.exe start=auto
```

## 设置服务的描述

> sc description
> 描述:
> ​        设置服务的描述字符串。
> 用法:
> ​        sc <server> description \[service name] [description]

```powershell
sc description clouddrive "这是我创建的第一个服务"
```



## 卸载服务

> sc delete
> 描述:
> ​        从注册表删除服务项。
> ​        如果服务正在运行，或另一进程已经打开
> ​        到此服务的句柄，服务将简单地标记为
> ​        删除。
> 用法:
> ​        sc <server> delete [service name]

```powershell
sc delete clouddrive
```



## 参考资料

[SC命令详解 - 森大科技 - 博客园](https://www.cnblogs.com/cnsend/p/12907229.html)

