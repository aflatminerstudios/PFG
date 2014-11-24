/// scrGetGameDescription(gameType)
// Returns the long game description ("Test game setup used to... ") 
//   for the gameType specified
// gameType is a game object, e.g. objTestGame, objColsGame
//
// Returns an empty string if no match

var gameType = argument0;

var size = array_height_2d(objGameList.gameList);

for(var i = 0; i < size; i++){
  if(objGameList.gameList[i,GAMEOBJECT] == gameType)
    return objGameList.gameList[i,GAMEDESCRIPTION];
}

return "";
