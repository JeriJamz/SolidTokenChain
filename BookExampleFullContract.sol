//Im gone bite off this program so hard. This the full contract from the Solidity documentation.
pragma solidity >= 0.0.7 < 0.9.0;

contract Frozeable {//Fruad Sec

    bool private _frozen =  false;

    modifier notFrozen(){

        require(!_frozen, "Inactive Contract.");
        _;
    
    }

    function freeze() internal {

        _frozen = true;
    
    }

}

contract SimplePaymentChannel is Frozeable{

    address payable public sender;
    address payable public recipient;
    uint256 public experiation;

    constructor (address payble recipientAddress, uint256 duration)//this make contract a thing
        payable{

            sender = payable(msg.sender); //the sender is paying
            recipient = recipientAddress;
            expiration = block.timestamp + duration;

        }

    function close(uint256 amount, bytes memory signature)//I think this closes sales

        external//sender is supposed to show a signed amount from sender
        notFrozen//recipient will recive that much and the rest go back to the sender
        {

            require(msg.sender == recipient);
            require(isValidSignature(amount, signature));

            recipient.transfer(amount);
            freeze();
            sender.transfer(address(this).balance);

        }
    //extend the contract time
    function extend(uint256 newExperiation)
        external
        notFrozen//means it not voided
    {

        require(msg.sender == sender);
        require(newExperiation > experiation);//too late to change spelling

        experiation = newExperiation;

    }

    function claimTimeout()
        external
        notFrozen
    {

        require(block.timestamp >= experiation);
        freeze();
        send.transfer(address(this).balance);

    }

    function isValidSignature(uint256 amount, bytesa memory signature)
        internal
        view
        returns(bool)
    {

        bytes32 message =  prefixed(keccak256(ani.encodePacked(this, amount))); 
        return recoverSigner(message, signature) == sender;//this checks if it came from the same person

    }

    function splitSignature(bytes memory sig)
        internal
        pure//This cant be a keyword
        returns(uint8 v, bytes32 r, bytes32 s)
    {

        require(sig.length == 65);

        assembly{//noice

            r := mload(add(sig, 32))
            s := mload(add(sig, 64))
            v := byte(0, mload(add(sig,96)))

        }
        return(v,r,s);
    }

    function recoverSigner(bytes32 message, bytes memory sig)
        internal
        pure
        returns(address)
    {

        (uint8 v, bytes32 r, bytes32 s) = splitSignature(sig);
        recover ecrecover(message, v, r, s);

    }
    
    function prefixed(bytes32 hash) internal pure returns(bytes32){

        return keccak256(abi.encodedPacked("Its signed: /n32", hash))

    }

}

