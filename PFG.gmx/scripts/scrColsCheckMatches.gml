///scrColsCheckMatches(block)

var block = argument0;

with (block) {

if (block.host != noone) {
    ///Check left    
    collision1 = instance_place(x - host.blockXSize, y, objColBlockSettled);
    if (collision1.color == color) {
        collision2 = instance_place(x - (2 * host.blockXSize), y, objColBlockSettled);
        if (collision2.color == color) {
            scrMatchFound(block, collision1, collision2);
        } else {
            collision2 = instance_place(x + host.blockXSize, y, objColBlockSettled);
            if (collision2.color == color) {
                scrMatchFound(block, collision1, collision2);
            }
        }
    }
    ///Check right
    collision1 = instance_place(x + host.blockXSize, y, objColBlockSettled);
    if (collision1.color == color) {
        collision2 = instance_place(x + (2 * host.blockXSize), y, objColBlockSettled);
        if (collision2.color == color) {
            scrMatchFound(block, collision1, collision2);
        } else {
            collision2 = instance_place(x - host.blockXSize, y, objColBlockSettled);
            if (collision2.color == color) {
                scrMatchFound(block, collision1, collision2);
            }
        }
    }
    
    ///Check up
    collision1 = instance_place(x, y - host.blockYSize, objColBlockSettled);
    if (collision1.color == color) {
        collision2 = instance_place(x, y  - (2 * host.blockYSize), objColBlockSettled);
        if (collision2.color == color) {
            scrMatchFound(block, collision1, collision2);
        } else {
            collision2 = instance_place(x, y + host.blockXSize, objColBlockSettled);
            if (collision2.color == color) {
                scrMatchFound(block, collision1, collision2);
            }
        }
    }
    
    ///Check down
    collision1 = instance_place(x, y + host.blockYSize, objColBlockSettled);
    if (collision1.color == color) {
        collision2 = instance_place(x, y  + (2 * host.blockYSize), objColBlockSettled);
        if (collision2.color == color) {
            scrMatchFound(block, collision1, collision2);
        } else {
            collision2 = instance_place(x, y - host.blockXSize, objColBlockSettled);
            if (collision2.color == color) {
                scrMatchFound(block, collision1, collision2);
            }
        }
    }
}
}
