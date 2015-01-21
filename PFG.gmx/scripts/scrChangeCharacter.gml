///scrChangeCharacter(charSelect, changeVal)

var charSelect = argument0;
var changeVal = argument1;

with (charSelect) {
    charIndex = charIndex + changeVal;
    if (charIndex < 0)
      charIndex = 3 + charIndex;
    if (charIndex > 2)
      charIndex = charIndex - 3;  
    sprite_index = charList[charIndex];
}
