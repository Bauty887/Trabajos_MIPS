		.data
vector: 	.word 1,0,2,0,3,0,0,10
cont:		.word 8

total: 		.space 4
		.text

		la $t0, vector($0)
		and $t5, $t5, $0

		lw $s2, cont($0)
		li $s3, 0

bucle: 		bge $s3, $s2, finbucle
		lw $t1, 0($t0)
		beq $t1, $0, true

resto:		addi $t0, $t0, 4
		addi $s3, $s3, 1
		j bucle

true:		addi $t5, $t5, 1
		j resto

finbucle:	sw $t5, total($0)