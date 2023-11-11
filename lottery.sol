// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract LotteryGame {
    mapping(address => bool) public hasJoined;
    uint public totalParticipants;

    function joinLottery() public {
        require(!hasJoined[msg.sender], "You have already joined the lottery");
        hasJoined[msg.sender] = true;
        totalParticipants++;
    }

    function checkJoinStatus(address player) public view returns (string memory) {
        assert(hasJoined[player]);
        return "You have joined the lottery";
    }

    function closeLottery() public view {
        if (totalParticipants < 5) {
            revert("Not enough participants to close the lottery");
        }
        // Close lottery process
    }
}
