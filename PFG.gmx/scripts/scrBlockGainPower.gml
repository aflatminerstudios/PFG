///scrBlockGainPower(game, amount)

var game = argument0;
var amount = argument1;

game.starPower += amount;

if (game.starPower >= 100) {
    show_message("You have more than 100 star power!");
}
