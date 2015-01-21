/// scrSetGameSelectionForPlayer(playerNumber, gameType)
//  Returns a object name objColsGame, objTestGame, etc. for a particular player number
//  1P is 0, 2P is 1, etc.

var playerNumber = argument0;
var gameType = argument1;

global.gameSelectionInfo[playerNumber,0] = gameType;

return gameType;