pragma solidity ^0.4.18;

// This Smart Contract is a stand alone verification of the current Ethereum blockchain fork,
// to ensure it will transfer only coins that are valid on that fork.
// It can be used on every hard fork of the Ethereum blockchain, without needs of
// an oraclized contract beeing called to ensure the coin transference.

// On deployment, you have to enter two parameters: a block number less than 256 blocks old
// than the current block, and its block hash. You can pick one at http://etherscan.io/block

contract ForkSplitter {
  // Boolean that express publically if we are on the right fork.
  // It is set at contract creation time
  bool public currentFork;

  // Smart Contract instatiatior function
  //
  // @param recentBlockNumber number of a block on the target fork (must be 256 blocks old or newer)
  //		*Please refer to EVM's block.blockhash() limitations on 
  //		http://solidity.readthedocs.io/en/develop/units-and-global-variables.html#block-and-transaction-properties
  // @param recentBlockHash the hash of the block choosen as reference on the fork
	function ForkSplitter (uint recentBlockNumber, bytes32 recentBlockHash) public payable {
	    require(msg.value == 0); // to prevent sending coins on the contract creation
	    
	    currentFork = (block.number < 256 || recentBlockNumber > block.number - 256) // is the block newer than 256 blocks old?
	                  && (recentBlockNumber < block.number) // is the most recent block higher than the reference block?
	                  && (block.blockhash(recentBlockNumber) == recentBlockHash); // does the blockhash provided matches the block number?
  	}
  
  	// util modifier function to improve readability
    modifier condition(bool _condition) {
        require(_condition);
        _;
    }

    // Signaling if a transfer is made
	event TransferenceConfirmed();

  // This function transfers the coin between addresses. It checks if it is on the right fork.
  // The function doesen't accept 0 coins transferences. 
  //
  // @param recipient destination address to send coins to
	function send (address recipient) public condition(msg.value > 0) payable {
		assert(currentFork); // is it the right fork?
    	TransferenceConfirmed(); // just a event emmiter
    	recipient.transfer(msg.value); // transfering the coins
	}
}