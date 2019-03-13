main:
	li		$s0, 1
	sw		$s0, 0($sp)
	li		$s0, 2
	sw		$s0, 4($sp)
	li		$s0, 3
	sw		$s0, 8($sp)
	li		$s0, 4
	sw		$s0, 12($sp)
	
	li		$s0, 5
	sw		$s0, 16($sp)
	li		$s0, 6
	sw		$s0, 20($sp)
	li		$s0, 7
	sw		$s0, 24($sp)
	li		$s0, 8
	sw		$s0, 28($sp)
	
	li		$t2, 4
	add		$t3, $sp, $t2
	addi	$t4, $zero, 20
	add		$t4, $sp, $t4
	addi	$t5, $t5, 32

loop:
	add		$t1, $zero, $zero
	lw		$t6, 0($t3)
	lw		$t7, 0($t4)
	add		$s2, $t6, $t7
	add		$s2, $s2, $s3
	li		$s3, 0
	sw		$s2,0($t5)
	slt		$s4, $s2, $t6
	beqz	$s4, continue
	li		$s3,1
	
continue:
	add		$t5, $t5, $t2
	add		$t3, $t3, $t2
	add		$t4, $t4, $t2
	addi	$t0, $t0, 1
	slt		$t1,$t0, 4
	bnez	$t1, loop
	add		$t0, $zero, $zero
	add		$t5, $zero, $zero
	add		$t5, $sp, $t5
	addi	$t5, $t5, 32
	j		$31