//scrCheckForPokerHands(gameInstance)

var gameInstance = argument0;


show_debug_message("Running scrCheckForPokerHands()");

with(gameInstance) {

  for(var i = 0; i < ds_grid_width(blockGrid); i++) {
    for(var j = 0; j < ds_grid_height(blockGrid); j++) {
      scrCheckPokerBlockForPair(blockGrid[# i,j]);
    }
  }

 
}
