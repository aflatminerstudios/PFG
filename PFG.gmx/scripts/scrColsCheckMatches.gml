///scrColsCheckMatches(block, matched)


var block = argument0;
var matched = argument1;
var matches;
var host = block.host;

with (block) {

if (block.host != noone) {

    ///Check right
    var collisionr = instance_place(x + host.blockXSize, y, objColBlockSettled);    

    ///Check down
    var collisiond = instance_place(x, y + host.blockYSize, objColBlockSettled);    
    
    //Check for 2+ matches to right
    if (collisionr != noone && collisionr.color == color && collisionr.host == host) {
        var collisionr2 = instance_place(x + (2 * host.blockXSize), y, objColBlockSettled);
        if (collisionr2 != noone && collisionr2.color == color && collisionr2.host == host) {
            matches[0] = collisionr;
            matches[1] = collisionr2;
            var i = 3;
            collisionr2 = instance_place(x + (i * host.blockXSize), y, objColBlockSettled);
            while (collisionr2 != noone && collisionr2.color == color && collisionr2.host == host) {
                matches[i - 1] = collisionr2;
                i += 1;
                collisionr2 = instance_place(x + (i * host.blockXSize), y, objColBlockSettled);
            }                    
            matches[i - 1] = block;
            matched = scrMatchFound(block.host, matches, matched);
        } 
    }
    
    //Check for 2+ matches down
    if (collisiond != noone && collisiond.color == color) {
        var collisiond2 = instance_place(x, y  + (2 * host.blockYSize), objColBlockSettled);
        if (collisiond2 != noone && collisiond2.color == color) {
            matches[0] = collisiond;
            matches[1] = collisiond2;
            var i = 3;
            collisiond2 = instance_place(x, y  + (i * host.blockYSize), objColBlockSettled)
            while (collisiond2 != noone && collisiond2.color == color) {
                matches[i - 1] = collisiond2;
                i += 1;
                collisiond2 = instance_place(x, y  + (i * host.blockYSize), objColBlockSettled);
            }
            matches[i - 1] = block;
            matched = scrMatchFound(block.host, matches, matched);
        }
    }
    
    
    
    /////////Now to check diagonally
    ///Check down-right
    var collisiondr = instance_place(x + host.blockXSize, y + host.blockYSize, objColBlockSettled);    

    ///Check down-left
    var collisiondl = instance_place(x - host.blockXSize, y + host.blockYSize, objColBlockSettled);


    //Check for 2+ matches to down-right
    if (collisiondr != noone && collisiondr.color == color && collisiondr.host == host) {
        var collisiondr2 = instance_place(x + (2 * host.blockXSize), y + (2 * host.blockYSize), objColBlockSettled);
        if (collisiondr2 != noone && collisiondr2.color == color && collisiondr2.host == host) {
            matches[0] = collisiondr;
            matches[1] = collisiondr2;
            var i = 3;
            collisiondr2 = instance_place(x + (i * host.blockXSize), y + (i * host.blockYSize), objColBlockSettled);
            while (collisiondr2 != noone && collisiondr2.color == color) {
                matches[i - 1] = collisiondr2;
                i += 1;
                collisiondr2 = instance_place(x + (i * host.blockXSize), y + (i * host.blockYSize), objColBlockSettled);
            }                    
            matches[i - 1] = block;
            matched = scrMatchFound(block.host, matches, matched);
        } 
    }    
    
    //Check for 2+ matches down-left
    if (collisiondl != noone && collisiondl.color == color && collisiondl.host == host) {
        var collisiondl2 = instance_place(x - (2 * host.blockXSize), y  + (2 * host.blockYSize), objColBlockSettled);
        if (collisiondl2 != noone && collisiondl2.color == color) {
            matches[0] = collisiondl;
            matches[1] = collisiondl2;
            var i = 3;
            collisiondl2 = instance_place(x - (i * host.blockXSize), y  + (i * host.blockYSize), objColBlockSettled)
            while (collisiondl2 != noone && collisiondl2.color == color && collisiondl2.host == host) {
                matches[i - 1] = collisiondl2;
                i += 1;
                collisiondl2 = instance_place(x - (i * host.blockXSize), y  + (i * host.blockYSize), objColBlockSettled);
            }
            matches[i - 1] = block;
            matched = scrMatchFound(block.host, matches, matched);        
        }
    }
    
    
    
    
}
}

var h = array_length_1d(matched);
if (h > 1) {
    block.host.multiMatches += 1;
}

return matched;
