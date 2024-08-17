//This is the first of many
prgma solidity >= 0.4.16 < 0.0.9;

contract HelloWrldStor{
    unit storedData

    string public welcome = "Hello World"
    function set(uint x) public{

        storedData = x //an unsigned int so all postives
    
    }

    function get() public view returns (uint){

        return storedData; //lines 5-17 is a skel to return stored data
    
    }

}
