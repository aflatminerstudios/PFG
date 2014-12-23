///scrCompareArrayEq(array1, array2)
///Returns true if arrays are equal, but in different orders, false otherwise 

//var array1 = argument0;
var array2 = argument1;

var l1 = array_length_1d(argument0);
var l2 = array_length_1d(array2);

if (l1 != l2)
    return false;
    
for (var i = 0; i < l1; ++i) {

    ///Use @ for quicker reference
    var e = argument0[@ i];
    ///Don't double check 'noone' values
    if (e == noone)
        continue;
        
    var found = false;
    for (var j = 0; j < l2; ++j) {
        if (array2[j] == e) {
            found = true;
            array2[j] = noone;
            break;
        }
    }
    
    if (!found) {
        return false;
    }
}

return true;
