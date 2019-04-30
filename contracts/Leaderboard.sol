pragma solidity 0.5.0;
contract Leaderboard {

	struct PlayerRecord {
        string name;
        uint score;
    }

    mapping (address => PlayerRecord) private _highscores;
    mapping (uint => address) public addresses;
    uint public totalPlayers = 0;
    
    function setHighscore(string memory name, uint score) public returns (bool) {
        //check if player already has a record
        if(_highscores[msg.sender].score <= 0) {
            _addPlayerAddress();
        }
        
        _highscores[msg.sender] = PlayerRecord(name, score);
        return true;
    }
    function _addPlayerAddress() private returns (bool) {
        addresses[totalPlayers] = msg.sender;
        _incrementPlayers();
        return true;
    }
    
    function _incrementPlayers() private returns (bool) {
        totalPlayers++;
        return true;
    }
    
    function getName(address a) public view returns (string memory) {
    	return _highscores[a].name;
    }

    function getHighscore(address a) public view returns (uint) {
    	return _highscores[a].score;
    }
}    