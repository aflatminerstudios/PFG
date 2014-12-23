///scrCreateColsBoard(game)

if(argument_count > 0){
  var myGameInstance = argument0;
  with(myGameInstance){
    // Remove all children blocks
    with (objBlock) {
      if(host == myGameInstance)
        instance_destroy();
    }
  }
}


// Original code
/*
var game = 0;

game.starPower = 0;
game.gameAlive = true;

with (objBlock) {
    instance_destroy();
}
*/

show_debug_message("Created Columns Board");