	.data
v: 	.word 0,1,1,1,0
res: 	.space 20
	.text
main:
	la $t0, v
	la $t6, res

	lw $t1, 0($t0) 
	addi $t0, $t0, 4
	lw $t2, 0($t0) 
	addi $t0, $t0, 4
	lw $t3, 0($t0) 
	addi $t0, $t0, 4
	lw $t4 0($t0) 
	addi $t0, $t0, 4
	lw $t5, 0($t0) 
	
	and $t7, $t1, $t5 
	sw $t7, 0($t6)
	
	addi $t6, $t6, 4
	
	or $t7 ,$t2, $t4 
	sw $t7, 0($t6)
	
	addi $t6, $t6, 4
	
	or $t7 , $t1, $t2 
	and $t7, $t7, $t3 
	sw $t7, 0($t6)g