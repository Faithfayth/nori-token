//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/NoriToken.sol";

contract DeployNoriToken is Script {
    function run() external {
        vm.startBroadcast();
        new NoriToken(
            "Nori Token",
            "NTK",
            1_000_000
        );
        vm.stopBroadcast();
    }
}
