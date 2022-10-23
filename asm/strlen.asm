.text
.globl	strlen

strlen:
	or	$t0, $zero, $a0
test:
	lb	$t1, 0($t0)
	bne	$t1, $zero, test
	addiu	$t0, $t0, 1
	addiu	$t0, $t0, -1
	jr	$ra
	subu	$v0, $t0, $a0
