pragma solidity ^0.6.6;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ComsosERC20 is ERC20 {
	uint256 MAX_UINT = 2**256 - 1;

	constructor(
		address _peggyAddress,
		string memory _name,
		string memory _symbol,
		uint8 _decimals
	) public ERC20(_name, _symbol) {
		_setupDecimals(_decimals);
		_mint(_peggyAddress, MAX_UINT);
	}
}
