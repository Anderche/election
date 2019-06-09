pragma solidity >=0.4.25 <0.6.0;

contract Election {
	// Model a candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	// Store candidate

	// Fetch accounts that have voted
	mapping(address => bool) public voters;

	// Fetch candidate
	mapping(uint => Candidate) public candidates;

	// Store candidates count
	uint public candidatesCount;

	constructor() public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");	
	}

	function addCandidate (string memory _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}

	function vote (uint _candidateId) public {
		// require that they haven't voted before
		require(!voters[msg.sender]);

		// require a valid candidate
		require(_candidateId > 0 && _candidateId <= candidatesCount);

		// record that voter has voted, by reading account out the mapping declared above
		voters[msg.sender] = true;

		// update candidate vote Count
		candidates[_candidateId].voteCount ++;
	}
}
