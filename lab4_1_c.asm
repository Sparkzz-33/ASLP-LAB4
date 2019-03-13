main:
	addi	$sp, $sp, -4
	sw		$s0, 0($sp)
	sw		$s0, 4($sp)
	addi	$s0, $zero, 0xf0f
	addi	$t0, $t0, 1
	and		$t1, $s0, $t0
test1:
	bgtz	$t1, second
	b		first
second:
	addi	$s1, $s1, 1
	b		loop
first:
	addi	$s2, $s2, 1
loop:
	addi	$t2, $t2, 1
	slti	$t3, $t2, 32
	beq		$t3, $zero, exit
	addi	$t3, $zero, 0
	sll		$t0, $t0, 1
	and		$t4, $t0, $s0
	sll		$t1, $t1, 1
	beq		$t1, $t4, equal
	move	$t1, $t4
	beq		$t1, $zero, first
	bne		$t1, $zero, one

exit:
	j		$31