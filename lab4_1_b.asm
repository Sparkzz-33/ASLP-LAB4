main:
	addi	$sp, $sp, -4
	sw		$s0, 0($sp)
	addi	$s0, $zero, -3
	bltz	$s0, $first
	b		$second
$first:
	addi	$v1, $zero, 1
$second:
	addi	$sp, $sp, 4