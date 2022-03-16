
sum：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <__stack_chk_fail@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <__stack_chk_fail@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 4018 <__stack_chk_fail@GLIBC_2.4>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <printf@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    *0x2fda(%rip)        # 4020 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <strtol@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    *0x2fd2(%rip)        # 4028 <strtol@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	49 89 d1             	mov    %rdx,%r9
    1069:	5e                   	pop    %rsi
    106a:	48 89 e2             	mov    %rsp,%rdx
    106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1071:	50                   	push   %rax
    1072:	54                   	push   %rsp
    1073:	45 31 c0             	xor    %r8d,%r8d
    1076:	31 c9                	xor    %ecx,%ecx
    1078:	48 8d 3d ed 00 00 00 	lea    0xed(%rip),%rdi        # 116c <main>
    107f:	ff 15 53 2f 00 00    	call   *0x2f53(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1085:	f4                   	hlt    
    1086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    108d:	00 00 00 

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d a9 2f 00 00 	lea    0x2fa9(%rip),%rdi        # 4040 <__TMC_END__>
    1097:	48 8d 05 a2 2f 00 00 	lea    0x2fa2(%rip),%rax        # 4040 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 36 2f 00 00 	mov    0x2f36(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4040 <__TMC_END__>
    10c7:	48 8d 35 72 2f 00 00 	lea    0x2f72(%rip),%rsi        # 4040 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    %rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 2f 00 00 	mov    0x2f05(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 35 2f 00 00 00 	cmpb   $0x0,0x2f35(%rip)        # 4040 <__TMC_END__>
    110b:	75 33                	jne    1140 <__do_global_dtors_aux+0x40>
    110d:	55                   	push   %rbp
    110e:	48 83 3d e2 2e 00 00 	cmpq   $0x0,0x2ee2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0d                	je     1128 <__do_global_dtors_aux+0x28>
    111b:	48 8b 3d 16 2f 00 00 	mov    0x2f16(%rip),%rdi        # 4038 <__dso_handle>
    1122:	ff 15 d0 2e 00 00    	call   *0x2ed0(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1128:	e8 63 ff ff ff       	call   1090 <deregister_tm_clones>
    112d:	c6 05 0c 2f 00 00 01 	movb   $0x1,0x2f0c(%rip)        # 4040 <__TMC_END__>
    1134:	5d                   	pop    %rbp
    1135:	c3                   	ret    
    1136:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    113d:	00 00 00 
    1140:	c3                   	ret    
    1141:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1148:	00 00 00 00 
    114c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001150 <frame_dummy>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	e9 67 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001159 <plus>:
    1159:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    115d:	c3                   	ret    

000000000000115e <sumstore>:
    115e:	53                   	push   %rbx
    115f:	48 89 d3             	mov    %rdx,%rbx
    1162:	e8 f2 ff ff ff       	call   1159 <plus>
    1167:	48 89 03             	mov    %rax,(%rbx)
    116a:	5b                   	pop    %rbx
    116b:	c3                   	ret    

000000000000116c <main>:
    116c:	55                   	push   %rbp
    116d:	53                   	push   %rbx
    116e:	48 83 ec 18          	sub    $0x18,%rsp
    1172:	48 89 f5             	mov    %rsi,%rbp
    1175:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    117c:	00 00 
    117e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1183:	31 c0                	xor    %eax,%eax
    1185:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1189:	ba 0a 00 00 00       	mov    $0xa,%edx
    118e:	be 00 00 00 00       	mov    $0x0,%esi
    1193:	e8 b8 fe ff ff       	call   1050 <strtol@plt>
    1198:	48 63 d8             	movslq %eax,%rbx
    119b:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
    119f:	ba 0a 00 00 00       	mov    $0xa,%edx
    11a4:	be 00 00 00 00       	mov    $0x0,%esi
    11a9:	e8 a2 fe ff ff       	call   1050 <strtol@plt>
    11ae:	48 63 e8             	movslq %eax,%rbp
    11b1:	48 89 e2             	mov    %rsp,%rdx
    11b4:	48 89 ee             	mov    %rbp,%rsi
    11b7:	48 89 df             	mov    %rbx,%rdi
    11ba:	e8 9f ff ff ff       	call   115e <sumstore>
    11bf:	48 8b 0c 24          	mov    (%rsp),%rcx
    11c3:	48 89 ea             	mov    %rbp,%rdx
    11c6:	48 89 de             	mov    %rbx,%rsi
    11c9:	48 8d 3d 34 0e 00 00 	lea    0xe34(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    11d0:	b8 00 00 00 00       	mov    $0x0,%eax
    11d5:	e8 66 fe ff ff       	call   1040 <printf@plt>
    11da:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    11df:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    11e6:	00 00 
    11e8:	75 0c                	jne    11f6 <main+0x8a>
    11ea:	b8 00 00 00 00       	mov    $0x0,%eax
    11ef:	48 83 c4 18          	add    $0x18,%rsp
    11f3:	5b                   	pop    %rbx
    11f4:	5d                   	pop    %rbp
    11f5:	c3                   	ret    
    11f6:	e8 35 fe ff ff       	call   1030 <__stack_chk_fail@plt>

Disassembly of section .fini:

00000000000011fc <_fini>:
    11fc:	f3 0f 1e fa          	endbr64 
    1200:	48 83 ec 08          	sub    $0x8,%rsp
    1204:	48 83 c4 08          	add    $0x8,%rsp
    1208:	c3                   	ret    
