// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script{

    function run() external returns (FundMe){

        // before startCroadcast are not real transactions
        HelperConfig helperConfig = new HelperConfig();
        address priceFeed = helperConfig.getConfigByChainId(block.chainid).priceFeed;


        // after startBroadcast are real transactions
         vm.startBroadcast();
         FundMe fundMe = new FundMe(priceFeed);
         vm.stopBroadcast();
         return (fundMe);
    }
}

