//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; 

import {Script} from "forge-std/Script.sol";  // libreria in lid di Foundry
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {

    function run() external returns (SimpleStorage){
        vm.startBroadcast();
        // tutto quello che voglio deployare deve essere tra start e stop broadcast
        new SimpleStorage();
        //
        vm.stopBroadcast();
    }

}