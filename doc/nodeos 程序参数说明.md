# 节点程序参数说明

2018-08-01

<!-- TOC -->

- [节点程序参数说明](#节点程序参数说明)
    - [nodeos 程序参数说明](#nodeos-程序参数说明)
    - [pcoin::bnet_plugin 插件参数说明](#pcoinbnet_plugin-插件参数说明)
        - [pcoin::chain_plugin 插件参数说明](#pcoinchain_plugin-插件参数说明)
        - [pcoin::http_plugin 插件参数说明](#pcoinhttp_plugin-插件参数说明)
        - [pcoin::mongo_db_plugin 插件参数说明](#pcoinmongo_db_plugin-插件参数说明)
        - [pcoin::net_plugin 插件参数说明](#pcoinnet_plugin-插件参数说明)
        - [pcoin::producer_plugin 插件参数说明](#pcoinproducer_plugin-插件参数说明)
        - [pcoin::wallet_plugin 插件参数说明](#pcoinwallet_plugin-插件参数说明)

<!-- /TOC -->

除了打印输出参数，大部分都可以在配置文件里配置，直接由控制台传入的参数会覆盖配置文件中的参数。参数括号内的为默认值。

## nodeos 程序参数说明

|参数|说明|
|--|--|
|  -h / --help                           |打印帮助文档
|  -v / --version                        |打印版本号（GIT提交记录）
|  --print-default-config                |打印默认配置文件模板
|  -d / --data-dir arg                   |指定数据文件目录
|  --config-dir arg                      |指定config.ini配置文件所在目录
|  -c / --config arg (=config.ini)       |指定配置文件名（默认名为config.ini）
|  -l / --logconf arg (=logging.json)    |指定日志配置文件名及路径（默认名为logging.json）
|  --plugin arg                          |启用插件，可重复

## pcoin::bnet_plugin 插件参数说明

bnet_plugin 插件主要功能是同步区块

|参数|说明|
|--|--|
|  --bnet-endpoint arg (=0.0.0.0:4321)   |监听地址
|  --bnet-follow-irreversible arg (=0)   |请求其它节点的不可逆块（默认0）
|  --bnet-threads arg                    |用于处理网络消息的线程数
|  --bnet-connect arg                    |远程节点地址; 可以根据需要多个节点组成一个网络
|  --bnet-no-trx                         |请求其他节点没有挂起的事务

### pcoin::chain_plugin 插件参数说明

chain_plugin 插件主要功能是区块读写、执行合约，默认开启。

|参数|说明|
|--|--|
|  --blocks-dir arg (="blocks")          |指定区块数据文件所在目录（绝对路径或相对于应用程序data-dir）
|  --checkpoint arg                      |Pairs of [BLOCK_NUM,BLOCK_ID] that should be enforced as |checkpoints.
|  --abi-serializer-max-time-ms arg (=15000) |重置ABI序列化最大时间（默认15000ms）
|  --chain-state-db-size-mb arg (=1024)  |链状态数据库的最大大小（以MiB为单位）
|  --chain-state-db-guard-size-mb arg (=128) |当链状态数据库中剩余的可用空间低于此大小时（在MiB中），安全地|关闭节点。
|  --reversible-blocks-db-size-mb arg (=340)  |可逆块数据库的最大大小（以MiB为单位）
|  --reversible-blocks-db-guard-size-mb arg (=2) |当可逆块数据库中剩余的可用空间低于此大小时（在MiB中），安全地|关闭节点。|
|  --contracts-console                   |打印合约的输出到控制台
|  --actor-whitelist arg                 |帐户已添加到actor白名单（可重复）
|  --actor-blacklist arg                 |帐户已添加到actor黑名单（可重复）
|  --contract-whitelist arg              |合约帐户已添加到合约白名单（可重复）
|  --contract-blacklist arg              |合约帐户已添加到合约黑名单（可重复）
|  --action-blacklist arg                |action添加到action黑名单（可重复）
|  --key-blacklist arg                   |公钥添加到不应包含在权限中的密钥黑名单中（可重复）
|  --read-mode arg (=speculative)        |数据库读取模式 ("speculative" or "head").<br>在“speculative”模式中，数据库包含直到块头所做的更改以及尚未包含在区块链中的事务所做的更改。 <br>在“head”模式下，数据库包含直到当前head块的更改。

以下参数不能在配置文件中设置，必须由控制台传入执行。
|参数|说明|
|--|--|
|  --genesis-json arg                    |从文件中读取genesis state
|  --genesis-timestamp arg               |覆盖genesis state文件中的初始时间戳
|  --print-genesis-json                  |从blocks.log中提取genesis state为JSON，打印到控制台，然后退出
|  --extract-genesis-json arg            |从blocks.log中提取genesis state为JSON，写入指定文件，然后退出
|  --fix-reversible-blocks               |如果该数据库处于错误状态，则恢复可逆块数据库
|  --force-all-checks                    |不要跳过重放不可逆块时可以跳过的任何检查
|  --replay-blockchain                   |清除链状态数据库并重放所有块
|  --hard-replay-blockchain              |清除链状态数据库，从块日志中恢复尽可能多的块，然后重放这些块
|  --delete-all-blocks                   |清除链状态数据库和块日志
|  --truncate-at-block arg (=0)          |在此块编号处停止硬重放/阻止日志恢复（如果设置为非零数字）
|  --import-reversible-blocks arg        |用从指定文件导入的块替换可逆块数据库，然后退出
|  --export-reversible-blocks arg        |以可移植格式将可逆块数据库导出到指定文件然后退出

### pcoin::http_plugin 插件参数说明

http_plugin 插件主要功能是提供http/https服务，默认开启。
|参数|说明|
|--|--|
|  --http-server-address arg (=127.0.0.1:8888) |侦听传入http连接的本地IP和端口; 设置为空以禁用。
|  --https-server-address arg            |侦听传入https连接的本地IP和端口; 留空以禁用。
|  --https-certificate-chain-file arg    |采用PEM格式的带有证书链的文件名，以显示在https连接上。
|  --https-private-key-file arg          |采用PEM格式的https私钥文件。
|  --access-control-allow-origin arg     |指定每个请求返回的Access-Control-Allow-Origin。
|  --access-control-allow-headers arg    |指定每个请求上返回的Access-Control-Allow-Header。
|  --access-control-max-age arg          |指定每个请求返回的Access-Control-Max-Age。
|  --access-control-allow-credentials    |指定每个请求返回的Access-Control-Allow-Credent。是否允许发送Cookie
|  --max-body-size arg (=1048576)        |传入RPC请求允许的最大body大小（以字节为单位）
|  --verbose-http-errors                 |将错误日志附加到HTTP响应
|  --http-validate-host arg (=1)         |验证host，如果设置为false，则任何传入的“host”标头都被视为有效
|  --http-alias arg                      |此外，可以多次指定传入HTTP请求的“主机”标头的可接受值。 默认情况下包括http/https 服务器地址。

### pcoin::mongo_db_plugin 插件参数说明

mongo_db_plugin 插件主要功能是提供交易信息二次整理存储功能，方便第三方查询。
|参数|说明|
|--|--|
|  -q [ --mongodb-queue-size ] arg (=1024) |nodeos和MongoDB插件线程之间的目标队列大小。
|  --mongodb-abi-cache-size arg (=2048)  |用于序列化数据的abi缓存的最大大小。
|  --mongodb-wipe                        |需要同时使用--replay-blockchain，--hard-replay-blockchain或--delete-all-blocks来擦除mongodb。 此选项需要防止意外擦除mongodb。
|  --mongodb-block-start arg (=0)        |如果指定，那么只有abi数据被推送到mongodb，直接从指定的块开始。
|  -m [ --mongodb-uri ] arg              |MongoDB URI 连接字符串, 查看: https://docs.mongodb.com/master/reference/connection-string/ . 如果未指定，则禁用插件. 如果未在URI中指定，则使用默认数据库'POTATO'。 <br> 示例: mongodb://127.0.0.1:27017/POTATO

### pcoin::net_plugin 插件参数说明

net_plugin 插件主要提供p2p网络通信、区块同步功能，默认开启。
|参数|说明|
|--|--|
|  --p2p-listen-endpoint arg (=0.0.0.0:9876) |本地IP和端口，用于侦听传入的p2p连接。
|  --p2p-server-address arg              |外部可访问的主机：用于标识此节点的端口。 默认为p2p-listen-endpoint。
|  --p2p-peer-address arg                |要连接的p2p节点的公共节点。 <br>根据需要使用多个p2p-peer-address选项来组成网络。
|  --p2p-max-nodes-per-host arg (=1)     |来自任何单个IP地址的最大客户端节点数
|  --agent-name arg (="Pcoin Test Agent") |提供的名称用于在p2p中标识此节点。
|  --allowed-connection arg (=any)       |允许连接的节点类型。可以是“any”或“producers”或“specified”或“none”。如果'specified'，则必须至少指定一次peer-key。<br> 如果只是'producer'，则不需要peer-key。 “producers”和“specified”可以合并。
|  --peer-key arg                        |允许连接的可选公钥。 （可重复）
|  --peer-private-key arg                |[公钥,私钥]组，（可重复）
|  --max-clients arg (=25)               |接受连接的最大客户端数，使用0表示没有限制。
|  --connection-cleanup-period arg (=30) |清理死连接之前要等待的秒数
|  --network-version-match arg (=0)      |True要求与p2p版本完全匹配。
|  --sync-fetch-span arg (=100)          |同步时从任何单个节点中检索的块数
|  --max-implicit-request arg (=1500)    |在未先发送通知的情况下发送的最大事务或块消息大小
|  --use-socket-read-watermark arg (=0)  |启用实验套接字读取水印优化

### pcoin::producer_plugin 插件参数说明

producer_plugin 插件主要提供区块生产功能，默认开启。
|参数|说明|
|--|--|
|  -e [ --enable-stale-production ]      |启用区块生产，即使链是不是最新的。
|  -x [ --pause-on-startup ]             |在生产暂停的状态下启动此节点。
|  --max-transaction-time arg (=30)      |允许推送事务的代码执行的最长时间
|  --max-irreversible-block-age arg (=-1) |限制DPOS不可逆块的最大时间（以秒为单位），此节点将生成块（使用负值表示无限制）
|  -p [ --producer-name ] arg            |该节点的生产者的ID（例如potatobpa）
|  --signature-provider arg <br>(=PC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV<br>=KEY:5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3)| 签名密钥 \<public-key\>=KEY:\<private-key>  public-key有效的potato链公钥 private-key 对应的potato链私钥
|  --keosd-provider-timeout arg (=5)     |限制允许将块发送到keosd提供程序进行签名的最长时间（以毫秒为单位）
|  --greylist-account arg                |无法访问扩展CPU / NET虚拟资源的帐户
|  --produce-time-offset-us arg (=0)     |非最后一个块的偏移产生时间以微秒为单位。 负数导致块越快出现，正数导致块稍后出去
|  --last-block-time-offset-us arg (=0)  |最后一个块的偏移量以微秒为单位产生时间。 负数导致块越快出现，正数导致块稍后出去

### pcoin::wallet_plugin 插件参数说明

wallet_plugin 插件主要私钥生成和保存功能。
|参数|说明|
|--|--|
|--wallet-dir arg (=".")               |钱包文件的路径（绝对路径或相对于应用程序数据目录data-dir）
|--unlock-timeout arg (=900)           |解锁钱包超时（以秒为单位）（默认为900（15分钟））。 钱包将在指定的不活动秒数后自动锁定。
|--yubihsm-authkey key_num             |启用YubiHSM支持
