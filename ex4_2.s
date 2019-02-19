main:
	addi 	$sp, $sp, -12
	sw	$s0, 8($sp)
	sw	$s1, 4($sp)
	sw	$s2, 0($sp)
	addi	$s0, $zero, 15
	slt	$s1, $s0, $zero
	addi	$t1, $zero, 1
	beq	$t1, $s1, if
	j	end
if:
	addi	$s2, $zero, 1
	j	end
end:
	lw	$s2, 0($sp)
	lw	$s1, 4($sp)
	lw	$s0, 8($sp)
	addi	$sp, $sp, 12
