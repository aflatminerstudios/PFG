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
            return 1;
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
                return 1;
            }
        }
    //Check for 2+ matches to right
    } else if (collisionr != noone && collisionr.color == color) {
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
            return 1;
        } 
    }
    
    
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
            return 1;        
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
                return 1;
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
            return 1;
        }
    }
    
    
    
    /////////Now to check diagonally
    ///Check up-left    
    var collisionul = instance_place(x - host.blockXSize, y - host.blockYSize, objColBlockSettled);
    ///Check down-right
    var collisiondr = instance_place(x + host.blockXSize, y + host.blockYSize, objColBlockSettled);    
    ///Check up-right
    var collisionur = instance_place(x + host.blockXSize, y - host.blockYSize, objColBlockSettled);    
    ///Check down-left
    var collisiondl = instance_place(x - host.blockXSize, y + host.blockYSize, objColBlockSettled);
    
    //Check for matches w/ upper-left match
    if (collisionul != noone && collisionul.color == color) {
        var collisionul2 = instance_place(x - (2 * host.blockXSize), y - (2 * host.blockYSize), objColBlockSettled);
        if (collisionul2 != noone && collisionul2.color == color) {
            matches[0] = collisionul;
            matches[1] = collisionul2;
            var i = 3;
            collisionul2 = instance_place(x - (i * host.blockXSize), y - (i * host.blockYSize), objColBlockSettled);
            while (collisionul2 != noone && collisionul2.color == color) {
                matches[i-1] = collisionul2;
                i += 1;
                collisionul2 = instance_place(x - (i * host.blockXSize), y - (i * host.blockYSize), objColBlockSettled);
            }            
            scrMatchFound(block, matches);
            return 1;
        } else {
            if (collisiondr != noone && collisiondr.color == color) {
                matches[0] = collisionul;
                matches[1] = collisiondr;
                var i = 2;                
                var collisiondr2 = instance_place(x + (i * host.blockXSize), y + (i * host.blockYSize), objColBlockSettled);
                while (collisiondr2 != noone && collisiondr2.color == color) {
                    matches[i] = collisiondr2;
                    i += 1;
                    var collisiondr2 = instance_place(x + (i * host.blockXSize), y + (i * host.blockYSize), objColBlockSettled);
                }            
                scrMatchFound(block, matches);
                return 1;
            }
        }
    }

    //Check for 2+ matches to down-right
    if (collisiondr != noone && collisiondr.color == color) {
        var collisiondr2 = instance_place(x + (2 * host.blockXSize), y + (2 * host.blockYSize), objColBlockSettled);
        if (collisiondr2 != noone && collisiondr2.color == color) {
            matches[0] = collisiondr;
            matches[1] = collisiondr2;
            var i = 3;
            collisiondr2 = instance_place(x + (i * host.blockXSize), y + (i * host.blockYSize), objColBlockSettled);
            while (collisiondr2 != noone && collisiondr2.color == color) {
                matches[i - 1] = collisiondr2;
                i += 1;
                collisiondr2 = instance_place(x + (i * host.blockXSize), y + (i * host.blockYSize), objColBlockSettled);
            }                    
            scrMatchFound(block, matches);
            return 1;
        } 
    }
    
    //Check for matches w/ up-right match
    if (collisionur != noone && collisionur.color == color) {
        var collisionur2 = instance_place(x + (2 * host.blockXSize), y  - (2 * host.blockYSize), objColBlockSettled);
        if (collisionur2 != noone && collisionur2.color == color) {
            matches[0] = collisionur;
            matches[1] = collisionur2;
            var i = 3;
            collisionur2 = instance_place(x + (i * host.blockXSize), y  - (i * host.blockYSize), objColBlockSettled);
            while (collisionur2 != noone && collisionur2.color == color) {
                matches[i - 1] = collisionur2;
                i += 1;
                collisionur2 = instance_place(x + (i * host.blockXSize), y  - (i * host.blockYSize), objColBlockSettled);
            }
            scrMatchFound(block, matches);
            return 1;
        } else {
            if (collisiondl != noone && collisiondl.color == color) {
                matches[0] = collisionur;
                matches[1] = collisiondl;
                var i = 2;
                var collisiondl2 = instance_place(x - (i * host.blockXSize), y  + (i * host.blockYSize), objColBlockSettled);
                while (collisiondl2 != noone && collisiondl2.color == color) {
                    matches[i] = collisiondl2;
                    i += 1;
                    collisiondl2 = instance_place(x - (i * host.blockXSize), y  + (i * host.blockYSize), objColBlockSettled);
                }
                scrMatchFound(block, matches);
                return 1;
            }
        }
    }
    
    //Check for 2+ matches down-left
    if (collisiondl != noone && collisiondl.color == color) {
        var collisiondl2 = instance_place(x - (2 * host.blockXSize), y  + (2 * host.blockYSize), objColBlockSettled);
        if (collisiondl2 != noone && collisiondl2.color == color) {
            matches[0] = collisiondl;
            matches[1] = collisiondl2;
            var i = 3;
            collisiondl2 = instance_place(x - (i * host.blockXSize), y  + (i * host.blockYSize), objColBlockSettled)
            while (collisiondl2 != noone && collisiondl2.color == color) {
                matches[i - 1] = collisiondl2;
                i += 1;
                collisiondl2 = instance_place(x - (i * host.blockXSize), y  + (i * host.blockYSize), objColBlockSettled);
            }
            scrMatchFound(block, matches);
            return 1;
        }
    }
    
    
    
    
}
}

return 0;
