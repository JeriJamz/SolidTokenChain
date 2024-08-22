pragma solidity >=0.7.0 <0.9.0;//I like this header tag
contract Ballot{

    //this gone raise taxes
    struct Voter{

        unit weight;//idk
        bool voted;
        address delegates;
        unit vote;
    
    }
    struct proposal{

        bytes32 name;
        unit voteCount;
    
    }

    address public chairperson;

    mapping(address => Voter) public voters;//awe yea I can program this

    Proposal[] public proposals;

    contructor(byte32[] memory propoaslNames){//this creates a class in a class... python understands

        chairperson = msg.sender;
        voters[chairperson.weight] = 1;

        for(uint i = 0; i<proposalNames.length; i++){//thats hot

            proposal.push(Proposal({

                name: proposal[i]//ouuuuu
                voteCount: 0
            
            }));
        
        }
    
    }

    function giveRightToVote(address voter) external{

        require(

            msg.sender == chairperson,
            "Theres No Rights here"
        
        );

    require(

        !voters[voter].voted,//bravo
        "Voter Fruad"
    );

    require(voters[voter].weight == 0);
    voters[voter].weight == 1;
    function delegates(address to)external{

        Voter storage sender = voters[msg.sender];
        require(sender.weight != 0, "You lost you rights")
        require(!sender.voted, "FRUAD")

        require(to != msg.sender, "Where The Election Machine?")

        while(voters[to].delegates != address(0)){

            to =  voters[to].delegates;
            require(to != msg.sender, "Were in the Matrix there's a Loop agmonst us..")
        
        }
        require(delegate_.weight >= 1);

        sender.voted =  true
        sender.delegate = to

        if(selegate_.voted){

        //My B is this how to make a smart contract?
        
        }
    }
    
    }
    
}
