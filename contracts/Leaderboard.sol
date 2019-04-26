pragma solidity 0.5.0;
contract Leaderboard {
    mapping (address => uint256) private _highscores;
    
    function setHighscore(uint256 value) public returns (bool) {
        _highscores[msg.sender] = value;
        return true;
    }
    
    function getHighscore() public view returns (uint256) {
        return _highscores[msg.sender];
    }
}    