	.data
V: 	.word 2, -4, -6
res: 	.space 12
	.text
main:
	lw $s0, V
	lw $s1, V+4
	lw $s2, V+8

	sge $t0, $s0, $0
	sge $t1, $s1, $0
	sge $t2, $s2, $0

	sw $t0, res
	sw $t1, res+4
	sw $t2, res+8
