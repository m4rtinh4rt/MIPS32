.text
.globl	strcpy

strcpy:
	xor	$t0, $zero, $a0
	j	test
	xor	$t1, $zero, $a1
loop:
	addiu	$t0, $t0, 1
	addiu	$t1, $t1, 1
test:
	lb	$t2, 0($t1)
	bne	$t2, $zero, loop
	sb	$t2, 0($t0)
	jr	$ra
	or	$v0, $zero, $a0 
