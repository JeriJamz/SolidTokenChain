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

    construc

}

