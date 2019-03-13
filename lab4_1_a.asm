main:
	addi	$sp, $sp, -12
	sw		$s0, 0($sp)
	sw		$s1, 4($sp)
	sw		$s2, 8($sp)
	add		$s1, $zero, $zero
	addi	$s0, $zero, 12
	addi	$t0, $zero, 1
	addi	$t4, $zero, 1
	b		$first

$second:
	addi	$s1, $s1, 1
$third:
	sll		$t0, $t0, 1
$first:
	and 	$t1, $s0, $t0
	addi	$t2, $t2, 1
	bne		$t1, $zero, $second
	addi	$s2, $s2, 1
	slti	$t3, $t2, 32
	bne		$t3, $zero, $third
	addi	$sp, $sp, 8