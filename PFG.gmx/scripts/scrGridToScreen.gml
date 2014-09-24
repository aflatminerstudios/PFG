///scrGridToScreen(gridX, gridY, game)

var gridX = argument0;
var gridY = argument1;
var game = argument2;

var screenX = game.x + gridX * game.blockXSize;
var screenY = (game.y + game.fieldHeight) - gridY * game.blockYSize;

var screenCoords;

screenCoords[0] = screenX;
screenCoords[1] = screenY;

return screenCoords;
