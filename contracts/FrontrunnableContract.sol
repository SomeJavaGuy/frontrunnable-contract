// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.10;

contract FrontrunnableContract {

    event Success();
    event Fail();

    bytes32 public secretHash;

    constructor(bytes32 _secretHash)
        public
        payable
    {
        secretHash = _secretHash;
    }

    function take(string calldata _secret)
        external
    {
        if (keccak256(abi.encodePacked(_secret)) == secretHash) {
            uint256 _contractBalance = address(this).balance;

            msg.sender.transfer(_contractBalance);

            emit Success();
        } else {
            Fail();
        }
    }
}