#as: --64 -mrelax-relocations=yes
#ld: -melf_x86_64
#objdump: -dw
#target: x86_64-*-*
#xfail: *-*-*
# XFAILed because generation of the R_X86_64_REX_GOTPCRELX and R_X86_64_GOTPCRELX relocs is currently suppressed.

.*: +file format .*


Disassembly of section .text:

0+4000c8 <__start>:
 +[a-f0-9]+:	ff 15 2a 00 20 00    	callq  \*0x20002a\(%rip\)        # 6000f8 <.got>
 +[a-f0-9]+:	ff 25 24 00 20 00    	jmpq   \*0x200024\(%rip\)        # 6000f8 <.got>
 +[a-f0-9]+:	48 03 05 1d 00 20 00 	add    0x20001d\(%rip\),%rax        # 6000f8 <.got>
 +[a-f0-9]+:	48 8b 05 16 00 20 00 	mov    0x200016\(%rip\),%rax        # 6000f8 <.got>
 +[a-f0-9]+:	48 85 05 0f 00 20 00 	test   %rax,0x20000f\(%rip\)        # 6000f8 <.got>
 +[a-f0-9]+:	48 c7 c0 f1 00 40 00 	mov    \$0x4000f1,%rax

0+4000f0 <foo>:
 +[a-f0-9]+:	c3                   	retq   

0+4000f1 <bar>:
 +[a-f0-9]+:	c3                   	retq   
#pass
