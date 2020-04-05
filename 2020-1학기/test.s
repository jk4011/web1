
  

.text
fib:
    bgt		$a0, 1, target	# if $t0 > $t1 then target
    move    $v0, $a0
    jr		$ra					# jump to $ra
target:
    sub		$sp, $sp, 12		# $t0 = $t1 - $t2
    sw		$ra, 0($sp)		# 
    
    sw		$a0, 4($sp)		# n
    add		$a0, $a0, -1	# n-1	# $t0 = $t1 + $t2
    jal		fib				# jump to target and save position to $ra
    lw		$a0, 4($sp)		# sw는 저장, lw는 불러오기
    sw		$v0, 8($sp)		# 
    
    add		$a0, $a0, -1	# n-1	# $t0 = $t1 + $t2
    jal		fib				# jump to target and save position to $ra
    
    lw		$t0, 8($sp)		# 
    add		$v0, $t0, $v0	#ret value 	# $v0 = $t1 + $t2

    lw		$ra, 0($sp)	# 
    add		$sp, $sp, $12	#ret value 	# $sp = $t1 + $t2

    jr		$ra					# jump to $ra

    addi	$t0, $t1, 0			# $t0 = $t1 + 0
    
    






















# .text
# .align 2
# .globl main

# .data
# prompt:   .ascii "Enter a non_negative integer: "

# main:
#     la $a0, prompt #
#     li $v0, 4 #
#     syscall #Response #

# move $a0, $v0 #Move i to the $a0

# jal vfib

# add $a0, $v0, $zero
# li $v0, 1






