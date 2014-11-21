/// scrGetFirstEnabledGame()
// Returns the game object (e.g. objXYZGame) for the first 
//   enabled game in the global game list
// 
// If no valid (ENABLED) games exist, it returns noone


var size = array_height_2d(objGameList.gameList);
for(var i = 0; i < size; i++){
  if(objGameList.gameList[i,1] == ENABLED)
    return objGameList.gameList[i,0];
}

return noone;

