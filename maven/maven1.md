# 1、下载

maven官方 https://maven.apache.org/download.cgi

清华镜像下载maven https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/

# 2、解压

![2019-09-26_234435](img/2019-09-26_234435.png)

# 3、配置maven所在路径

![2019-10-04_112235](img/2019-10-04_112235.png)

在命令行使用命令`mvn -v`查看maven路径是否配置正确

![2019-10-04_113418](img/2019-10-04_113418.png)



# 4、配置本地仓库位置、镜像位置

打开..\apache-maven-3.6.2\conf\setting.xml

## 4.1 仓库位置(本地仓库)

设置本地仓库的位置

![2019-09-26_235031](img/2019-09-26_235031.png)

## 4.2 镜像位置(远程仓库)

这里配置阿里云的仓库

![2019-09-26_235339](img/2019-09-26_235339.png)

```xml
<mirror>
    <id>alimaven</id>
    <name>aliyun maven</name>
    <url>http://maven.aliyun.com/nexus/content/groups/public/</url>
    <mirrorOf>central</mirrorOf>       
</mirror>
```

# 5、IDEA配置maven

![2019-09-26_235730](img/2019-09-26_235730.png)

# 6、Eclipse配置maven

![2019-10-07_191543](img/2019-10-07_191543.png)

