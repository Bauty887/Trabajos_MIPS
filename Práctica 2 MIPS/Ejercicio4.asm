            	.data
dato1:      	.word 2
dato2:      	.word 10
dato3:      	.word 50
dato4:      	.word 70
dato5:		.word 34

res:        	.space  4
            	.text
                                           	# cargo las palaras de los enteros en los registros t0 a t4
            	lw $t0, dato1 ($0)              # 2
            	lw $t1, dato2 ($0)              # 10
            	lw $t2, dato3 ($0)              # 50
            	lw $t3, dato4 ($0)              # 70
            	lw $t4, dato5 ($0)              # 34
            
            	and $r0, $r0, $0

            	blt $t4, $t0, fake
           	ble $t4, $t1, true

fake:     	blt $t4, $t2, false
            	ble $t4, $t3, true

false:      	j fin

true:  		ori $r0, $r0, 1

fin:		sw $r0, res($0)