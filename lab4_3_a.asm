main:
	addi	$sp, $sp, -36
	li		$s0, 1
	sw		$s0, 4($sp)
	li		$s0, 2
	sw		$s0, 8($sp)
	li		$s0, 3
	sw		$s0, 12($sp)
	li		$s0, 4
	sw		$s0, 16($sp)
	
	li		$s0, 5
	sw		$s0, 20($sp)
	li		$s0, 6
	sw		$s0, 24($sp)
	li		$s0, 7
	sw		$s0, 28($sp)
	li		$s0, 8
	sw		$s0, 32($sp)
	
	addi	$t3, $sp, 4
	addi	$t4, $sp, 20
	
loop:
	add		$t1,$zero, $zero
	lw		$t5, 0($t3)
	lw		$t6, 0($t4)
	sw		$t6, 0($t3)
	sw		$t5, 0($t4)
	addi	$t3, $t3, 4
	addi	$t4, $t4, 4
	addi	$t0, $t0,1
	slt		$t1, $t0, 3
	bnez	$t1, loop
	j		$31
