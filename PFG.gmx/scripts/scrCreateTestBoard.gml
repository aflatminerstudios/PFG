///scrCreateTestBoard(game)

if(argument_count > 0){
  var myGameInstance = argument0;
  with(myGameInstance){
    // Remove all children blocks
    with (objBlock) {
      if(host == myGameInstance)
        instance_destroy();
    }
  
    // Create moveable test block
    testBlock = instance_create(x, y+32, objBlock);
    testBlock.depth = depth - 2;
    testBlock.host = self;
    show_debug_message("I am Test Game #" + string(self.id) + ". (scrCreateTestBoard inside)");
  }
}
show_debug_message("Created Test Board");