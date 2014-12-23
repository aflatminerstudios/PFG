///scrColsCreateBlock(game)

var game = argument0;

var newX;
var newY;
var pts, l, r, t, b;

newX = irandom(game.gridXMax - 1);
newY = irandom(game.gridYMax);

pts = scrGridToScreen(newX, newY, game);
l = pts[0];
r  = pts[0] + blockXSize;
t = pts[1] - blockYSize;
b = pts[1];

if (collision_rectangle(l,t,r,b,objColBlock,true,true) != noone){ 
    game.alarm[0] = 1;
} else {
    var block = instance_create(pts[0], pts[1], objColFallingBlock);
    block.host = game.id;
}

