// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

//making a contract to storing values of favorite numbers
contract storage1{

    //if public is used it will show it in the deploy

    uint256 favoriteNumber;
    bool favoriteBool;

    //making a structure

    struct people{
        string name;
        uint256 favoriteNumber;
    }

    // making an array of structure people    

    people[] public person;

    //for finding/mapping a persons data

    mapping (string => uint256)  public nametoFavoriteNumber;

    // making a function to add values in the array people
    // here MEMORY is used for the name to be saved only while execution
    // STORAGE can be used to store the data even after the exicution of the function
    
    function addPerson(string memory _name,uint256 _favoriteNumber) public{

        //Push is used to add the data 
       person.push(people(_name, _favoriteNumber));

       //mapping name to number
       nametoFavoriteNumber[_name] = _favoriteNumber;
    }

    //function to store the number
    function  store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //to retrive data // view does not need gas
    function retrive() public view returns(uint256) {
        return favoriteNumber;
    }

}