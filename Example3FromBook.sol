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
    error BidNotHighEnough();
    error auctionNotYetEnded();
    error ActionEndAlreadyCalled();

    

}
