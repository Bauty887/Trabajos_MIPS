Actividad 2:

		.data
space1:		.space 80 #Cada palabra en mips tiene 4 bytes, como son 20 palabras
space2:		.space 80 #entonces hay que reservar un espacio de 80 bytes.
		.text
		.globl main
main:

Actividad 3:

		.data 0x10001000
wd: 		.word 10
wd-b: 		.byte 0x10
.align 4
wd-a: 		.word 530

Actividad 4:

		.data
wd1: 		.word 3
byte1: 		.byte 0x10
.align 4
space1: 	space 4
byte2:		.byte 20

Actividad 5:

		.data
text: 		.ascii “Esto es un problema”
wcadena: 	.word 69, 115, 116, 111, 32, 101, 115, 32, 117, 110, 32, 112, 114, 111, 98, 108, 
		101, 109, 97
bcadena 	.byte 69, 115, 116, 111, 32, 101, 115, 32, 117, 110, 32, 112, 114, 111, 98, 108, 
		101, 109, 97

Actividad 6:

		.data
arreglo-f: 	.byte 1, 2, 3, 4, 5, 6, 7, 8, 9
arreglo-c 	.byte 1, 4, 7, 2, 5, 8, 3, 6, 9

Actividad 7:

		.data
arreglo: 	.word 10, 20, 25, 500, 3
		.text

main:
		la $t1, arreglo
		lw $s0, 0($t1)
		lw $s1, 4($t1)
		lw $s2, 8($t1)
		lw $s3, 12($t1)
		lw $s4, 16($t1) #Aumenta de a 4 porque cada palabra tiene 4 bytes

Actividad 8:

		.data 0x10000000
arreglo: 	.word 10, 20, 25, 500, 3
		.text

main:
		la $t0, arreglo
		li $t1, 0x10010000
		li $t1, 0x10010014
		
loop: 		lw $s0, 0($t0)
		lw $s0, 0($t0)
		add $t0, $t0, 4
		add $t1, $t1, 4
		blt $t1, $t2, loop
		nop

Actividad 9:

		.data 0x10000000
wd: 		.word 0x10203040
		.text

		la $t0, wd
		li $t1, 0x10010000
		li $t2, 0x10010004

loop: 		lb $s0, 0($t0)
		sb $s0, 0($t1)
		add $t0, $t0, 1
		add $t1, $t1, 1
		blt $t1, $t2, loop
		nop

Actividad 10:

		.data
wd: 		.word 0x10203040
		.text

		la $t0, wd
		lh $s0, 0($t0)
		lh $s1, 2($t0)
		sh $s1, 0($t0)
		sh $s0, 2($t0)

Actividad 11:

		.data 0x10010002
byte: 		.byte 0x10, 0x20, 0x30, 0x40
		.data 0x10010102
space1: 	space 4

		la $t0, byte
		la$t1, space
		andi $t2, $t2, 0
		add $t2, $t1, 4

loop: 		lb $s0, 0($t0)
		lb $s0, 0($t1)
		add $t0, $t0, 1
		add $t1, $t1, 1
		blt $t1, $t2, loop
		nop

Actividad 12:

		.data 0x10000000
vect: 		.byte 10, 20
		.text

		la $t0, vect
		lb $s0, 0($t0)
		lb $s1, 1($t0)
		add $s2, $s0, $s1
		sb $s2, 2($t0)

Actividad 13:

		.data 0x10000000
vect: 		.word 18, -1215
		.text

		la $t0, vext
		li $t1, 0x10010000

		lw $s0, 0($t0)
		lw $s1, 4($t0)
		div $s0, $s0, 5
		div $s1, $s1, 5
		div $s3, $s0, $1

		sb $s3, 0($t1)

Actividad 14:

		.data 0x10000000
wd: 		.word 0xabcd12bd
		.text

		lw $s0, num($0)
		andi $s0, $s0, 0x2BB

Actividad 15:

		.data 0x10000000
wd: 		.word 0xff0f1235
		.text

		lw $s0, num($0)
		xor $s0, $s0, 0x144

Actividad 16:

		.data
wd: 		.word 0x1237
		.text

		lw $s0, num($0)
		sll $s0, $s0, 5