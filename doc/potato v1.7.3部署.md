# Potato V1.7.3 版本部署

## 一. nodepc 编译

### 1. 下载代码

```bash
git clone git@gitlab.com:potato.coin/potato.git --recursive
#如果没有添加后面的参数，需要使用下面的命令更新子模块
cd potato
git submodule update --init --recursive
```

### 2. 编译

```bash
cd potato
#指定potato系统账号的公钥
export LOCAL_CMAKE_FLAGS='-DPOTATO_ROOT_KEY=**** -DCORE_SYMBOL_NAME=***'

sudo ./script/potato_build.sh
```

**运行后会提示是否更新系统仓库，以安装所需开发包，第一次运行时请选择"是"，需以管理员权限执行**

* `POTATO_ROOT_KEY` 系统账号公钥,默认`POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV`
* `CORE_SYMBOL_NAME` 系统货币符号，默认`POC`，长度1-7。
* 如果编译时提示找不到Boost库，执行`export BOOST_ROOT=~/opt/boost`

### 3.打包和安装

编译完成后，请使用下面的命令进行打包，完成后，会在当前目录生成相应的安装包文件。
**只能打包当前系统的安装包，需以管理员权限执行**

```bash
cd build/packages
sudo bash ./generate_package.sh [brew|deb|rpm]
ls

#ubuntu
sudo dpkg -i potato-v1.7.3.deb

#redhat
sudo yum install potato-1.7.3-1.x86_64.rpm
#或者
sudo rpm -ivh potato-1.7.3.x86_64.rpm
```

参数说明：

* `brew` mac系统
* `deb` ubuntu系系统
* `rpm` redhat系系统

## 二. 启动节点与编译部署合约

节点的启动和部署合约的方式与之前一样，请参阅[`土豆链节点快速配置手册`]("./土豆链节点快速配置手册.md")、[`土豆链节点配置手册`]("./土豆链节点配置手册.md")。
