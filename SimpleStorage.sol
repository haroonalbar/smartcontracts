//SPDX-Lisence-Identifier :MIT
pragma solidity ^0.6.0;

contract SimpleStirage{
   struct People {
   uint256 favouriteNumber;
   bool favouriteBool;
   }
   
   People[] public people;
   mapping (string=>uint256) stringToNumber;
   
   function store(uint256 number) public {
   
   }
}

