// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


/*
██╗███╗   ██╗███████╗██╗      ██████╗ ██╗    ██╗
██║████╗  ██║██╔════╝██║     ██╔═══██╗██║    ██║
██║██╔██╗ ██║█████╗  ██║     ██║   ██║██║ █╗ ██║
██║██║╚██╗██║██╔══╝  ██║     ██║   ██║██║███╗██║
██║██║ ╚████║██║     ███████╗╚██████╔╝╚███╔███╔╝
╚═╝╚═╝  ╚═══╝╚═╝     ╚══════╝ ╚═════╝  ╚══╝╚══╝ 

@creator:     Inflow Token
@security:    info@inflowtoken.io
@website:     https://www.inflowtoken.io/

*/


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract InflowToken is ERC20,Ownable {
    constructor(
        string memory name,
        string memory symbol   
    ) ERC20(name, symbol) {
        
    }

     function mintToken(uint256 amount) public onlyOwner{
        _mint(msg.sender, amount * 10 ** 18);
    }
}