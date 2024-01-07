
添加欢迎页
```bash
cd ~
wget https://github.com/Zhu-junwei/notebook/master/Linux/script/welcome_script.sh -O ~/welcome_script.sh
chmod +x welcome_script.sh 
```
设置每次启动生效
```bash
sed -i '$ a ~/welcome_script.sh' ~/.bashrc
source ~/.bashrc
```
