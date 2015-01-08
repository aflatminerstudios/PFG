///scrCreatePokerBoard

if(argument_count > 0){
  var myGameInstance = argument0;
  with(myGameInstance){
    // Remove all children blocks
    with (objPokerBlock) {
      if(host == myGameInstance)
        instance_destroy();
    }
  
    // Create moveable cursor
    cursor = instance_create(x, y+32, objPokerCursor);
    cursor.depth = depth - 2;
    cursor.host = self;
    show_debug_message("I am Poker Game #" + string(self.id) + ". (scrCreatePokerBoard)");
  }
}
show_debug_message("Created Poker Board");
