[TOC]

# 本地仓库、中央仓库、远程仓库的区别

![2019-07-29_135609](img/2019-07-29_135609.png)

# maven维护

https://mvnrepository.com/

![2019-07-29_135312](img/2019-07-29_135312.png)

# 阿里云维护

https://maven.aliyun.com/mvn/view

![2019-07-29_135402](img/2019-07-29_135402.png)

# maven常用命令

![2019-07-29_142019](img/2019-07-29_142019.png)

# maven的生命周期和执行顺序

![2019-07-29_142417](img/2019-07-29_142417.png)

# 创建maven项目

## 方式一：默认的

![2019-07-29_142926](img/2019-07-29_142926.png)

![2019-07-29_142946](img/2019-07-29_142946.png)

![2019-07-29_143004](img/2019-07-29_143004.png)

![2019-07-29_143057](img/2019-07-29_143057.png)

![2019-07-29_143351](img/2019-07-29_143351.png)

## 方式二：使用模板

![2019-07-29_142926](img/2019-07-29_142926.png)

![2019-07-29_143545](img/2019-07-29_143545.png)

![2019-07-29_143642](img/2019-07-29_143642.png)

发现报错了，缺少web.xml

创建webl.xml文件

![2019-07-29_144104](img/2019-07-29_144104.png)

添加插件

![2019-07-29_145531](img/2019-07-29_145531.png)

```xml
<build>
  	
  	<plugins><!-- 插件列表 -->
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-compiler-plugin</artifactId>
            <version>3.2</version>
            <configuration>
                <source>1.7</source>
                <target>1.7</target>
                <encoding>UTF-8</encoding>
            </configuration>
        </plugin>
  	</plugins>
 
</build>
```

发现报错，需要更新下项目

![2019-07-29_145010](img/2019-07-29_145010.png)

![2019-07-29_145041](img/2019-07-29_145041.png)

新建一个servlet

![2019-07-29_145852](img/2019-07-29_145852.png)

![2019-07-29_145932](img/2019-07-29_145932.png)

发现报错，需要添加依赖

![2019-07-29_190206](img/2019-07-29_190206.png)

```xml
<dependencies>
	  <dependency>
		  <groupId>junit</groupId>
		  <artifactId>junit</artifactId>
		  <version>4.10</version>
	  </dependency>
	  <dependency>
		  <groupId>javax.servlet</groupId>
		  <artifactId>servlet-api</artifactId>
		  <version>2.5</version>
	  </dependency>
</dependencies>
```

![2019-07-29_190314](img/2019-07-29_190314.png)

```xml
<pluginManagement>
    <plugins>
        <!-- 配置tomcat插件 -->
        <plugin>
            <groupId>org.apache.tomcat.maven</groupId>
            <artifactId>tomcat7-maven-plugin</artifactId>
            <version>2.2</version>
        </plugin>
    </plugins>
</pluginManagement>
```

运行项目

项目右击

![2019-07-29_190426](img/2019-07-29_190426.png)

![2019-07-29_190542](img/2019-07-29_190542.png)

在地址栏中输入http://localhost:8080/HelloMaven/test会报错

==cannot be cast to javax.servlet.Servlet==

解决办法：https://blog.csdn.net/weixin_38588501/article/details/80447039

修改依赖文件

![2019-07-29_192151](img/2019-07-29_192151.png)

再次运行时正常

![2019-07-29_192313](img/2019-07-29_192313.png)

scope的作用域

![2019-07-31_152742](img/2019-07-31_152742.png)

# maven3.6.1+tomcat9.0.8热部署

# 安装jar包到本地仓库

```
//指定jar包绝对路径
mvn install:install-file -DgroupId=com.alibaba -DartifactId=fastjson -Dversion=1.2.60 -Dpackaging=jar -Dfile=D:/fastjson-1.2.60.jar
//进入jar包目录后安装
mvn install:install-file -DgroupId=com.alibaba -DartifactId=fastjson -Dversion=1.2.60 -Dfile=fastjson-1.2.60.jar -Dpackaging=jar
```

# 打包时不包含指定目录
> 在pom.xml中添加如下配置，打包的使用会排除`/src/main/resources`目录
```xml
<build>
    <resources>
        <resource>
            <directory>/src/main/resources</directory>
            <filtering>true</filtering>
        </resource>
    </resources>
</build>
```