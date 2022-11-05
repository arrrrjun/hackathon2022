//SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
contract lottery{
    address payable[] public players;
    uint256 public usdEntryFee;
    AggregatorV3Interface internal ethUsdPriceFeed;
    constructor(address_priceFeedAddress) public{
        usdEntryFee=50 * (10**18);
        ethUsdPriceFeed=AggregatorV3Interface(priceFeedAddress);

    } 
    function enter() public payable{
        players.push(msg.sender);

    }
    function getEntranceFee() public view returns(uint256){


    }
    function startLottery() public{}
}