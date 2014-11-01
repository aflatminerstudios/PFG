///scrColsCreateWall(wallType)

var wallType = argument0;

var line = objBattleMinimap;
var endOfLine = line.x + line.sprite_width;
var monster = objMonsterMini;
var dist = endOfLine - monster.x;

var wallPos = random(1) * dist + monster.x;

w = instance_create(wallPos, line.startPoint[1], wallType);
