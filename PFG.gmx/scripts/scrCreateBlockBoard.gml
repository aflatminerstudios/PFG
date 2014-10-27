///scrCreateBlockBoard(game)

var game = argument0;

game.starPower = 0;
game.gameAlive = true;

with (objBlock) {
    instance_destroy();
}

var chance = 0.5;

for (var j = 0; j < gridYMax; ++j) {
    for (var i = 0; i < gridXMax; ++i) {
        var r = random(1);
        if (r < chance) {
            var coords = scrGridToScreen(i, j, game);
            if ((j == 0) || position_meeting(coords[0], coords[1] + 16, objBlock)) {
                var b = instance_create(coords[0], coords[1], objBlock);
                b.host = game.id;
            }
        }
    }    
    chance = chance * 0.75;
}

show_debug_message("Created BlockGame Board");