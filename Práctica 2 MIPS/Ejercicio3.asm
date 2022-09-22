            .data
V:          .word   1, -4, -5, 2

res:        .space  1 
            .text

            lw $t0, V($0)
            lw $t1, V + 4($0)
            lw $t2, V + 8($0)
            lw $t3, V + 12($0)

            slt $t4, $t0, $0
            slt $t5, $t1, $0
            slt $t6, $t2, $0
            slt $t7, $t3, $0

            and $r0, $t4, $t5
            and $r0, $r0, $t6
            and $r0, $r0, $t7

            sb $r0, res($0)