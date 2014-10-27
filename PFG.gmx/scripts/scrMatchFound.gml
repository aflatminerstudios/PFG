///scrMatchFound(hostBlock, match1, match2)

var hostBlock = argument0;
var match1 = argument1;
var match2 = argument2;

scrSendAttack(host);

with (match1) {
    instance_destroy();
}

with (match2) {
    instance_destroy();
}

with (hostBlock) {
    instance_destroy();
}
