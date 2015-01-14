//scrCheckForPokerHands(cardInstance)

var cardInstance = argument0;

show_debug_message("Running scrCheckPokerBlockForPair()");

var cardX = cardInstance.gridXPos;
var cardY = cardInstance.gridYPos;

show_debug_message("Card is at (" + string(cardX) + ", " + string(cardY) + ")");

with(cardInstance.host){
  var atMinX = (cardX == 0);
  var atMaxX = (cardX == ds_grid_width(blockGrid) - 1);
  var atMinY = (cardY == 0);
  var atMaxY = (cardY == ds_grid_height(blockGrid) - 1);
  
  // North
  if(!atMinY) {
    if(blockGrid[# cardX,cardY].cardRank == blockGrid[# cardX,cardY-1].cardRank) {
      blockGrid[# cardX,cardY].inPair = true; 
      blockGrid[# cardX,cardY-1].inPair = true;
    }
  }
  
  // East
  if(!atMaxX) {
    if(blockGrid[# cardX,cardY].cardRank == blockGrid[# cardX+1,cardY].cardRank) {
      blockGrid[# cardX,cardY].inPair = true; 
      blockGrid[# cardX+1,cardY].inPair = true;
    }
  }
  
  // South
  if(!atMaxY) {
    if(blockGrid[# cardX,cardY].cardRank == blockGrid[# cardX,cardY+1].cardRank) {
      blockGrid[# cardX,cardY].inPair = true; 
      blockGrid[# cardX,cardY+1].inPair = true;
    }
  }
  
  // West
  if(!atMinX) {
    if(blockGrid[# cardX,cardY].cardRank == blockGrid[# cardX-1,cardY].cardRank) {
      blockGrid[# cardX,cardY].inPair = true; 
      blockGrid[# cardX-1,cardY].inPair = true;
    }
  }
  
}

