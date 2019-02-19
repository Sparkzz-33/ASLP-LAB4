main:
	addi	$sp, $sp, -12
	sw 	$s0, 8($sp)
	sw 	$s1, 4($sp)
	sw	$s2, 0($sp)
	addi 	$s0, $zero, 12
	addi 	$t0, $zero, 1
	add	$s1, $zero, $zero
	b	l1
l1:
	add	$t1, $zero, $zero
	and	$t1, $s0, $t0
	beq	$t1, $t0, if
	sll	$t0, $t0, 1
	slt	$t2, $t0, $s0
	bne	$t2, $zero, end
	
if:
	addi	$s1, $s1, 1
end:
	j 	$31
	lw	$s2, 0($sp)
	lw	$s1, 4($sp)
	lw	$s2, 8($sp)
	addi	$sp, $sp, 12
