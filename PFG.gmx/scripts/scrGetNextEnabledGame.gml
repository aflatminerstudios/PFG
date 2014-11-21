/// scrGetNextEnabledGame(gameType)
// Returns the game object (e.g. objXYZGame) for the 
//   game after the one specified, similar to room_next(num)
// 
// Wraps around to the first one if it hits the end
// If no valid (ENABLED) games exist, it returns noone
// If gameType doesn't match anything in the list, return the first enabled game

var gameType = argument0;

var gameTypeFound = false;
var size = array_height_2d(objGameList.gameList);

for(var i = 0; i < size; i++){
  if(gameTypeFound){
    if(objGameList.gameList[i,1] == ENABLED)
      return objGameList.gameList[i,0];
  }
  if(objGameList.gameList[i,0] == gameType)
    gameTypeFound = true;
}

// Wrap around to the beginning
return scrGetFirstEnabledGame();
