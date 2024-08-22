//This is the first of many Also basiic from the books but 
//pay attention its memory address and authication not matter how simple
// This supposed to do transfers... Lets if the solidity documentation worth something
//*************COMPLIE AT YOUR OWN RISK************************
pragma solidity ^0.8.26;

contract HelloWrldStor{
    unit storedData

    string public welcome = "Hello World"
    function set(uint address) public{

        storedData = address //an unsigned int so all postives
    
    }

    function get() public view returns (uint){

        return storedData; //lines 5-17 is a skel to return stored data
    
    }

    struct Coin{

        address public minter; //public makes variable... Yes that verbatim
        mapping(address => uint) public balances;//data pipeline to other address

        event sent(address from, address to, uint amount);//These event need user input along wit data
        //constructor only runs when making a new contract or after a transaction
        constructor(){

            minter = msg.sender;

        }

        //ok so this is like a limit check 
        //only called by contract creator
        fuction mint(address reciever, uint amount) public{

            require(msg.sender == minter);
            balance[receiver] += amount;

        }

        error InsufficientBalance(uint requested, uint available);


        function send(address reciever, uint amount) public{

            require(amount <= balance[msg.sender], InsufficiientBalance(amount, balances[msg.sender]));
            balances[msg.sender] -= amount;
            balances[reciever] += amount;
            emit sent(msg.sender, reciever, amount);

        }

    }

}
