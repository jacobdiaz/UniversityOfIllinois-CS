func2:
 0x000055555555466a <+0>: push %rbp
 0x000055555555466b <+1>: mov %rsp,%rbp
 0x000055555555466e <+4>: mov %edi,%eax
 0x0000555555554670 <+6>: mov %al,-0x4(%rbp)
 0x0000555555554673 <+9>: cmpb $0x2f,-0x4(%rbp)
 0x0000555555554677 <+13>: jle 0x0000555555554686 <func2+28>
 0x0000555555554679 <+15>: cmpb $0x39,-0x4(%rbp)
 0x000055555555467d <+19>: jg 0x0000555555554686 <func2+28>
 0x000055555555467f <+21>: mov $0x1,%eax
 0x0000555555554684 <+26>: jmp 0x000055555555468b <func2+33>
 0x0000555555554686 <+28>: mov $0x0,%eax
 0x000055555555468b <+33>: pop %rbp
 0x000055555555468c <+34>: retq

func1:
 0x000055555555468d <+0>: push %rbp
 0x000055555555468e <+1>: mov %rsp,%rbp
 0x0000555555554691 <+4>: sub $0x18,%rsp
 0x0000555555554695 <+8>: mov %rdi,-0x18(%rbp)
 0x0000555555554699 <+12>: movl $0x0,-0x8(%rbp)
 0x00005555555546a0 <+19>: movl $0x0,-0x4(%rbp)
 0x00005555555546a7 <+26>: movl $0x0,-0x4(%rbp)
 0x00005555555546ae <+33>: jmp 0x00005555555546d6 <func1+73>
 0x00005555555546b0 <+35>: mov -0x4(%rbp),%eax
 0x00005555555546b3 <+38>: movslq %eax,%rdx
 0x00005555555546b6 <+41>: mov -0x18(%rbp),%rax
 0x00005555555546ba <+45>: add %rdx,%rax
 0x00005555555546bd <+48>: movzbl (%rax),%eax
 0x00005555555546c0 <+51>: movsbl %al,%eax
 0x00005555555546c3 <+54>: mov %eax,%edi
 0x00005555555546c5 <+56>: callq 0x000055555555466a<func2>
 0x00005555555546ca <+61>: test %eax,%eax
 0x00005555555546cc <+63>: je 0x00005555555546d2 <func1+69>
 0x00005555555546ce <+65>: addl $0x1,-0x8(%rbp)
 0x00005555555546d2 <+69>: addl $0x1,-0x4(%rbp)
 0x00005555555546d6 <+73>: mov -0x4(%rbp),%eax
 0x00005555555546d9 <+76>: movslq %eax,%rdx
 0x00005555555546dc <+79>: mov -0x18(%rbp),%rax
 0x00005555555546e0 <+83>: add %rdx,%rax
 0x00005555555546e3 <+86>: movzbl (%rax),%eax
 0x00005555555546e6 <+89>: test %al,%al
 0x00005555555546e8 <+91>: jne 0x00005555555546b0 <func1+35>
 0x00005555555546ea <+93>: mov -0x8(%rbp),%eax
 0x00005555555546ed <+96>: leaveq
 0x00005555555546ee <+97>: retq

main:
 0x000055555555467f <+0>: push %rbp
 0x0000555555554680 <+1>: mov %rsp,%rbp
 0x0000555555554683 <+4>: sub $0x10,%rsp
 0x0000555555554687 <+8>: movabs $0x356b633072313632,%rax
 0x0000555555554691 <+18>: mov %rax,-0xe(%rbp)
 0x0000555555554695 <+22>: movw $0x21,-0x6(%rbp)
 0x000055555555469b <+28>: lea -0xe(%rbp),%rax
 0x000055555555469f <+32>: mov %rax,%rdi
 0x00005555555546a2 <+35>: callq 0x61d <func1>
 0x00005555555546a7 <+40>: mov %eax,-0x4(%rbp)
 0x00005555555546aa <+43>: mov $0x0,%eax
 0x00005555555546af <+48>: leaveq
 0x00005555555546b0 <+49>: retq