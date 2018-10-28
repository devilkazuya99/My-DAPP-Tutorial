pragma solidity ^0.4.24;

contract Election {
    // Candidate Model
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    // Store accounts that have voted
    mapping(address => bool) public voters;
    // Store Candidate
    // Fetch Candidate
    mapping(uint => Candidate) public candidates;
    // Store candidate count
    uint public candidatesCount;

    // votes event
    event votedEvent (
        uint indexed _candidateId
    );

    // Constructor
    constructor() public {
        addCandidate("TIGER 1");
        addCandidate("EAGLE 2");
    }

    function addCandidate (string _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public {
        // check haven't voted before
        require(!voters[msg.sender], "Account already voted.");

        // require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount, "Invalid candidate.");

        // record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote count
        candidates[_candidateId].voteCount++;

        // trigger voted event
        emit votedEvent(_candidateId);
    }
}