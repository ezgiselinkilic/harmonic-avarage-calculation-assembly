.data
msg: .asciiz " Enter the number . :"
msg1: .asciiz "Harmonic avarage: "
number1: .double 1.00
number2: .double 10.00
newline : .asciiz "\n"
.text

main: 
     li $t0,1
     li $t1,11
     
Loop:
     ldc1 $f8,number1
     #print_int sycall code=1
     li $v0,1
     move $a0,$t0
     sll $zero $zero 0
     sll $zero $zero 0
     sll $zero $zero 0
     syscall
     #print message
     li $v0,4
     la $a0,msg 
    sll $zero $zero 0
    sll $zero $zero 0
    sll $zero $zero 0
     syscall
     #get input
     li $v0,7
    sll $zero $zero 0
    sll $zero $zero 0
    sll $zero $zero 0
     syscall
    sll $zero $zero 0
    sll $zero $zero 0
      #The avarage calculation
     addi  $t0,$t0,1
     div.d $f0,$f8,$f0
     sll $zero $zero 0
     sll $zero $zero 0
     sll $zero $zero 0
     add.d $f12,$f12,$f0
     bne $t0,$t1,Loop
     sll $zero $zero 0
     sll $zero $zero 0
     
     
    ldc1 $f2,number2 
     #print newline-message
     li $v0,4
     la $a0,newline 
     la $a0,msg1
     sll $zero $zero 0
     sll $zero $zero 0
     sll $zero $zero 0
     syscall
     #print sum
     li $v0,3
     div.d $f12,$f2,$f12
     sll $zero $zero 0
     sll $zero $zero 0
     sll $zero $zero 0
     syscall
 Exit:
     li $v0,10
    sll $zero $zero 0
    sll $zero $zero 0
    sll $zero $zero 0
     syscall             
