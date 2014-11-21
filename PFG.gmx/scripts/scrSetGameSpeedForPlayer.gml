/// scrSetGameSpeedForPlayer(playerNumber, gameSpeed)
//  Returns speed info (1, 5, slow, fast, etc.) for a particular player number
//  1P is 0, 2P is 1, etc.

var playerNumber = argument0;
var gameSpeed = argument1;

global.gameSelectionInfo[playerNumber,2] = gameSpeed;

return gameSpeed;
