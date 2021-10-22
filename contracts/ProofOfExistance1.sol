pragma solidity >= 0.5.0 < 0.7.0;

contract ProofOfExistance1 {

  bytes32 proof;
  //calc and storeproof for a doc
  function notarize (string memory document) public{
    proof = proofFor(document);
  }
  //get a doc#s sha256
  function proofFor(string memory document) public pure returns(bytes32){
    return sha256(abi.encodePacked(document));
  }
}
