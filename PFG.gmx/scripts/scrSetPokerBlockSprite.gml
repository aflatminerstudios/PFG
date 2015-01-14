///scrSetPokerBlockSprite(cardInstance, cardRank, cardSuit);

var cardInstance = argument0;
var cardRank = argument1;
var cardSuit = argument2;

// defaults
var suitSprite = sprPokerBlockHearts;
var rankIndex = 1;

switch(cardSuit){
  case "Hearts":
    suitSprite = sprPokerBlockHearts;
    break;
  case "Spades":
    suitSprite = sprPokerBlockSpades;
    break;
  case "Diamonds":
    suitSprite = sprPokerBlockDiamonds;
    break;
  case "Clubs":
    suitSprite = sprPokerBlockClubs;
    break;
  default:
    suitSprite = sprPokerBlockHearts;
    break;
}

switch(cardRank){
  case "Ace":
    rankIndex = 0;
    break;
  case "Two":
    rankIndex = 1;
    break;
  case "Three":
    rankIndex = 2;
    break;
  case "Four":
    rankIndex = 3;
    break;
  case "Five":
    rankIndex = 4;
    break;
  case "Six":
    rankIndex = 5;
    break;
  case "Seven":
    rankIndex = 6;
    break;
  case "Eight":
    rankIndex = 7;
    break;
  case "Nine":
    rankIndex = 8;
    break;
  case "Ten":
    rankIndex = 9;
    break;
  case "Jack":
    rankIndex = 10;
    break;
  case "Queen":
    rankIndex = 11;
    break;
  case "King":
    rankIndex = 12;
    break;
  default:
    rankIndex = 1;
    break;
}


with(cardInstance){
  sprite_index = suitSprite;
  image_index = rankIndex;
}
