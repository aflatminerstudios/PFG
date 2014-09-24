///scrBlockFall(game)

game = argument0;

var i = irandom(game.gridXMax - 1);
var coords = scrGridToScreen(i, game.gridYMax, game);
var b = instance_create(coords[0], coords[1], objFallingBlock);
b.host = game.id;
b.alarm[0] = (room_speed / 2)/game.currentSpeed;
