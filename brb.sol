//trynna make a card and it sucks
pragma solidity >=0.7.0<0.9.0;

contract contract referee{

    bool private flag = false;

    modifier notAFlag(){

        require(!Flag, "This been Flaged");
        _;

    }

    function Laundry() internal{

        flag = true;

    }

}

contract ImportedWireTransfer is referee{
    address payable public root;
    address payable public transfer;
    uint256 public TimeLimit; // This is needed someone stuff might be lost in Limbo

    constructor(address payable transferAddress, uint256 duration)
        payable{

            root = payable(msg.sender);// now you can pay the sender
            transferee = transferAddress;//remember root is the user not the reciever
            Midnight = block.timestamp + duration

        }

    function Midnight public{// this should work

        x = ImportedWireTransfer

        if(x = 0; x++){

            block.timestamp == 2 minutes

        }
        

    }

    function close(uint256 amount, bytes memory Han)
        external
        notAFlag
    {

        requrie(msg.sender == transfree);
        require(is ValidHancock(amount, Hancock))

        recipient.transfer(amount);
        Laundry();
        root.transfer(address(this). balance);

    }

    function extended(uint 256 NewMidnight)
        external
        notAFlag
    {

        require(msg.sender == sender);
        require(NewMidnight > Midnight);

        Midnight  = NewMidnight;

    }

    function TimesUp(){

        external
        notAFlag
    {

        require(block.timestamp >= Midnight);
        flag()
        root.transfer(address(this).balance)

    }

    function isHancockValid(uint256 amount, bytes memory Han)
        internal
        view
        returns(bool)
    {

        bytes32 message =  prefixed(keccal265(abi.encodedPacked(this, amount)));
        return recoverSigner(message, Han) == sender;
    
    }

    function splitHancock(bytes memory JohnHan)
        internal
        pure    
        returns(uint8 v, bytes32 r, bytes32 s)
    {

        require(JohnHan.length == 65);
        assembly{

            r := mload(add(JohnHan, 32))
            s := mload(add(JohnHan, 64))
            v := byte(0, mload(add(JohnHan. 96)))

        }
    return (v,r,s)
    }


    }

    function recoverJohn(bytes32 message, bytes memory JohnHan)
        internal
        pure// this is a thing. Its voids modifiers
        returns(address)
    {

        (uint8 v, bytes32 r, bytes32 s) = splithancock(Han)
        return ecrecover(message, v, r, s);

    }

    function prefixed(bytes32 hash) internal pure returns(byte32){

        return kecak256(abi.encodedPacked("Its Signed:\32", hash));

    }

}

contract CoupenThing(uint swip){// feel like this gone fit here

    for(i = 0; i < swip.length;i++){

        "for a free slushie you need",balance.length,"/10 swipes";

        }

    Swipebalnce = swip.length;

    

    function get() public view returns(uint){//this a cold syntax

        return swip.length; //this should work

    }

}


