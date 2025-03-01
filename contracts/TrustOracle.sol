// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract TrustOracle {
    address public owner;
    mapping(address => uint256) public trustScores;
    mapping(address => bool) public registeredUsers;

    event TrustScoreUpdated(address indexed user, uint256 score);
    event UserRegistered(address indexed user);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    modifier onlyRegistered() {
        require(registeredUsers[msg.sender], "User is not registered");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function registerUser() external {
        require(!registeredUsers[msg.sender], "User already registered");
        registeredUsers[msg.sender] = true;
        trustScores[msg.sender] = 50; // Default trust score
        emit UserRegistered(msg.sender);
    }

    function updateTrustScore(address user, uint256 newScore) external onlyOwner {
        require(registeredUsers[user], "User is not registered");
        require(newScore <= 100, "Trust score cannot exceed 100");
        trustScores[user] = newScore;
        emit TrustScoreUpdated(user, newScore);
    }

    function getTrustScore(address user) external view returns (uint256) {
        require(registeredUsers[user], "User is not registered");
        return trustScores[user];
    }
}
