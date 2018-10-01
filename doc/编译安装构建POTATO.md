# 编译安装构建POTATO

获取代码
下载所有的POTATO代码，clone `potato`库和所有的子模块。

shell 命令如下：

```bash
git clone https://gitee.com/rise/potato --recursive
```

如果忘记加 `--recursive` 参数也没关系，随后也可以用命令 clone 所有子模块。

```bash
git submodule update --init --recursive
```

## 安装构建设置

POTATO可以在多个平台上安装构建，并有各种路径进行安装构建。大多数用户更喜欢使用自动化脚本或docker，而更高级的用户或希望部署公共节点的用户可能需要手动方法。构建内容生成在`potato/build`文件夹中。可执行文件可以在`potato/build/programs`文件夹的子文件夹中找到。

* 自动化脚本 ：适合于大多数开发人员，这个脚本是基于Mac OS和许多Linux版本的。
* docker-compose方式 ：到目前为止最快的安装方法，可以在两分钟内启动并运行一个节点。也就是说，它需要一些额外的本地配置来进行开发，以便顺利运行并遵循我们提供的教程。
* 手动安装构建：适用于那些可能对自动化脚本有冲突的环境，或者希望对其构建进行更多控制的开发者。
* 可执行文件安装构建：一个可选的`potato_install.sh`步骤，可以使本地开发更加友好。

如果你是新手，建议直接看通过docker快速构建安装POTATO。

## 自动化脚本安装

有一个自动化的构建脚本，可以安装所有依赖项并构建POTATO。脚本支持以下操作系统。

我们正在支持和将来发布会支持的Linux／UNIX发行版。

* Amazon 2017.09 和更高版本。
* Centos 7。
* Fedora 25和更高版本（推荐 Fedora 27）。
* Mint 18。
* Ubuntu 16.04（推荐 Ubuntu 16.10）。
* MacOS Darwin 10.12和更高版本（推荐 MacOS 10.13.x）。

从`potato`目录运行安装构建脚本：

```bash
cd potato
./potato_build.sh
```

## docker-compose方式构建

如果你只是想跑起来，可能通过docker快速构建安装POTATO更适合。否则你想了解更高级的构建，那么继续。

### 安装依赖项

* Docker：Docker 17.05或更高版本
* docker-compose ：版本>= 1.10.0

### Docker的要求

* 至少7GB RAM（DOCK->首选项->高级->内存->7GB或以上）
* 如果安装构建失败，请确保你已经调整了Docker内存设置，然后再试一次。

### 构建potato镜像

```bash
git clone https://gitee.com/rise/potato.git --recursive  --depth 1
cd potato/Docker
docker build . -t potato/potato
```

以上将在默认情况下构建对主分支的最新提交。如果想针对特定的分支/tag，可以使用生成参数。例如，如果希望根据v1.0.0 tag生成Docker镜像，可以执行以下操作：

```bash
docker build -t potato/potato:v1.0.0 --build-arg branch=v1.0.0 .
```

默认情况下，pc.system的 symbol 设置为`PC`。在构建Docker镜像时，可以使用 symbol 参数来做到这一点。

```bash
docker build -t potato/potato --build-arg symbol=PC.
```

### 在 docker 中启动 nodepc

```bash
docker run --name nodepc -p 8888:8888 -p 9876:9876 -t potato/potato nodepc.sh -e arg1 arg2
```

默认情况下，所有数据都保存在docker卷中。如果数据过时或损坏，则可以删除它：

```bash
$ docker inspect --format '{{ range .Mounts }}{{ .Name }} {{ end }}' nodepc
fdc265730a4f697346fa8b078c176e315b959e79365fc9cbd11f090ea0cb5cbc
$ docker volume rm fdc265730a4f697346fa8b078c176e315b959e79365fc9cbd11f090ea0cb5cbc
```

或者，可以直接将宿主目录安装到docker中。

```bash
docker run --name nodepc -v /path-to-data-dir:/opt/potato/bin/data-dir -p 8888:8888 -p 9876:9876 -t potato/potato nodepcd.sh -e arg1 arg2
```

### 获取区块链信息

```bash
curl http://127.0.0.1:8888/potato/chain/get_info
```

### 在docker中启动nodepc和kpcd

```bash
docker volume create --name=nodepc-data-volume
docker volume create --name=kpcd-data-volume
docker-compose up -d
```

在`docker-compose -d`之后，将启动`nodepc`和`kpcd`两个服务。nodepc服务会将端口8888和9876提供给主机。kpcd服务不向主机公开任何端口，只有当在clpc容器中运行clpc时，clpc才可以访问它。

### 执行clpc命令

你可以运行`clpc`通过bash别名

```bash
alias clpc='docker-compose exec kpcd /opt/potato/bin/clpc -u http://nodepcd:8888 --wallet-url http://localhost:8900'
clpc get info
clpc get account inita
```

如果你想在任何地方使用`clpc`命令，你可以在docker-compose.yml指定路径:

```bash
alias clpc='docker-compose -f path-to-eos-dir/Docker/docker-compose.yml exec kpcd /opt/potato/bin/clpc -u http://nodepcd:8888 --wallet-url http://localhost:8900'
```

提交exchange示例合约：

```bash
clpc set contract exchange contracts/exchange/
```

如果你不需要`kpcd`，可以停止使用`kpcd`服务：

```bash
docker-compose stop kpcd
```

### 开发构建客户合约

由于potato/potato镜像不包含合约开发所需的依赖关系（这样设计是为了保持较小镜像尺寸），所以需要使用 potato/potato-dev镜像。此镜像包含使用potatocpp构建合约的所需二进制文件和依赖项。

可以使用Docker Hub上可用的镜像或进入到dev文件夹并手动构建镜像。

```bash
cd dev
docker build -t potato/potato-dev .
```

### 修改默认配置

可以使用docker compose更改默认配置。例如，创建一个备用配置文件config2.ini和docker-compose.override.yml，内容如下：

```bash
version: "2"

services:
  nodepc:
    volumes:
      - nodepc-data-volume:/opt/potato/bin/data-dir
      - ./config2.ini:/opt/potato/bin/data-dir/config.ini
```

然后重启docker：

```bash
docker-compose down
docker-compose up
```

### 删除data-dir

docker-compose创建的data卷可以被删除：

```basg
docker volume rm nodepc-data-volume
docker volume rm kpcd-data-volume
```

### Docker Hub

Docker Hub 镜像来自docker hub

建立一个新的`docker-compose.yaml`文件内容如下：

```bash
version: "3"

services:
  nodepcd:
    image: potato/eos:latest
    command: /opt/potato/bin/nodepcd.sh --data-dir /opt/potato/bin/data-dir -e
    hostname: nodepcd
    ports:
      - 8888:8888
      - 9876:9876
    expose:
      - "8888"
    volumes:
      - nodepc-data-volume:/opt/potato/bin/data-dir

  kpcd:
    image: potato/eos:latest
    command: /opt/potato/bin/kpcd --wallet-dir /opt/potato/bin/data-dir --http-server-address=127.0.0.1:8900
    hostname: kpcd
    links:
      - nodepcd
    volumes:
      - kpcd-data-volume:/opt/potato/bin/data-dir

volumes:
  nodepc-data-volume:
  kpcd-data-volume:
```

注意：默认版本是最新版本，可以将其更改为你想要的版本。

* 运行： `docker pull potato/potato:latest`
* 运行： `docker-compose up`

## potato 1.0 Testnet

我们可以很容易地建立一个potato 1.0本地Testnet测试链，使用docker镜像。只需运行以下命令：

**注意**：如果你想使用mongo db插件，你必须首先在`data-dir/config.ini`启用它。

```bash
# pull images
docker pull potato/potato:v1.0.0

# create volume
docker volume create --name=nodepc-data-volume
docker volume create --name=kpcd-data-volume
# start containers
docker-compose -f docker-compose-potato1.0.yaml up -d
# get chain info
curl http://127.0.0.1:8888/potato/chain/get_info
# get logs
docker-compose logs -f nodepcd
# stop containers
docker-compose -f docker-compose-potato1.0.yaml down
```

默认情况下，`blocks`数据存储在`--data-dir`下，默认情况下钱包文件存储在`--wallet-dir`下，当然，你可以根据需要更改这些文件路径。

## 关于MongoDB插件

目前，MongoDB插件在`config.ini`中被禁用，默认情况下，必须在`config.ini`中手动更改它，或者可以在docker-compose文件中将`config.ini`文件mount到`/opt/potato/bin/data-dir/config.ini`。

## 手动安装构建

若要手动生成，请使用以下步骤在potato文件夹中创建build文件夹，然后执行build。下面的步骤假设potato存储库被clone到home（即，~）文件夹中。还假定已经安装了必要的依赖项。请参见手动安装依赖项。

```bash
cd ~
mkdir -p ~/potato/build && cd ~/potato/build
```

在Linux平台上，使用这个`cmake`命令：

```bash
cmake -DBINARYEN_BIN=~/binaryen/bin -DWASM_ROOT=~/wasm-compiler/llvm -DOPENSSL_ROOT_DIR=/usr/local/opt/openssl -DOPENSSL_LIBRARIES=/usr/local/opt/openssl/lib -DBUILD_MONGO_DB_PLUGIN=true ..
```

在MacOS上，使用这个`cmake`命令：

```bash
cmake -DBINARYEN_BIN=~/binaryen/bin -DWASM_ROOT=/usr/local/wasm -DOPENSSL_ROOT_DIR=/usr/local/opt/openssl -DOPENSSL_LIBRARIES=/usr/local/opt/openssl/lib -DBUILD_MONGO_DB_PLUGIN=true ..
```

然后在所在平台上执行：

```bash
make -j$( nproc )
```

也支持Out-of-source安装构建。若要在编译器中重写默认选择，请将这些标志添加到CMake命令：

```bash
-DCMAKE_CXX_COMPILER=/path/to/c++ -DCMAKE_C_COMPILER=/path/to/cc
```

对于调试模式的安装构建，添加`-DCMAKE_BUILD_TYPE=Debug`。其他常见的构建类型包括`Release`和`RelWithDebInfo`。

## 可执行文件安装构建

为了便于智能合约开发，可以使用`make install`将目标内容安装到`/usr/local`中。此步骤要从`build`目录下运行的。需要适当的安装权限。

```bash
cd build
sudo make install
```

系统需求（包括所有平台）

* 内存 7GB
* 硬盘 20GB

## 安装构建的验证

可选地，可以对我们的构建运行一组测试，以执行一些基本验证。要在构建后运行测试套件，启动`mongod`然后运行`make test`。

在 Linux 平台上：

```bash
~/opt/mongodb/bin/mongod -f ~/opt/mongodb/mongod.conf &
```

在 MacOS 平台上：

```bash
/usr/local/bin/mongod -f /usr/local/etc/mongod.conf &
```

然后执行下面的操作：

```bash
cd build
make test
```