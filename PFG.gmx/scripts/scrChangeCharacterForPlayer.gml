///scrChangeCharacter(playerNumber, charSelect, changeVal)
//  Changes an object index for the character for a particular player 
//  number by changeVal
//  1P is 0, 2P is 1, etc.

var playerNumber = argument0;
var charSelect = argument1;
var changeVal = argument2;


with (charSelect) {
    charIndex = charIndex + changeVal;
    if (charIndex < 0)
      charIndex = 3 + charIndex;
    if (charIndex > 2)
      charIndex = charIndex - 3;  
    sprite_index = charList[charIndex];
    global.gameSelectionInfo[playerNumber, 3] = charObjList[charIndex];
}
