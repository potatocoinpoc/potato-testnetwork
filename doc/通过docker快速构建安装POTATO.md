# 通过docker快速构建安装POTATO

## 先决条件

Docker: Docker管理服务。Docker旨在通过使开发人员在容器内很方便的创建完全配置的系统环境来简化应用程序部署。系统环境包括在配置好的操作系统中运行各种目标应用程序，这些目标应用程序提供你的应用程序需要的所有运行时支持。开发人员在容器内创建所需的系统配置，然后在打包容器进行分发。

## 1.获取镜像

POTATO Dev docker镜像是为本地开发而设计的POTATO软件的编译版本。

从存储库中提取镜像：

```bash
docker pull potato/potato-dev
```

开启POTATO节点

```bash
docker run --rm --name potato -d -p 8888:8888 -p 9876:9876 -v /tmp/work:/work -v /tmp/potato/data:/mnt/dev/data -v /tmp/potato/config:/mnt/dev/config potato/potato-dev  /bin/bash -c "nodepc -e -p potato --plugin potato::wallet_api_plugin --plugin potato::wallet_plugin --plugin potato::producer_plugin --plugin potato::history_plugin --plugin potato::chain_api_plugin --plugin potato::history_api_plugin --plugin potato::http_plugin -d /mnt/dev/data --config-dir /mnt/dev/config --http-server-address=0.0.0.0:8888 --access-control-allow-origin=* --contracts-console --http-validate-host=false"
```

检查它的工作情况：

```bash
docker logs --tail 10 potato
```

输出应该类似这样：

```bash
1929001ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 0000366974ce4e2a... #13929 @ 2018-05-23T16:32:09.000 signed by potato [trxs: 0, lib: 13928, confirmed: 0]
1929502ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 0000366aea085023... #13930 @ 2018-05-23T16:32:09.500 signed by potato [trxs: 0, lib: 13929, confirmed: 0]
1930002ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 0000366b7f074fdd... #13931 @ 2018-05-23T16:32:10.000 signed by potato [trxs: 0, lib: 13930, confirmed: 0]
1930501ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 0000366cd8222adb... #13932 @ 2018-05-23T16:32:10.500 signed by potato [trxs: 0, lib: 13931, confirmed: 0]
1931002ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 0000366d5c1ec38d... #13933 @ 2018-05-23T16:32:11.000 signed by potato [trxs: 0, lib: 13932, confirmed: 0]
1931501ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 0000366e45c1f235... #13934 @ 2018-05-23T16:32:11.500 signed by potato [trxs: 0, lib: 13933, confirmed: 0]
1932001ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 0000366f98adb324... #13935 @ 2018-05-23T16:32:12.000 signed by potato [trxs: 0, lib: 13934, confirmed: 0]
1932501ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 00003670a0f01daa... #13936 @ 2018-05-23T16:32:12.500 signed by potato [trxs: 0, lib: 13935, confirmed: 0]
1933001ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 00003671e8b36e1e... #13937 @ 2018-05-23T16:32:13.000 signed by potato [trxs: 0, lib: 13936, confirmed: 0]
1933501ms thread-0   producer_plugin.cpp:585       block_production_loo ] Produced block 0000367257fe1623... #13938 @ 2018-05-23T16:32:13.500 signed by potato [trxs: 0, lib: 13937, confirmed: 0]
```

恭喜！你有一个非常简单的单节点区块链运行在你的docker中！

也可以通过浏览器中的这个地址来检查RPC接口是否工作：

```bash
http://localhost:8888/v1/chain/get_info
```

你应该看到类似的信息：

```json
{
    "server_version": "0961a560",
    "chain_id": "cf057bbfb72640471fd910bcb67639c22df9f92470936cddc1ade0e2f2e7dc4f",
    "head_block_num": 13780,
    "last_irreversible_block_num": 13779,
    "last_irreversible_block_id": "000035d36e1ca29ba378081c574ab3b5ab4214ba29754dd42b512690a9f03e80",
    "head_block_id": "000035d4165c9225d7a04822d142fbcb15f997a6f2571dc7bae8437dea782205",
    "head_block_time": "2018-05-23T16:30:54",
    "head_block_producer": "potato",
    "virtual_block_cpu_limit": 100000000,
    "virtual_block_net_limit": 1048576000,
    "block_cpu_limit": 99900,
    "block_net_limit": 1048576
}
```

## 2.Clpc别名

`clpc`是一个命令行接口，负责与区块链交互并管理钱包。

为了方便起见，我们将创建一个bash别名，用于运行在容器中的`clpc`。在终端，运行：

```bash
alias clpc='docker exec -it potato /opt/potato/bin/clpc -u http://0.0.0.0:8888 --wallet-url http://0.0.0.0:8888'
```

## 3.确认是否安装成功

现在试着在你的终端中运行`clpc --help`。你应该看到一个输出：

```bash
Command Line Interface to POTATO Client
Usage: /opt/potato/bin/clpc [OPTIONS] SUBCOMMAND

Options:
  -h,--help                   Print this help message and exit
  -u,--url TEXT=http://localhost:8888/
                              the http/https URL where nodepc is running
  --wallet-url TEXT=http://localhost:8900/
                              the http/https URL where keosd is running
  -r,--header                 pass specific HTTP header; repeat this option to pass multiple headers
  -n,--no-verify              don't verify peer certificate when using HTTPS
  -v,--verbose                output verbose actions on error

Subcommands:
  version                     Retrieve version information
  create                      Create various items, on and off the blockchain
  get                         Retrieve various items and information from the blockchain
  set                         Set or update blockchain state
  transfer                    Transfer EOS from account to account
  net                         Interact with local p2p network connections
  wallet                      Interact with local wallet
  sign                        Sign a transaction
  push                        Push arbitrary transactions to the blockchain
  multisig                    Multisig contract commands
  system                      Send potato.system contract action to the blockchain.
```

令人惊叹的！我们跑起来了。

## 停止POTATO容器

当需要停止时，请使用：

```bash
bash docker stop potato
```