/// scrGetLastEnabledGame()
// Returns the game object (e.g. objXYZGame) for the last 
//   enabled game in the global game list
// 
// If no valid (ENABLED) games exist, it returns noone


var size = array_height_2d(objGameList.gameList);
for(var i = size-1; i >= 0; i--){
  if(objGameList.gameList[i,1] == ENABLED)
    return objGameList.gameList[i,0];
}

return noone;

