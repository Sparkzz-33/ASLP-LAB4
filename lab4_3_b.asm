main:
	addi	$sp,$sp,-36
	li		$s0,'A'
	sb		$s0,4($sp)
	li		$s0,'B'
	sb		$s0,8($sp)
	li		$s0,'C'
	sb		$s0,12($sp)
	li		$s0,'D'
	sb		$s0,16($sp)	

	li		$s0,'E'
	sb		$s0,20($sp)
	li		$s0,'F'
	sb		$s0,24($sp)
	li		$s0,'G'
	sb		$s0,28($sp)
	li		$s0,'H'
	sb		$s0,32($sp)
	
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
	add		$t0, $zero, $zero
	add		$t3, $zero, $zero
	add		$t3, $sp, $t3
	addi	$t3, $t3, 4
	j		$31