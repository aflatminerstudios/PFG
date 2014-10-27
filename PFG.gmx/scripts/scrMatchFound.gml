///scrMatchFound(hostBlock, matches[array of blocks])

var hostBlock = argument0;
var matches = argument1;


scrSendAttack(host);

if (is_array(matches)) {
    l = array_length_1d(matches);
    for (i = 0; i < l; ++i) {
        with (matches[i]) {
            instance_destroy();
        }
    }
}

with (hostBlock) {
    instance_destroy();
}
