///scrMatchFound(hostBlock, matches[array of blocks])

var hostBlock = argument0;
var matches = argument1;
var l;

host.matches += 1;

while (host.matches >= 5) {
    scrSendAttack(host);
    host.matches -= 5;
}

if (is_array(matches)) {    
    l = array_length_1d(matches);
    for (i = 0; i < l; ++i) {
        with (matches[i]) {
            instance_destroy();
        }
    }
}

scrGenericPower(host, l);

with (hostBlock) {
    instance_destroy();
}
