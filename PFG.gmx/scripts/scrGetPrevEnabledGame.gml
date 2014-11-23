/// scrGetPrevEnabledGame(gameType)
// Returns the game object (e.g. objXYZGame) for the 
//   game prior to the one specified, similar to room_prev(num)
// gameType is a game object, e.g. objTestGame, objColsGame
// 
// Wraps around to the last one if it hits the end
// If no valid (ENABLED) games exist, it returns noone
// If gameType doesn't match anything in the list, return the first enabled game

var gameType = argument0;

var gameTypeFound = false;
var size = array_height_2d(objGameList.gameList);

for(var i = size-1; i >= 0; i--){
  if(gameTypeFound){
    if(objGameList.gameList[i,1] == ENABLED)
      return objGameList.gameList[i,0];
  }
  if(objGameList.gameList[i,0] == gameType)
    gameTypeFound = true;
}

// Wrap around to the end
return scrGetLastEnabledGame();
