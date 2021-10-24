//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BBTC is ERC20, Ownable {

    constructor() ERC20("BBVA Bitcoin","BBTC"){}
    

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }
    
    function burn(address account, uint256 amount) public virtual onlyOwner {
        _burn(account, amount);
    }    
    
    function decimals() public view virtual override returns (uint8) {
        return 5;
    }
}