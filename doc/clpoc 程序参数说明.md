# cleos 程序参数说明

2018-08-01

Options:
  -h,--help                   Print this help message and exit
  -u,--url TEXT=http://localhost:8888/
                              the http/https URL where nodeos is running
  --wallet-url TEXT=http://localhost:8900/
                              the http/https URL where keosd is running
  -r,--header                 pass specific HTTP header; repeat this option to pass multiple headers
  -n,--no-verify              don't verify peer certificate when using HTTPS
  -v,--verbose                output verbose actions on error
  --print-request             print HTTP request to STDERR
  --print-response            print HTTP response to STDERR

Subcommands:
  version                     Retrieve version information
    client                      Retrieve version information of the client
  create                      Create various items, on and off the blockchain
    key                         Create a new keypair and print the public and private keys
    account                     Create an account, buy ram, stake for bandwidth for the account
  get                         Retrieve various items and information from the blockchain
    info                        Get current blockchain information
    block                       Retrieve a full block from the blockchain
    account                     Retrieve an account from the blockchain
    code                        Retrieve the code and ABI for an account
    abi                         Retrieve the ABI for an account
    table                       Retrieve the contents of a database table
    currency                    Retrieve information related to standard currencies
    accounts                    Retrieve accounts associated with a public key
    servants                    Retrieve accounts which are servants of a given account
    transaction                 Retrieve a transaction from the blockchain
    actions                     Retrieve all actions with specific account name referenced in authorization or receiver

  set                         Set or update blockchain state
    code                        Create or update the code on an account
    abi                         Create or update the abi on an account
    contract                    Create or update the contract on an account
    account                     set or update blockchain account state
    action                      set or update blockchain action state

  transfer                    Transfer POTATO from account to account
  net                         Interact with local p2p network connections
    connect                     start a new connection to a peer
    disconnect                  close an existing connection
    status                      status of existing connection
    peers                       status of all existing peers

  wallet                      Interact with local wallet
    create                      Create a new wallet locally
    open                        Open an existing wallet
    lock                        Lock wallet
    lock_all                    Lock all unlocked wallets
    unlock                      Unlock wallet
    import                      Import private key into wallet
    remove_key                  Remove key from wallet
    create_key                  Create private key within wallet
    list                        List opened wallets, * = unlocked
    keys                        List of public keys from all unlocked wallets.
    private_keys                List of private keys from an unlocked wallet in wif or PVT_R1 format.
    stop                        Stop keosd (doesn't work with nodeos).

  sign                        Sign a transaction
  push                        Push arbitrary transactions to the blockchain
  multisig                    Multisig contract commands
    propose                     Propose transaction
    review                      Review transaction
    approve                     Approve proposed transaction
    unapprove                   Unapprove proposed transaction
    cancel                      Cancel proposed transaction
    exec                        Execute proposed transaction
  system                      Send pcoin.system contract action to the blockchain.
    newaccount                  Create an account, buy ram, stake for bandwidth for the account
    regproducer                 Register a new worker
    unregprod                   Unregister an existing worker
    voteproducer                Vote for a worker
    listworkers                 List workers
    delegatebw                  Delegate bandwidth
    undelegatebw                Undelegate bandwidth
    listbw                      List delegated bandwidth
    buyram                      Buy RAM
    sellram                     Sell RAM
    claimwards                  Claim worker rewards
    regproxy                    Register an account as a proxy (for voting)
    unregproxy                  Unregister an account as a proxy (for voting)
    canceldelay                 Cancel a delayed transaction


