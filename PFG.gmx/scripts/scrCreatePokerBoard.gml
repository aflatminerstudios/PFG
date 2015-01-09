///scrCreatePokerBoard(gameInstance)

if(argument_count > 0){
  var myGameInstance = argument0;
  var grid = myGameInstance.blockGrid;
  for(var i = 0; i < ds_grid_width(grid); i++) {
    for(var j = 0; j < ds_grid_height(grid); j++) {
      if( grid[# i,j] != noone ) {
        with(grid[# i,j]) {
          instance_destroy();  
        }
      }
      var newBlock = instance_create(0, 0, objPokerBlock);
      newBlock.host = myGameInstance;
      newBlock.gridXPos = i;
      newBlock.gridYPos = j;
      newBlock.x = i*myGameInstance.blockXSize+myGameInstance.x;
      newBlock.y = j*myGameInstance.blockYSize+myGameInstance.y;
      newBlock.depth = myGameInstance.depth - 50; // Perhaps should be host.depth + myDepth? -- Micha TODO
      grid[# i,j] = newBlock;
    }
  }
  
  with(myGameInstance){
    // Create moveable cursor
    if(cursor == noone) {
      cursor = instance_create(x, y, objPokerCursor);
      cursor.depth = depth - 100;
      cursor.host = self;
    }
    cursor.gridXPos = 0;
    cursor.gridYPos = 0;
    cursor.x = x; // Convert to use function and include offset if there is game chrome -- Micha TODO
    cursor.y = y; 
    cursor.isHolding = false;
    cursor.image_index = 3;
    show_debug_message("I am Poker Game #" + string(self.id) + ". (scrCreatePokerBoard)");
  }
}
show_debug_message("Created Poker Board");
