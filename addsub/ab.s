
ab.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <printf@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <printf@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	31 ed                	xor    %ebp,%ebp
    1052:	49 89 d1             	mov    %rdx,%r9
    1055:	5e                   	pop    %rsi
    1056:	48 89 e2             	mov    %rsp,%rdx
    1059:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    105d:	50                   	push   %rax
    105e:	54                   	push   %rsp
    105f:	4c 8d 05 6a 02 00 00 	lea    0x26a(%rip),%r8        # 12d0 <__libc_csu_fini>
    1066:	48 8d 0d 03 02 00 00 	lea    0x203(%rip),%rcx        # 1270 <__libc_csu_init>
    106d:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1135 <main>
    1074:	ff 15 66 2f 00 00    	callq  *0x2f66(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    107a:	f4                   	hlt    
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d a9 2f 00 00 	lea    0x2fa9(%rip),%rdi        # 4030 <__TMC_END__>
    1087:	48 8d 05 a2 2f 00 00 	lea    0x2fa2(%rip),%rax        # 4030 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 3e 2f 00 00 	mov    0x2f3e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmpq   *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	retq   
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4030 <__TMC_END__>
    10b7:	48 8d 35 72 2f 00 00 	lea    0x2f72(%rip),%rsi        # 4030 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    %rsi
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 15 2f 00 00 	mov    0x2f15(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmpq   *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	retq   
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	80 3d 39 2f 00 00 00 	cmpb   $0x0,0x2f39(%rip)        # 4030 <__TMC_END__>
    10f7:	75 2f                	jne    1128 <__do_global_dtors_aux+0x38>
    10f9:	55                   	push   %rbp
    10fa:	48 83 3d f6 2e 00 00 	cmpq   $0x0,0x2ef6(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1101:	00 
    1102:	48 89 e5             	mov    %rsp,%rbp
    1105:	74 0c                	je     1113 <__do_global_dtors_aux+0x23>
    1107:	48 8b 3d 1a 2f 00 00 	mov    0x2f1a(%rip),%rdi        # 4028 <__dso_handle>
    110e:	e8 2d ff ff ff       	callq  1040 <__cxa_finalize@plt>
    1113:	e8 68 ff ff ff       	callq  1080 <deregister_tm_clones>
    1118:	c6 05 11 2f 00 00 01 	movb   $0x1,0x2f11(%rip)        # 4030 <__TMC_END__>
    111f:	5d                   	pop    %rbp
    1120:	c3                   	retq   
    1121:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1128:	c3                   	retq   
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <frame_dummy>:
    1130:	e9 7b ff ff ff       	jmpq   10b0 <register_tm_clones>

0000000000001135 <main>:
    1135:	55                   	push   %rbp
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	48 83 ec 20          	sub    $0x20,%rsp
    113d:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1140:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1144:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
    1148:	7f 0a                	jg     1154 <main+0x1f>
    114a:	b8 01 00 00 00       	mov    $0x1,%eax
    114f:	e9 19 01 00 00       	jmpq   126d <main+0x138>
    1154:	48 8d 3d a9 0e 00 00 	lea    0xea9(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    115b:	b8 00 00 00 00       	mov    $0x0,%eax
    1160:	e8 cb fe ff ff       	callq  1030 <printf@plt>
    1165:	48 8d 3d af 0e 00 00 	lea    0xeaf(%rip),%rdi        # 201b <_IO_stdin_used+0x1b>
    116c:	b8 00 00 00 00       	mov    $0x0,%eax
    1171:	e8 ba fe ff ff       	callq  1030 <printf@plt>
    1176:	48 8d 3d ab 0e 00 00 	lea    0xeab(%rip),%rdi        # 2028 <_IO_stdin_used+0x28>
    117d:	b8 00 00 00 00       	mov    $0x0,%eax
    1182:	e8 a9 fe ff ff       	callq  1030 <printf@plt>
    1187:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    118b:	48 83 c0 08          	add    $0x8,%rax
    118f:	48 8b 00             	mov    (%rax),%rax
    1192:	0f b6 00             	movzbl (%rax),%eax
    1195:	0f be c0             	movsbl %al,%eax
    1198:	89 c6                	mov    %eax,%esi
    119a:	48 8d 3d 8d 0e 00 00 	lea    0xe8d(%rip),%rdi        # 202e <_IO_stdin_used+0x2e>
    11a1:	b8 00 00 00 00       	mov    $0x0,%eax
    11a6:	e8 85 fe ff ff       	callq  1030 <printf@plt>
    11ab:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    11b2:	e9 82 00 00 00       	jmpq   1239 <main+0x104>
    11b7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    11bb:	48 83 c0 08          	add    $0x8,%rax
    11bf:	48 8b 10             	mov    (%rax),%rdx
    11c2:	8b 45 fc             	mov    -0x4(%rbp),%eax
    11c5:	48 98                	cltq   
    11c7:	48 01 d0             	add    %rdx,%rax
    11ca:	0f b6 00             	movzbl (%rax),%eax
    11cd:	3c 2b                	cmp    $0x2b,%al
    11cf:	75 33                	jne    1204 <main+0xcf>
    11d1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    11d5:	48 83 c0 08          	add    $0x8,%rax
    11d9:	48 8b 00             	mov    (%rax),%rax
    11dc:	8b 55 fc             	mov    -0x4(%rbp),%edx
    11df:	48 63 d2             	movslq %edx,%rdx
    11e2:	48 83 c2 01          	add    $0x1,%rdx
    11e6:	48 01 d0             	add    %rdx,%rax
    11e9:	0f b6 00             	movzbl (%rax),%eax
    11ec:	0f be c0             	movsbl %al,%eax
    11ef:	89 c6                	mov    %eax,%esi
    11f1:	48 8d 3d 43 0e 00 00 	lea    0xe43(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    11f8:	b8 00 00 00 00       	mov    $0x0,%eax
    11fd:	e8 2e fe ff ff       	callq  1030 <printf@plt>
    1202:	eb 31                	jmp    1235 <main+0x100>
    1204:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1208:	48 83 c0 08          	add    $0x8,%rax
    120c:	48 8b 00             	mov    (%rax),%rax
    120f:	8b 55 fc             	mov    -0x4(%rbp),%edx
    1212:	48 63 d2             	movslq %edx,%rdx
    1215:	48 83 c2 01          	add    $0x1,%rdx
    1219:	48 01 d0             	add    %rdx,%rax
    121c:	0f b6 00             	movzbl (%rax),%eax
    121f:	0f be c0             	movsbl %al,%eax
    1222:	89 c6                	mov    %eax,%esi
    1224:	48 8d 3d 1d 0e 00 00 	lea    0xe1d(%rip),%rdi        # 2048 <_IO_stdin_used+0x48>
    122b:	b8 00 00 00 00       	mov    $0x0,%eax
    1230:	e8 fb fd ff ff       	callq  1030 <printf@plt>
    1235:	83 45 fc 02          	addl   $0x2,-0x4(%rbp)
    1239:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    123d:	48 83 c0 08          	add    $0x8,%rax
    1241:	48 8b 10             	mov    (%rax),%rdx
    1244:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1247:	48 98                	cltq   
    1249:	48 01 d0             	add    %rdx,%rax
    124c:	0f b6 00             	movzbl (%rax),%eax
    124f:	84 c0                	test   %al,%al
    1251:	0f 85 60 ff ff ff    	jne    11b7 <main+0x82>
    1257:	48 8d 3d f7 0d 00 00 	lea    0xdf7(%rip),%rdi        # 2055 <_IO_stdin_used+0x55>
    125e:	b8 00 00 00 00       	mov    $0x0,%eax
    1263:	e8 c8 fd ff ff       	callq  1030 <printf@plt>
    1268:	b8 00 00 00 00       	mov    $0x0,%eax
    126d:	c9                   	leaveq 
    126e:	c3                   	retq   
    126f:	90                   	nop

0000000000001270 <__libc_csu_init>:
    1270:	41 57                	push   %r15
    1272:	4c 8d 3d 6f 2b 00 00 	lea    0x2b6f(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    1279:	41 56                	push   %r14
    127b:	49 89 d6             	mov    %rdx,%r14
    127e:	41 55                	push   %r13
    1280:	49 89 f5             	mov    %rsi,%r13
    1283:	41 54                	push   %r12
    1285:	41 89 fc             	mov    %edi,%r12d
    1288:	55                   	push   %rbp
    1289:	48 8d 2d 60 2b 00 00 	lea    0x2b60(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    1290:	53                   	push   %rbx
    1291:	4c 29 fd             	sub    %r15,%rbp
    1294:	48 83 ec 08          	sub    $0x8,%rsp
    1298:	e8 63 fd ff ff       	callq  1000 <_init>
    129d:	48 c1 fd 03          	sar    $0x3,%rbp
    12a1:	74 1b                	je     12be <__libc_csu_init+0x4e>
    12a3:	31 db                	xor    %ebx,%ebx
    12a5:	0f 1f 00             	nopl   (%rax)
    12a8:	4c 89 f2             	mov    %r14,%rdx
    12ab:	4c 89 ee             	mov    %r13,%rsi
    12ae:	44 89 e7             	mov    %r12d,%edi
    12b1:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    12b5:	48 83 c3 01          	add    $0x1,%rbx
    12b9:	48 39 dd             	cmp    %rbx,%rbp
    12bc:	75 ea                	jne    12a8 <__libc_csu_init+0x38>
    12be:	48 83 c4 08          	add    $0x8,%rsp
    12c2:	5b                   	pop    %rbx
    12c3:	5d                   	pop    %rbp
    12c4:	41 5c                	pop    %r12
    12c6:	41 5d                	pop    %r13
    12c8:	41 5e                	pop    %r14
    12ca:	41 5f                	pop    %r15
    12cc:	c3                   	retq   
    12cd:	0f 1f 00             	nopl   (%rax)

00000000000012d0 <__libc_csu_fini>:
    12d0:	c3                   	retq   

Disassembly of section .fini:

00000000000012d4 <_fini>:
    12d4:	48 83 ec 08          	sub    $0x8,%rsp
    12d8:	48 83 c4 08          	add    $0x8,%rsp
    12dc:	c3                   	retq   
