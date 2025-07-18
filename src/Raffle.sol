// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

/*
* @Title A ruffle smart contract that takes in users for a bet and picks a random winner
* @dev Implements chainLink VRV v2.5
* @author Mavsdavis
* @notice cc: Title
 **/
contract Raffle{
    /** Errors */
    error Raffle_RevertValueIsLowerThanEntranceFee();
    /* States */
    uint256 immutable private i_entranceFee;
    address[] public listOfUsers;
    /* Events */
    event Ruffle_addedNewUser(address indexed user);
    constructor(uint256 entranceFee){
        i_entranceFee = entranceFee; //ethers
    }
    function pickWinner()view public returns (address){
        
    }
    function acceptsUserToEnterRaffle()payable public {
       if( msg.value <= i_entranceFee){
            revert Raffle_RevertValueIsLowerThanEntranceFee();
       }
        listOfUsers.push(msg.sender);
        emit Ruffle_addedNewUser(msg.sender);
        
    }
    // getters
    function getEntranceFee()view public returns  (uint256){
        return i_entranceFee;
    }
}