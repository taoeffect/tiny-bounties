# ForkSplitter

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

The power of Ethereum Blockchain comes from its ability to host and "autoexecute" smart contracts. Smart contracts are pieces of code that acts as a "judge as a service". Smart contracts are trustless by nature. Once deployed onto the Ethereum blockchain, they live there in perpetuity (unless coded to self-destruct), without a governing body maintaining control over them.  No party is required to trust another party to complete a transaction. Instead, every party interacts with the same smart contract that contains an agreed upon set of rules in the form of code, that will run without the possibility of any third party manipulation.

## Prerequisites

In this tutorial we’re going to learn and install some software to :

- Ethereum Nodes
- Building A Private Blockchain Network
- MetaMask Browser Plug In
- Mist Browser
- Ethereum Wallet
- Web3 Ethereum JavaScript API
- Remix Web Browser IDE
- Geth (Go Ethereum) Command Line Interface
- Solidity Programming Language

## Ethereum Nodes

In the simplest form, an Ethereum node is any device that is running the Ethereum protocol (blockchain). When we connect to the Ethereum protocol we are on the Ethereum blockchain network and are running a node. By running an Ethereum node we can connect to other nodes in the network, have direct access to the blockchain, and even do things like mine blocks, send transactions, and deploy smart contracts.

### 1. Setting up a Ethereum Node

Go-Ethereum (or *geth*) is a very popular open source project for becoming a Ethereum node fast and easily. It's also multiplatform and works on Windows, MacOS and Unix-based systems.

[You can download geth here](https://geth.ethereum.org/downloads/). Just grab the latest stable release. 

Now just follow the usual install flow of your operational system. The geth installation wizard will prompt if you want to install only geth or its development tools. It's fine to install only geth for this smart contract deployment porpouses.

Open up a command prompt and navigate to the geth install directory. Fire this command:

```sh
geth --fast
```

Geth will start to synchronize with the blockchain, downloading some nodes. It usualy take some time and you can leave this open and running while you progess on this tutorial.

To stop geth, just press CTRL+C and wait a few seconds for it to do a safe shutdown (command+C on MacOS).

