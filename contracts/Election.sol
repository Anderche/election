pragma solidity >=0.4.25 <0.6.0;

contract Election {
	// Model a candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	// Store candidate

	// Fetch candidate
	mapping(uint => Candidate) public candidates;

	// Store candidates count
	uint public candidatesCount;

	// Constructor
	// function Election() public {
	// 	addCandidate("Candidate 1");
	// 	addCandidate("Candidate 2");
	// }

	constructor() public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");	
	}

	function addCandidate (string memory _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}
}



// function Inbox(string initialMessage) public {
//     message = initialMessage;
// }

// NOW...

// constructor(string initialMessage) public {
//     message = initialMessage;
// }


