///scrColsCheckMatches(block)

var block = argument0;
var matches;

with (block) {

if (block.host != noone) {
    ///Check left    
    var collisionl = instance_place(x - host.blockXSize, y, objColBlockSettled);
    ///Check right
    var collisionr = instance_place(x + host.blockXSize, y, objColBlockSettled);    
    ///Check up
    var collisionu = instance_place(x, y - host.blockYSize, objColBlockSettled);    
    ///Check down
    var collisiond = instance_place(x, y + host.blockYSize, objColBlockSettled);
    
    //Check for matches w/ left match
    if (collisionl != noone && collisionl.color == color) {
        var collisionl2 = instance_place(x - (2 * host.blockXSize), y, objColBlockSettled);
        if (collisionl2 != noone && collisionl2.color == color) {
            matches[0] = collisionl;
            matches[1] = collisionl2;
            var i = 3;
            collisionl2 = instance_place(x - (i * host.blockXSize), y, objColBlockSettled);
            while (collisionl2 != noone && collisionl2.color == color) {
                matches[i-1] = collisionl2;
                i += 1;
                collisionl2 = instance_place(x - (i * host.blockXSize), y, objColBlockSettled);
            }            
            scrMatchFound(block, matches);
        } else {
            if (collisionr != noone && collisionr.color == color) {
                matches[0] = collisionl;
                matches[1] = collisionr;
                var i = 2;                
                var collisionr2 = instance_place(x + (i * host.blockXSize), y, objColBlockSettled);
                while (collisionr2 != noone && collisionr2.color == color) {
                    matches[i] = collisionr2;
                    i += 1;
                    var collisionr2 = instance_place(x + (i * host.blockXSize), y, objColBlockSettled);
                }            
                scrMatchFound(block, matches);
            }
        }
    }

    //Check for 2+ matches to right
    if (collisionr != noone && collisionr.color == color) {
        var collisionr2 = instance_place(x + (2 * host.blockXSize), y, objColBlockSettled);
        if (collisionr2 != noone && collisionr2.color == color) {
            matches[0] = collisionr;
            matches[1] = collisionr2;
            var i = 3;
            collisionr2 = instance_place(x + (i * host.blockXSize), y, objColBlockSettled);
            while (collisionr2 != noone && collisionr2.color == color) {
                matches[i - 1] = collisionr2;
                i += 1;
                collisionr2 = instance_place(x + (i * host.blockXSize), y, objColBlockSettled);
            }                    
            scrMatchFound(block, matches);
        } 
    }
    
    //Check for matches w/ up match
    if (collisionu != noone && collisionu.color == color) {
        var collisionu2 = instance_place(x, y  - (2 * host.blockYSize), objColBlockSettled);
        if (collisionu2 != noone && collisionu2.color == color) {
            matches[0] = collisionu;
            matches[1] = collisionu2;
            var i = 3;
            collisionu2 = instance_place(x, y  - (i * host.blockYSize), objColBlockSettled);
            while (collisionu2 != noone && collisionu2.color == color) {
                matches[i - 1] = collisionu2;
                i += 1;
                collisionu2 = instance_place(x, y  - (i * host.blockYSize), objColBlockSettled);
            }
            scrMatchFound(block, matches);
            
        } else {
            if (collisiond != noone && collisiond.color == color) {
                matches[0] = collisionu;
                matches[1] = collisiond;
                var i = 2;
                var collisiond2 = instance_place(x, y  + (i * host.blockYSize), objColBlockSettled);
                while (collisiond2 != noone && collisiond2.color == color) {
                    matches[i] = collisiond2;
                    i += 1;
                    collisiond2 = instance_place(x, y  + (i * host.blockYSize), objColBlockSettled);
                }
                scrMatchFound(block, matches);
            }
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
            scrMatchFound(block, matches);
        }
    }
}
}

