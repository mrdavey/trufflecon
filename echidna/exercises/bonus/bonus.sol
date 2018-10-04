import "token.sol";

contract MintableToken is Token{

    int totalMinted;
    int totalMintable;

    function MintableToken(int _totalMintable){
        totalMintable = _totalMintable;
    }

    function mint(uint value) isOwner(){

        require(int(value) + totalMinted > totalMinted);
        totalMinted += int(value);

        balances[msg.sender] += value;
     
    }

}
