/// scrSetGameLevelForPlayer(playerNumber, level)
//  Returns level info (1, random, etc.) for a particular player number
//  1P is 0, 2P is 1, etc.

var playerNumber = argument0;
var level = argument1;

global.gameSelectionInfo[playerNumber,1] = level;

return level;
