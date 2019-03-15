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
	
	addi	$t1, $sp, 4
	addi	$t2, $sp, 20
	
loop:
	add		$t3,$zero, $zero
	lw		$t5, 0($t1)
	lw		$t6, 0($t2)
	sw		$t6, 0($t1)
	sw		$t5, 0($t2)
	addi	$t1, $t1, 4
	addi	$t2, $t2, 4
	addi	$t0, $t0,1
	slt		$t3, $t0, 3
	bnez	$t3, loop
	j		$31
