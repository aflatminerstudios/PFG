///scrMovePokerCard(cardInstance, newGridXPos, newGridYPos [, leaveOldReference])
// Takes grid positions as input (not screen x/y)

// Warning: overwrites pointer in new spot in poker game grid 
// (and removes from old (sets to noone) if leaveOldReference is not set)

var cardInstance = argument0;
var newGridXPos = argument1;
var newGridYPos = argument2;
var leaveOldReference = false;
if( argument_count >= 4 )
  leaveOldReference = argument3;

with (cardInstance) {
  if(!leaveOldReference)
    host.blockGrid[# gridXPos, gridYPos] = noone;
  gridXPos = newGridXPos;
  gridYPos = newGridYPos;
  host.blockGrid[# gridXPos, gridYPos] = cardInstance;
  
  // Update screen location of new block (move to function) -- Micha TODO
  x = gridXPos*host.blockXSize+host.x;
  y = gridYPos*host.blockYSize+host.y;
}
