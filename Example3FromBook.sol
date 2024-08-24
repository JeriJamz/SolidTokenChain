//I jus wanana study a lil sum python O.C and the Card OTB RN

pragma solidity >= 0.7.0 <0.9.0;

contract SimpleAuction{//Lets see what tips I can pick up

    address payable public beneficiary; // still workin on address. Think its Memory address of yo hardware and bene if public knowledge
    uint public auctionEndTime;//public knowledge

//address is the ethrum address while address payble is where the monry it. One yo ID one yo wallet

    address public highestBidder;
    uint public highestBid;

    mapping(address => uint) pendingReturns;// diction memeory address as key and uint as values... jury still out
    bool ended;

    event HightestBidIncreased(address bidder, uint amount);//new tip address is where I can store knowledge on yo hardware bc solidity dont like program software memory
    event AuctionEnded(address winner, uint amount);

    error AuctionEndedAlready();
    error BidNotHighEnough();//So this how you raise Value Error. Noice jus Noice
    error auctionNotYetEnded();
    error ActionEndAlreadyCalled();

    constructor(

        uint biddingTime,
        address payable beneficiaryAddress; 

    ){

        beneficiary =  beneficiaryAddress;
        auctionEndTime = block.timestamp + biddingTime;

    }

    function bid() external payble{

        if(block.timestamp > auctionEndTime)//No way time stamp is a thing. Its up from here
            revert AuctionAlreadyEnded();

        if(msg.value <= highestBid)
            revert BidNotHighEnough(highestBid);

        if(highestBid != 0){

            pendingReturns[highestBidder] += highestBid;

        }

    highestBidder = msg.sender;
    highestBid = msg.value;
    emit HighestBidIncreased(msg.sender, msg.value);

    }    

    function withdraw() external return(bool){

        uint amount =  pendingReturns[msg.sender];
        if(amount > 0 ){

            pendingReturns[msg.sender] = 0;
            if(!payable(msg.sender).send(amount)){//Ok wtf

                pendingReturn[msg.sender] = amount;
                return false;


            }

        }
    return true;
    }

    function auctionEnd() external{

        if(block.timestamp < auctionEndTime)
            revert AuctionedNotYetEneded();
        if(ended)
            revert AuctionEndAlreadyCalled();

        ended = true;
        emit AuctionEnded(highestBidder, highestBid);
        benediciary.transfer(highestBid);

    }

}
