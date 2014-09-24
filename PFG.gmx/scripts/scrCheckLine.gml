///scrCheckLine(block, game)

var block = argument0;
var game = argument1;

var loopMax = game.gridXMax;

var found = true;

for (var i = 0; i < loopMax; ++i) {
    var coords = scrGridToScreen(i, 0, game);
    
    if (instance_position(coords[0], block.y - 3, objBlock) == noone) {
    show_debug_message("PROBLEM AT " + string(i));
        found = false;
    }
}

if (found = true) {

    for (var i = loopMax; i > 0; --i) {   
        var coords = scrGridToScreen(i, 0, game);
        
        var b = instance_position(coords[0], block.y - 3, objBlock);

        with (b) {
            instance_destroy();
        }
    }
    
    with (objBlock) {
        if (object_index != objActiveBlock) {
            y += 32;
        }
    } 

    scrSendAttack(game);    
  
    with (block) {
        instance_destroy();
    }

}

