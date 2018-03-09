# ForkSplitter

The power of Ethereum Blockchain comes from its ability to host and "autoexecute" smart contracts. Smart contracts are pieces of code that acts as a "judge as a service". Smart contracts are trustless by nature. Once deployed onto the Ethereum blockchain, they live there in perpetuity (unless coded to self-destruct), without a governing body maintaining control over them.  No party is required to trust another party to complete a transaction. Instead, every party interacts with the same smart contract that contains an agreed upon set of rules in the form of code, that will run without the possibility of any third party manipulation.

## Prerequisites

In this tutorial we’re going to learn and install some software to :

1. Ethereum Nodes
1.1. Using Geth
1.2. Using Mist
1.3. MetaMask Plugin
2. Deploying a Smart Contract
2.1. Solidity Programming Language
2.2. Geth (Go Ethereum) Command Line Interface
2.3. Deploying a contract in Mist 
2.4. MetaMask and Remix Web Browser IDE

## Ethereum Nodes

In the simplest form, an Ethereum node is any device that is running the Ethereum protocol (blockchain). When we connect to the Ethereum protocol we are on the Ethereum blockchain network and are running a node. By running an Ethereum node we can connect to other nodes in the network, have direct access to the blockchain, and even do things like mine blocks, send transactions, and deploy smart contracts.

### 1. Setting up a Ethereum Node

#### 1.1 Using Geth

Go-Ethereum (or *geth*) is a very popular open source project for becoming a Ethereum node fast and easily. It's also multiplatform and works on Windows, MacOS and Unix-based systems.

[You can download geth here](https://geth.ethereum.org/downloads/). Just grab the latest stable release. 

Now just follow the usual install flow of your operational system. The geth installation wizard will prompt if you want to install only geth or its development tools. It's fine to install only geth for this smart contract deployment porpouses.

Open up a command prompt and navigate to the geth install directory. Fire this command:

```sh
geth --fast
```

Geth will start to synchronize with the blockchain, downloading some nodes. It usualy take some time and you can leave this open and running while you progess on this tutorial.

To stop geth, just press CTRL+C and wait a few seconds for it to do a safe shutdown (command+C on MacOS).

#### 1.2 Using Mist

Another very easy way to set up an Ethereum node is using Mist. It's an Ethereum browser and a wallet, built as an electron based desktop application. It has geth bundled. There are releseases for MacOS, Windows and Unix-based systems. You simply install Mist, create a wallet and deposit ether, and you are good to go with your contract deployment.

[Click here to download Mist Browser](https://github.com/ethereum/mist/releases).

Once Mist is installed, just run it and wait for the node to full synchronize (it can take hours, just as command line geth).

#### 1.3 MetaMask Plugin

MetaMask is both an Ethereum browser and a wallet. Through MetaMask you can interact with Dapps and smart contracts on the web without having to download the blockchain or install any software. You simply add MetaMask to chrome as an extensions, create a wallet, and deposit ether. The downside here is that you are not running a full ethereum node on your computer, but using third party solutions to get connected to the blockchain.

[Get MetaMask from the Chrome Store here](https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=en).

After the installation, just go to the extension icon on Chrome, create a wallet and you are good to go.

### 2. Deploying a Smart Contract

You have to pay gas to submit any transaction to the Ethereum blockchain, so you will need ether. Gas is used to prevent infinity loops on the Ethereum Virtual Machine (EVM), because this would stall a node with a never ending execution. Every opcode on the EVM spends a small amount of the gas provided by the submitter. The gas price is set by the user on the transaction submission, with 0.1 wei/gas being the minimum gas price. Deploying a complex smart contract can costs millions of gas, but a simple ether transference costs only thousands gas.

The ForkSplitter smart contract used on this tutorial is included on the repository under the filename *ForkSplitter.sol*.

#### 2.2. Geth (Go Ethereum) Command Line Interface
#### 2.3. Deploying a contract in Mist 
#### 2.4. MetaMask and Remix Web Browser IDE