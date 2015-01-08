///scrMatchFound(host, matches[array of blocks], matched[array of arrays of blocks])

var host = argument0;
var matches = argument1;
var matched = argument2;
var l;

var h = array_length_1d(matched);

for (var i = 0; i < h; ++i) {
    if (scrCompareArrayEq(matches, matched[i]))
        return matched;
}

host.curMatches += 1;
host.matches += 1;
host.blockMatches += h;

if (h > 3) {
    host.bigMatches += 1;
}

while (host.curMatches >= 5) {
    scrSendAttack(host);
    host.curMatches -= 5;
}

matched[h] = matches;

return matched;

/*
if (is_array(matches)) {    
    l = array_length_1d(matches);
    for (i = 0; i < l; ++i) {
        with (matches[i]) {
            instance_destroy();
        }
    }
}

scrGenericPower(host, l);
// Send a tank for the heck of it
scrAddTankToBattleMinimap(objTank1);

with (hostBlock) {
    instance_destroy();
}
*/
