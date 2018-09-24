/* see default ld script: ld --verbose 
   ld -T file.ld 
*/

SECTIONS {
    . = 0x1230000;
    .text : { * (.text);}
    . = 0x4560000;
    .data : { * (.data);}
}
