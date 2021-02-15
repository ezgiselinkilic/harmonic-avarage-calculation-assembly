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
     #print_int sycall code=1
     li $v0,1
     move $a0,$t0  
     syscall
     #print message
     li $v0,4
     la $a0,msg 
     syscall
     #get input
     li $v0,7
     syscall
     #The avarage calculation
     ldc1 $f8,number1
     div.d $f0,$f8,$f0
     add.d $f12,$f12,$f0
     addi  $t0,$t0,1
     bne $t0,$t1,Loop
     

     #print newline
     li $v0,4
     la $a0,newline 
     syscall
     #print message
     li $v0,4
     la $a0,msg1
     syscall
     #print sum
     ldc1 $f2,number2 
     li $v0,3
     div.d $f12,$f2,$f12
     syscall
 Exit:
     li $v0,10
     syscall             
    
