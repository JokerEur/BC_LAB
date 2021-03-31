pragma solidity >=0.4.22 <0.9.0;

contract Voting {

 struct Voter {
        uint weight; 
        bool voted; 
        address delegate;
        uint vote;
    }
 struct Proposal{
     bytes32 name;
     uint voteCount;
 }

 address public 



}