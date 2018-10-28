pragma solidity ^0.4.24;

contract Election {
    // Candidate Model
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    // Store Candidate
    // Fetch Candidate
    mapping(uint => Candidate) public candidates;
    // Store candidate count
    uint public candidatesCount;

    // Constructor
    constructor() public {
        addCandidate("TIGER 1");
        addCandidate("EAGLE 2");
    }

    function addCandidate (string _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

}