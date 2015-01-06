///scrCreatePipeGameBoard(gameInstance)

if(argument_count > 0){
  var myGameInstance = argument0;
  with(myGameInstance){
    // Remove all children blocks
    with (objPipeBlock) {
      if(host == myGameInstance)
        instance_destroy();
    }
    
    var cursorXStart = x+96;
    var cursorYStart = y+128;
    
    // Create moveable cursor
    if(cursor == noone){
      cursor = instance_create(cursorXStart, cursorYStart, objCursor);
      cursor.depth = depth - 100;
      cursor.host = self;
    } else {
      cursor.x = cursorXStart;
      cursor.y = cursorYStart;
    }
  }
}

show_debug_message("Created fresh Pipe Game Board");
