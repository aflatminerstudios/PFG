/// scrGetGameSelectionForPlayer(playerNumber)
//  Returns a object name objColsGame, objTestGame, etc. for a particular player number
//  1P is 0, 2P is 1, etc.

var playerNumber = argument0;

return global.gameSelectionInfo[playerNumber,0];