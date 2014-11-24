/// scrGetGameThumbnail(gameType)
// Returns the sprite (sprColsGameThumbnail, etc.) 
//   for the gameType specified
// gameType is a game object, e.g. objTestGame, objColsGame
//
// Returns the sprTestGameThumbnail if no match

var gameType = argument0;

var size = array_height_2d(objGameList.gameList);

for(var i = 0; i < size; i++){
  if(objGameList.gameList[i,GAMEOBJECT] == gameType)
    return objGameList.gameList[i,GAMETHUMBNAIL];
}

return sprTestGameThumbnail;
