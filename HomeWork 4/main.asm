
global Random
global InF
global InRndF
global OutF
global CountExprF
global GetMonth
global InS
global InRndS
global OutS
global CountExprS
global InT
global InRndT
global OutT
global CountExprT
global In
global InRnd
global Out
global CountExpr
global Init
global InC
global InRndC
global OutC
global swapElement
global Sort
global errMessage1
global errMessage2
global main

extern srand                                            ; near
extern time                                             ; near
extern printf                                           ; near
extern atoi                                             ; near
extern fclose                                           ; near
extern fopen                                            ; near
extern strcmp                                           ; near
extern puts                                             ; near
extern feof                                             ; near
extern strlen                                           ; near
extern tolower                                          ; near
extern fprintf                                          ; near
extern fwrite                                           ; near
extern __isoc99_fscanf                                  ; near
                            ; byte
extern rand                                             ; near


SECTION .text                             ; section number 1, code

Random: ; Function begin
        endbr64                                         ; 0000 _ F3: 0F 1E. FA
        push    rbp                                     ; 0004 _ 55
        mov     rbp, rsp                                ; 0005 _ 48: 89. E5
        mov     eax, 0                                  ; 0008 _ B8, 00000000
        call    rand                                    ; 000D _ E8, 00000000(PLT r)
        movsxd  rdx, eax                                ; 0012 _ 48: 63. D0
        imul    rdx, rdx, 1321528399                    ; 0015 _ 48: 69. D2, 4EC4EC4F
        shr     rdx, 32                                 ; 001C _ 48: C1. EA, 20
        mov     ecx, edx                                ; 0020 _ 89. D1
        sar     ecx, 3                                  ; 0022 _ C1. F9, 03
        cdq                                             ; 0025 _ 99
        sub     ecx, edx                                ; 0026 _ 29. D1
        mov     edx, ecx                                ; 0028 _ 89. CA
        imul    edx, edx, 26                            ; 002A _ 6B. D2, 1A
        sub     eax, edx                                ; 002D _ 29. D0
        mov     edx, eax                                ; 002F _ 89. C2
        mov     eax, edx                                ; 0031 _ 89. D0
        pop     rbp                                     ; 0033 _ 5D
        ret                                             ; 0034 _ C3
; Random End of function

InF:    ; Function begin
        endbr64                                         ; 0035 _ F3: 0F 1E. FA
        push    rbp                                     ; 0039 _ 55
        mov     rbp, rsp                                ; 003A _ 48: 89. E5
        sub     rsp, 32                                 ; 003D _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 0041 _ 48: 89. 7D, E8
        mov     qword [rbp-20H], rsi                    ; 0045 _ 48: 89. 75, E0
        mov     rax, qword [rbp-18H]                    ; 0049 _ 48: 8B. 45, E8
        lea     rcx, [rax+4H]                           ; 004D _ 48: 8D. 48, 04
        lea     rdx, [rbp-4H]                           ; 0051 _ 48: 8D. 55, FC
        mov     rax, qword [rbp-20H]                    ; 0055 _ 48: 8B. 45, E0
        lea     rsi, [rel ?_110]                        ; 0059 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0060 _ 48: 89. C7
        mov     eax, 0                                  ; 0063 _ B8, 00000000
        call    __isoc99_fscanf                         ; 0068 _ E8, 00000000(PLT r)
        mov     eax, dword [rbp-4H]                     ; 006D _ 8B. 45, FC
        cmp     eax, 3                                  ; 0070 _ 83. F8, 03
        jz      ?_003                                   ; 0073 _ 74, 29
        cmp     eax, 3                                  ; 0075 _ 83. F8, 03
        jg      ?_004                                   ; 0078 _ 7F, 30
        cmp     eax, 1                                  ; 007A _ 83. F8, 01
        jz      ?_001                                   ; 007D _ 74, 07
        cmp     eax, 2                                  ; 007F _ 83. F8, 02
        jz      ?_002                                   ; 0082 _ 74, 0E
        jmp     ?_004                                   ; 0084 _ EB, 24

?_001:  mov     rax, qword [rbp-18H]                    ; 0086 _ 48: 8B. 45, E8
        mov     dword [rax], 0                          ; 008A _ C7. 00, 00000000
        jmp     ?_005                                   ; 0090 _ EB, 23

?_002:  mov     rax, qword [rbp-18H]                    ; 0092 _ 48: 8B. 45, E8
        mov     dword [rax], 1                          ; 0096 _ C7. 00, 00000001
        jmp     ?_005                                   ; 009C _ EB, 17

?_003:  mov     rax, qword [rbp-18H]                    ; 009E _ 48: 8B. 45, E8
        mov     dword [rax], 2                          ; 00A2 _ C7. 00, 00000002
        jmp     ?_005                                   ; 00A8 _ EB, 0B

?_004:  mov     rax, qword [rbp-18H]                    ; 00AA _ 48: 8B. 45, E8
        mov     dword [rax], 3                          ; 00AE _ C7. 00, 00000003
        nop                                             ; 00B4 _ 90
?_005:  nop                                             ; 00B5 _ 90
        leave                                           ; 00B6 _ C9
        ret                                             ; 00B7 _ C3
; InF End of function

InRndF: ; Function begin
        endbr64                                         ; 00B8 _ F3: 0F 1E. FA
        push    rbp                                     ; 00BC _ 55
        mov     rbp, rsp                                ; 00BD _ 48: 89. E5
        sub     rsp, 32                                 ; 00C0 _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 00C4 _ 48: 89. 7D, E8
        mov     eax, 0                                  ; 00C8 _ B8, 00000000
        call    Random                                  ; 00CD _ E8, 00000000(PLT r)
        mov     ecx, eax                                ; 00D2 _ 89. C1
        movsxd  rax, ecx                                ; 00D4 _ 48: 63. C1
        imul    rax, rax, 1431655766                    ; 00D7 _ 48: 69. C0, 55555556
        shr     rax, 32                                 ; 00DE _ 48: C1. E8, 20
        mov     rdx, rax                                ; 00E2 _ 48: 89. C2
        mov     eax, ecx                                ; 00E5 _ 89. C8
        sar     eax, 31                                 ; 00E7 _ C1. F8, 1F
        mov     esi, edx                                ; 00EA _ 89. D6
        sub     esi, eax                                ; 00EC _ 29. C6
        mov     eax, esi                                ; 00EE _ 89. F0
        mov     edx, eax                                ; 00F0 _ 89. C2
        add     edx, edx                                ; 00F2 _ 01. D2
        add     edx, eax                                ; 00F4 _ 01. C2
        mov     eax, ecx                                ; 00F6 _ 89. C8
        sub     eax, edx                                ; 00F8 _ 29. D0
        cmp     eax, 2                                  ; 00FA _ 83. F8, 02
        jz      ?_008                                   ; 00FD _ 74, 28
        cmp     eax, 2                                  ; 00FF _ 83. F8, 02
        jg      ?_009                                   ; 0102 _ 7F, 2F
        test    eax, eax                                ; 0104 _ 85. C0
        jz      ?_006                                   ; 0106 _ 74, 07
        cmp     eax, 1                                  ; 0108 _ 83. F8, 01
        jz      ?_007                                   ; 010B _ 74, 0E
        jmp     ?_009                                   ; 010D _ EB, 24

?_006:  mov     rax, qword [rbp-18H]                    ; 010F _ 48: 8B. 45, E8
        mov     dword [rax], 0                          ; 0113 _ C7. 00, 00000000
        jmp     ?_010                                   ; 0119 _ EB, 22

?_007:  mov     rax, qword [rbp-18H]                    ; 011B _ 48: 8B. 45, E8
        mov     dword [rax], 1                          ; 011F _ C7. 00, 00000001
        jmp     ?_010                                   ; 0125 _ EB, 16

?_008:  mov     rax, qword [rbp-18H]                    ; 0127 _ 48: 8B. 45, E8
        mov     dword [rax], 2                          ; 012B _ C7. 00, 00000002
        jmp     ?_010                                   ; 0131 _ EB, 0A

?_009:  mov     rax, qword [rbp-18H]                    ; 0133 _ 48: 8B. 45, E8
        mov     dword [rax], 3                          ; 0137 _ C7. 00, 00000003
?_010:  mov     dword [rbp-4H], 0                       ; 013D _ C7. 45, FC, 00000000
        jmp     ?_012                                   ; 0144 _ EB, 1F

?_011:  mov     eax, 0                                  ; 0146 _ B8, 00000000
        call    Random                                  ; 014B _ E8, 00000000(PLT r)
        add     eax, 97                                 ; 0150 _ 83. C0, 61
        mov     ecx, eax                                ; 0153 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0155 _ 48: 8B. 55, E8
        mov     eax, dword [rbp-4H]                     ; 0159 _ 8B. 45, FC
        cdqe                                            ; 015C _ 48: 98
        mov     byte [rdx+rax+4H], cl                   ; 015E _ 88. 4C 02, 04
        inc     dword [rbp-4H]                          ; 0162 _ FF. 45, FC
?_012:  cmp     dword [rbp-4H], 99                      ; 0165 _ 83. 7D, FC, 63
        jle     ?_011                                   ; 0169 _ 7E, DB
        mov     rax, qword [rbp-18H]                    ; 016B _ 48: 8B. 45, E8
        mov     byte [rax+67H], 0                       ; 016F _ C6. 40, 67, 00
        nop                                             ; 0173 _ 90
        leave                                           ; 0174 _ C9
        ret                                             ; 0175 _ C3
; InRndF End of function

OutF:   ; Function begin
        endbr64                                         ; 0176 _ F3: 0F 1E. FA
        push    rbp                                     ; 017A _ 55
        mov     rbp, rsp                                ; 017B _ 48: 89. E5
        sub     rsp, 16                                 ; 017E _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0182 _ 48: 89. 7D, F8
        mov     rax, qword [rbp-8H]                     ; 0186 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 018A _ 48: 89. C1
        mov     edx, 28                                 ; 018D _ BA, 0000001C
        mov     esi, 1                                  ; 0192 _ BE, 00000001
        lea     rdi, [rel ?_111]                        ; 0197 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 019E _ E8, 00000000(PLT r)
        mov     eax, dword [rbp+10H]                    ; 01A3 _ 8B. 45, 10
        cmp     eax, 3                                  ; 01A6 _ 83. F8, 03
        jz      ?_016                                   ; 01A9 _ 74, 7F
        cmp     eax, 3                                  ; 01AB _ 83. F8, 03
        ja      ?_017                                   ; 01AE _ 0F 87, 00000093
        cmp     eax, 2                                  ; 01B4 _ 83. F8, 02
        jz      ?_015                                   ; 01B7 _ 74, 52
        cmp     eax, 2                                  ; 01B9 _ 83. F8, 02
        ja      ?_017                                   ; 01BC _ 0F 87, 00000085
        test    eax, eax                                ; 01C2 _ 85. C0
        jz      ?_013                                   ; 01C4 _ 74, 07
        cmp     eax, 1                                  ; 01C6 _ 83. F8, 01
        jz      ?_014                                   ; 01C9 _ 74, 21
        jmp     ?_017                                   ; 01CB _ EB, 7A

?_013:  mov     rax, qword [rbp-8H]                     ; 01CD _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 01D1 _ 48: 89. C1
        mov     edx, 8                                  ; 01D4 _ BA, 00000008
        mov     esi, 1                                  ; 01D9 _ BE, 00000001
        lea     rdi, [rel ?_112]                        ; 01DE _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 01E5 _ E8, 00000000(PLT r)
        jmp     ?_017                                   ; 01EA _ EB, 5B

?_014:  mov     rax, qword [rbp-8H]                     ; 01EC _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 01F0 _ 48: 89. C1
        mov     edx, 6                                  ; 01F3 _ BA, 00000006
        mov     esi, 1                                  ; 01F8 _ BE, 00000001
        lea     rdi, [rel ?_113]                        ; 01FD _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 0204 _ E8, 00000000(PLT r)
        jmp     ?_017                                   ; 0209 _ EB, 3C

?_015:  mov     rax, qword [rbp-8H]                     ; 020B _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 020F _ 48: 89. C1
        mov     edx, 4                                  ; 0212 _ BA, 00000004
        mov     esi, 1                                  ; 0217 _ BE, 00000001
        lea     rdi, [rel ?_114]                        ; 021C _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 0223 _ E8, 00000000(PLT r)
        jmp     ?_017                                   ; 0228 _ EB, 1D

?_016:  mov     rax, qword [rbp-8H]                     ; 022A _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 022E _ 48: 89. C1
        mov     edx, 21                                 ; 0231 _ BA, 00000015
        mov     esi, 1                                  ; 0236 _ BE, 00000001
        lea     rdi, [rel ?_115]                        ; 023B _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 0242 _ E8, 00000000(PLT r)
?_017:  sub     rsp, 8                                  ; 0247 _ 48: 83. EC, 08
        push    qword [rbp+70H]                         ; 024B _ FF. 75, 70
        push    qword [rbp+68H]                         ; 024E _ FF. 75, 68
        push    qword [rbp+60H]                         ; 0251 _ FF. 75, 60
        push    qword [rbp+58H]                         ; 0254 _ FF. 75, 58
        push    qword [rbp+50H]                         ; 0257 _ FF. 75, 50
        push    qword [rbp+48H]                         ; 025A _ FF. 75, 48
        push    qword [rbp+40H]                         ; 025D _ FF. 75, 40
        push    qword [rbp+38H]                         ; 0260 _ FF. 75, 38
        push    qword [rbp+30H]                         ; 0263 _ FF. 75, 30
        push    qword [rbp+28H]                         ; 0266 _ FF. 75, 28
        push    qword [rbp+20H]                         ; 0269 _ FF. 75, 20
        push    qword [rbp+18H]                         ; 026C _ FF. 75, 18
        push    qword [rbp+10H]                         ; 026F _ FF. 75, 10
        call    CountExprF                              ; 0272 _ E8, 00000000(PLT r)
        add     rsp, 112                                ; 0277 _ 48: 83. C4, 70
        lea     rdx, [rbp+14H]                          ; 027B _ 48: 8D. 55, 14
        mov     rax, qword [rbp-8H]                     ; 027F _ 48: 8B. 45, F8
        lea     rsi, [rel ?_116]                        ; 0283 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 028A _ 48: 89. C7
        mov     eax, 1                                  ; 028D _ B8, 00000001
        call    fprintf                                 ; 0292 _ E8, 00000000(PLT r)
        nop                                             ; 0297 _ 90
        leave                                           ; 0298 _ C9
        ret                                             ; 0299 _ C3
; OutF End of function

CountExprF:; Function begin
        endbr64                                         ; 029A _ F3: 0F 1E. FA
        push    rbp                                     ; 029E _ 55
        mov     rbp, rsp                                ; 029F _ 48: 89. E5
        sub     rsp, 32                                 ; 02A2 _ 48: 83. EC, 20
        mov     dword [rbp-4H], 0                       ; 02A6 _ C7. 45, FC, 00000000
        mov     dword [rbp-8H], 0                       ; 02AD _ C7. 45, F8, 00000000
        jmp     ?_021                                   ; 02B4 _ EB, 45

?_018:  mov     eax, dword [rbp-8H]                     ; 02B6 _ 8B. 45, F8
        cdqe                                            ; 02B9 _ 48: 98
        movzx   eax, byte [rbp+rax+14H]                 ; 02BB _ 0F B6. 44 05, 14
        mov     byte [rbp-9H], al                       ; 02C0 _ 88. 45, F7
        movsx   eax, byte [rbp-9H]                      ; 02C3 _ 0F BE. 45, F7
        mov     edi, eax                                ; 02C7 _ 89. C7
        call    tolower                                 ; 02C9 _ E8, 00000000(PLT r)
        mov     byte [rbp-0AH], al                      ; 02CE _ 88. 45, F6
        cmp     byte [rbp-0AH], 97                      ; 02D1 _ 80. 7D, F6, 61
        jz      ?_019                                   ; 02D5 _ 74, 1E
        cmp     byte [rbp-0AH], 101                     ; 02D7 _ 80. 7D, F6, 65
        jz      ?_019                                   ; 02DB _ 74, 18
        cmp     byte [rbp-0AH], 105                     ; 02DD _ 80. 7D, F6, 69
        jz      ?_019                                   ; 02E1 _ 74, 12
        cmp     byte [rbp-0AH], 111                     ; 02E3 _ 80. 7D, F6, 6F
        jz      ?_019                                   ; 02E7 _ 74, 0C
        cmp     byte [rbp-0AH], 117                     ; 02E9 _ 80. 7D, F6, 75
        jz      ?_019                                   ; 02ED _ 74, 06
        cmp     byte [rbp-0AH], 121                     ; 02EF _ 80. 7D, F6, 79
        jnz     ?_020                                   ; 02F3 _ 75, 03
?_019:  inc     dword [rbp-4H]                          ; 02F5 _ FF. 45, FC
?_020:  inc     dword [rbp-8H]                          ; 02F8 _ FF. 45, F8
?_021:  cmp     dword [rbp-8H], 99                      ; 02FB _ 83. 7D, F8, 63
        jle     ?_018                                   ; 02FF _ 7E, B5
        vcvtsi2sd xmm1, xmm1, dword [rbp-4H]            ; 0301 _ C5 F3: 2A. 4D, FC
        vmovsd  qword [rbp-18H], xmm1                   ; 0306 _ C5 FB: 11. 4D, E8
        lea     rax, [rbp+14H]                          ; 030B _ 48: 8D. 45, 14
        mov     rdi, rax                                ; 030F _ 48: 89. C7
        call    strlen                                  ; 0312 _ E8, 00000000(PLT r)
        test    rax, rax                                ; 0317 _ 48: 85. C0
        js      ?_022                                   ; 031A _ 78, 07
        vcvtsi2sd xmm0, xmm0, rax                       ; 031C _ C4 E1 FB: 2A. C0
        jmp     ?_023                                   ; 0321 _ EB, 15

?_022:  mov     rdx, rax                                ; 0323 _ 48: 89. C2
        shr     rdx, 1                                  ; 0326 _ 48: D1. EA
        and     eax, 01H                                ; 0329 _ 83. E0, 01
        or      rdx, rax                                ; 032C _ 48: 09. C2
        vcvtsi2sd xmm0, xmm0, rdx                       ; 032F _ C4 E1 FB: 2A. C2
        vaddsd  xmm0, xmm0, xmm0                        ; 0334 _ C5 FB: 58. C0
?_023:  vmovsd  xmm2, qword [rbp-18H]                   ; 0338 _ C5 FB: 10. 55, E8
        vdivsd  xmm0, xmm2, xmm0                        ; 033D _ C5 EB: 5E. C0
        leave                                           ; 0341 _ C9
        ret                                             ; 0342 _ C3
; CountExprF End of function

GetMonth:; Function begin
        endbr64                                         ; 0343 _ F3: 0F 1E. FA
        push    rbp                                     ; 0347 _ 55
        mov     rbp, rsp                                ; 0348 _ 48: 89. E5
        mov     dword [rbp-4H], edi                     ; 034B _ 89. 7D, FC
        cmp     dword [rbp-4H], 12                      ; 034E _ 83. 7D, FC, 0C
        je      ?_035                                   ; 0352 _ 0F 84, 000000F9
        cmp     dword [rbp-4H], 12                      ; 0358 _ 83. 7D, FC, 0C
        jg      ?_036                                   ; 035C _ 0F 8F, 000000F6
        cmp     dword [rbp-4H], 11                      ; 0362 _ 83. 7D, FC, 0B
        je      ?_034                                   ; 0366 _ 0F 84, 000000DE
        cmp     dword [rbp-4H], 11                      ; 036C _ 83. 7D, FC, 0B
        jg      ?_036                                   ; 0370 _ 0F 8F, 000000E2
        cmp     dword [rbp-4H], 10                      ; 0376 _ 83. 7D, FC, 0A
        je      ?_033                                   ; 037A _ 0F 84, 000000C3
        cmp     dword [rbp-4H], 10                      ; 0380 _ 83. 7D, FC, 0A
        jg      ?_036                                   ; 0384 _ 0F 8F, 000000CE
        cmp     dword [rbp-4H], 9                       ; 038A _ 83. 7D, FC, 09
        je      ?_032                                   ; 038E _ 0F 84, 000000A8
        cmp     dword [rbp-4H], 9                       ; 0394 _ 83. 7D, FC, 09
        jg      ?_036                                   ; 0398 _ 0F 8F, 000000BA
        cmp     dword [rbp-4H], 8                       ; 039E _ 83. 7D, FC, 08
        je      ?_031                                   ; 03A2 _ 0F 84, 0000008D
        cmp     dword [rbp-4H], 8                       ; 03A8 _ 83. 7D, FC, 08
        jg      ?_036                                   ; 03AC _ 0F 8F, 000000A6
        cmp     dword [rbp-4H], 7                       ; 03B2 _ 83. 7D, FC, 07
        jz      ?_030                                   ; 03B6 _ 74, 76
        cmp     dword [rbp-4H], 7                       ; 03B8 _ 83. 7D, FC, 07
        jg      ?_036                                   ; 03BC _ 0F 8F, 00000096
        cmp     dword [rbp-4H], 6                       ; 03C2 _ 83. 7D, FC, 06
        jz      ?_029                                   ; 03C6 _ 74, 5F
        cmp     dword [rbp-4H], 6                       ; 03C8 _ 83. 7D, FC, 06
        jg      ?_036                                   ; 03CC _ 0F 8F, 00000086
        cmp     dword [rbp-4H], 5                       ; 03D2 _ 83. 7D, FC, 05
        jz      ?_028                                   ; 03D6 _ 74, 48
        cmp     dword [rbp-4H], 5                       ; 03D8 _ 83. 7D, FC, 05
        jg      ?_036                                   ; 03DC _ 7F, 7A
        cmp     dword [rbp-4H], 4                       ; 03DE _ 83. 7D, FC, 04
        jz      ?_027                                   ; 03E2 _ 74, 35
        cmp     dword [rbp-4H], 4                       ; 03E4 _ 83. 7D, FC, 04
        jg      ?_036                                   ; 03E8 _ 7F, 6E
        cmp     dword [rbp-4H], 3                       ; 03EA _ 83. 7D, FC, 03
        jz      ?_026                                   ; 03EE _ 74, 22
        cmp     dword [rbp-4H], 3                       ; 03F0 _ 83. 7D, FC, 03
        jg      ?_036                                   ; 03F4 _ 7F, 62
        cmp     dword [rbp-4H], 1                       ; 03F6 _ 83. 7D, FC, 01
        jz      ?_024                                   ; 03FA _ 74, 08
        cmp     dword [rbp-4H], 2                       ; 03FC _ 83. 7D, FC, 02
        jz      ?_025                                   ; 0400 _ 74, 09
        jmp     ?_036                                   ; 0402 _ EB, 54

?_024:  mov     eax, 0                                  ; 0404 _ B8, 00000000
        jmp     ?_037                                   ; 0409 _ EB, 52

?_025:  mov     eax, 1                                  ; 040B _ B8, 00000001
        jmp     ?_037                                   ; 0410 _ EB, 4B

?_026:  mov     eax, 2                                  ; 0412 _ B8, 00000002
        jmp     ?_037                                   ; 0417 _ EB, 44

?_027:  mov     eax, 3                                  ; 0419 _ B8, 00000003
        jmp     ?_037                                   ; 041E _ EB, 3D

?_028:  mov     eax, 4                                  ; 0420 _ B8, 00000004
        jmp     ?_037                                   ; 0425 _ EB, 36

?_029:  mov     eax, 5                                  ; 0427 _ B8, 00000005
        jmp     ?_037                                   ; 042C _ EB, 2F

?_030:  mov     eax, 6                                  ; 042E _ B8, 00000006
        jmp     ?_037                                   ; 0433 _ EB, 28

?_031:  mov     eax, 7                                  ; 0435 _ B8, 00000007
        jmp     ?_037                                   ; 043A _ EB, 21

?_032:  mov     eax, 8                                  ; 043C _ B8, 00000008
        jmp     ?_037                                   ; 0441 _ EB, 1A

?_033:  mov     eax, 9                                  ; 0443 _ B8, 00000009
        jmp     ?_037                                   ; 0448 _ EB, 13

?_034:  mov     eax, 10                                 ; 044A _ B8, 0000000A
        jmp     ?_037                                   ; 044F _ EB, 0C

?_035:  mov     eax, 11                                 ; 0451 _ B8, 0000000B
        jmp     ?_037                                   ; 0456 _ EB, 05

?_036:  mov     eax, 12                                 ; 0458 _ B8, 0000000C
?_037:  pop     rbp                                     ; 045D _ 5D
        ret                                             ; 045E _ C3
; GetMonth End of function

InS:    ; Function begin
        endbr64                                         ; 045F _ F3: 0F 1E. FA
        push    rbp                                     ; 0463 _ 55
        mov     rbp, rsp                                ; 0464 _ 48: 89. E5
        sub     rsp, 32                                 ; 0467 _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 046B _ 48: 89. 7D, E8
        mov     qword [rbp-20H], rsi                    ; 046F _ 48: 89. 75, E0
        mov     rax, qword [rbp-18H]                    ; 0473 _ 48: 8B. 45, E8
        lea     rcx, [rax+4H]                           ; 0477 _ 48: 8D. 48, 04
        lea     rdx, [rbp-4H]                           ; 047B _ 48: 8D. 55, FC
        mov     rax, qword [rbp-20H]                    ; 047F _ 48: 8B. 45, E0
        lea     rsi, [rel ?_110]                        ; 0483 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 048A _ 48: 89. C7
        mov     eax, 0                                  ; 048D _ B8, 00000000
        call    __isoc99_fscanf                         ; 0492 _ E8, 00000000(PLT r)
        mov     eax, dword [rbp-4H]                     ; 0497 _ 8B. 45, FC
        mov     edi, eax                                ; 049A _ 89. C7
        call    GetMonth                                ; 049C _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-18H]                    ; 04A1 _ 48: 8B. 55, E8
        mov     dword [rdx], eax                        ; 04A5 _ 89. 02
        nop                                             ; 04A7 _ 90
        leave                                           ; 04A8 _ C9
        ret                                             ; 04A9 _ C3
; InS End of function

InRndS: ; Function begin
        endbr64                                         ; 04AA _ F3: 0F 1E. FA
        push    rbp                                     ; 04AE _ 55
        mov     rbp, rsp                                ; 04AF _ 48: 89. E5
        sub     rsp, 32                                 ; 04B2 _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 04B6 _ 48: 89. 7D, E8
        mov     eax, 0                                  ; 04BA _ B8, 00000000
        call    Random                                  ; 04BF _ E8, 00000000(PLT r)
        mov     ecx, eax                                ; 04C4 _ 89. C1
        movsxd  rax, ecx                                ; 04C6 _ 48: 63. C1
        imul    rax, rax, 715827883                     ; 04C9 _ 48: 69. C0, 2AAAAAAB
        shr     rax, 32                                 ; 04D0 _ 48: C1. E8, 20
        mov     edx, eax                                ; 04D4 _ 89. C2
        sar     edx, 1                                  ; 04D6 _ D1. FA
        mov     eax, ecx                                ; 04D8 _ 89. C8
        sar     eax, 31                                 ; 04DA _ C1. F8, 1F
        sub     edx, eax                                ; 04DD _ 29. C2
        mov     eax, edx                                ; 04DF _ 89. D0
        add     eax, eax                                ; 04E1 _ 01. C0
        add     eax, edx                                ; 04E3 _ 01. D0
        shl     eax, 2                                  ; 04E5 _ C1. E0, 02
        sub     ecx, eax                                ; 04E8 _ 29. C1
        mov     edx, ecx                                ; 04EA _ 89. CA
        lea     eax, [rdx+1H]                           ; 04EC _ 8D. 42, 01
        mov     edi, eax                                ; 04EF _ 89. C7
        call    GetMonth                                ; 04F1 _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-18H]                    ; 04F6 _ 48: 8B. 55, E8
        mov     dword [rdx], eax                        ; 04FA _ 89. 02
        mov     dword [rbp-4H], 0                       ; 04FC _ C7. 45, FC, 00000000
        jmp     ?_039                                   ; 0503 _ EB, 1F

?_038:  mov     eax, 0                                  ; 0505 _ B8, 00000000
        call    Random                                  ; 050A _ E8, 00000000(PLT r)
        add     eax, 97                                 ; 050F _ 83. C0, 61
        mov     ecx, eax                                ; 0512 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0514 _ 48: 8B. 55, E8
        mov     eax, dword [rbp-4H]                     ; 0518 _ 8B. 45, FC
        cdqe                                            ; 051B _ 48: 98
        mov     byte [rdx+rax+4H], cl                   ; 051D _ 88. 4C 02, 04
        inc     dword [rbp-4H]                          ; 0521 _ FF. 45, FC
?_039:  cmp     dword [rbp-4H], 99                      ; 0524 _ 83. 7D, FC, 63
        jle     ?_038                                   ; 0528 _ 7E, DB
        mov     rax, qword [rbp-18H]                    ; 052A _ 48: 8B. 45, E8
        mov     byte [rax+67H], 0                       ; 052E _ C6. 40, 67, 00
        nop                                             ; 0532 _ 90
        leave                                           ; 0533 _ C9
        ret                                             ; 0534 _ C3
; InRndS End of function

OutS:   ; Function begin
        endbr64                                         ; 0535 _ F3: 0F 1E. FA
        push    rbp                                     ; 0539 _ 55
        mov     rbp, rsp                                ; 053A _ 48: 89. E5
        sub     rsp, 16                                 ; 053D _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0541 _ 48: 89. 7D, F8
        mov     rax, qword [rbp-8H]                     ; 0545 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 0549 _ 48: 89. C1
        mov     edx, 32                                 ; 054C _ BA, 00000020
        mov     esi, 1                                  ; 0551 _ BE, 00000001
        lea     rdi, [rel ?_117]                        ; 0556 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 055D _ E8, 00000000(PLT r)
        mov     eax, dword [rbp+10H]                    ; 0562 _ 8B. 45, 10
        cmp     eax, 12                                 ; 0565 _ 83. F8, 0C
        je      ?_052                                   ; 0568 _ 0F 84, 00000253
        cmp     eax, 12                                 ; 056E _ 83. F8, 0C
        ja      ?_053                                   ; 0571 _ 0F 87, 00000267
        cmp     eax, 11                                 ; 0577 _ 83. F8, 0B
        je      ?_051                                   ; 057A _ 0F 84, 00000222
        cmp     eax, 11                                 ; 0580 _ 83. F8, 0B
        ja      ?_053                                   ; 0583 _ 0F 87, 00000255
        cmp     eax, 10                                 ; 0589 _ 83. F8, 0A
        je      ?_050                                   ; 058C _ 0F 84, 000001F1
        cmp     eax, 10                                 ; 0592 _ 83. F8, 0A
        ja      ?_053                                   ; 0595 _ 0F 87, 00000243
        cmp     eax, 9                                  ; 059B _ 83. F8, 09
        je      ?_049                                   ; 059E _ 0F 84, 000001C0
        cmp     eax, 9                                  ; 05A4 _ 83. F8, 09
        ja      ?_053                                   ; 05A7 _ 0F 87, 00000231
        cmp     eax, 8                                  ; 05AD _ 83. F8, 08
        je      ?_048                                   ; 05B0 _ 0F 84, 0000018F
        cmp     eax, 8                                  ; 05B6 _ 83. F8, 08
        ja      ?_053                                   ; 05B9 _ 0F 87, 0000021F
        cmp     eax, 7                                  ; 05BF _ 83. F8, 07
        je      ?_047                                   ; 05C2 _ 0F 84, 0000015B
        cmp     eax, 7                                  ; 05C8 _ 83. F8, 07
        ja      ?_053                                   ; 05CB _ 0F 87, 0000020D
        cmp     eax, 6                                  ; 05D1 _ 83. F8, 06
        je      ?_046                                   ; 05D4 _ 0F 84, 00000127
        cmp     eax, 6                                  ; 05DA _ 83. F8, 06
        ja      ?_053                                   ; 05DD _ 0F 87, 000001FB
        cmp     eax, 5                                  ; 05E3 _ 83. F8, 05
        je      ?_045                                   ; 05E6 _ 0F 84, 000000F3
        cmp     eax, 5                                  ; 05EC _ 83. F8, 05
        ja      ?_053                                   ; 05EF _ 0F 87, 000001E9
        cmp     eax, 4                                  ; 05F5 _ 83. F8, 04
        je      ?_044                                   ; 05F8 _ 0F 84, 000000BF
        cmp     eax, 4                                  ; 05FE _ 83. F8, 04
        ja      ?_053                                   ; 0601 _ 0F 87, 000001D7
        cmp     eax, 3                                  ; 0607 _ 83. F8, 03
        je      ?_043                                   ; 060A _ 0F 84, 0000008B
        cmp     eax, 3                                  ; 0610 _ 83. F8, 03
        ja      ?_053                                   ; 0613 _ 0F 87, 000001C5
        cmp     eax, 2                                  ; 0619 _ 83. F8, 02
        jz      ?_042                                   ; 061C _ 74, 5B
        cmp     eax, 2                                  ; 061E _ 83. F8, 02
        ja      ?_053                                   ; 0621 _ 0F 87, 000001B7
        test    eax, eax                                ; 0627 _ 85. C0
        jz      ?_040                                   ; 0629 _ 74, 0A
        cmp     eax, 1                                  ; 062B _ 83. F8, 01
        jz      ?_041                                   ; 062E _ 74, 27
        jmp     ?_053                                   ; 0630 _ E9, 000001A9

?_040:  mov     rax, qword [rbp-8H]                     ; 0635 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 0639 _ 48: 89. C1
        mov     edx, 7                                  ; 063C _ BA, 00000007
        mov     esi, 1                                  ; 0641 _ BE, 00000001
        lea     rdi, [rel ?_118]                        ; 0646 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 064D _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 0652 _ E9, 00000187

?_041:  mov     rax, qword [rbp-8H]                     ; 0657 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 065B _ 48: 89. C1
        mov     edx, 8                                  ; 065E _ BA, 00000008
        mov     esi, 1                                  ; 0663 _ BE, 00000001
        lea     rdi, [rel ?_119]                        ; 0668 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 066F _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 0674 _ E9, 00000165

?_042:  mov     rax, qword [rbp-8H]                     ; 0679 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 067D _ 48: 89. C1
        mov     edx, 5                                  ; 0680 _ BA, 00000005
        mov     esi, 1                                  ; 0685 _ BE, 00000001
        lea     rdi, [rel ?_120]                        ; 068A _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 0691 _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 0696 _ E9, 00000143

?_043:  mov     rax, qword [rbp-8H]                     ; 069B _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 069F _ 48: 89. C1
        mov     edx, 5                                  ; 06A2 _ BA, 00000005
        mov     esi, 1                                  ; 06A7 _ BE, 00000001
        lea     rdi, [rel ?_121]                        ; 06AC _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 06B3 _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 06B8 _ E9, 00000121

?_044:  mov     rax, qword [rbp-8H]                     ; 06BD _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 06C1 _ 48: 89. C1
        mov     edx, 3                                  ; 06C4 _ BA, 00000003
        mov     esi, 1                                  ; 06C9 _ BE, 00000001
        lea     rdi, [rel ?_122]                        ; 06CE _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 06D5 _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 06DA _ E9, 000000FF

?_045:  mov     rax, qword [rbp-8H]                     ; 06DF _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 06E3 _ 48: 89. C1
        mov     edx, 4                                  ; 06E6 _ BA, 00000004
        mov     esi, 1                                  ; 06EB _ BE, 00000001
        lea     rdi, [rel ?_123]                        ; 06F0 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 06F7 _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 06FC _ E9, 000000DD

?_046:  mov     rax, qword [rbp-8H]                     ; 0701 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 0705 _ 48: 89. C1
        mov     edx, 4                                  ; 0708 _ BA, 00000004
        mov     esi, 1                                  ; 070D _ BE, 00000001
        lea     rdi, [rel ?_124]                        ; 0712 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 0719 _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 071E _ E9, 000000BB

?_047:  mov     rax, qword [rbp-8H]                     ; 0723 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 0727 _ 48: 89. C1
        mov     edx, 6                                  ; 072A _ BA, 00000006
        mov     esi, 1                                  ; 072F _ BE, 00000001
        lea     rdi, [rel ?_125]                        ; 0734 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 073B _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 0740 _ E9, 00000099

?_048:  mov     rax, qword [rbp-8H]                     ; 0745 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 0749 _ 48: 89. C1
        mov     edx, 9                                  ; 074C _ BA, 00000009
        mov     esi, 1                                  ; 0751 _ BE, 00000001
        lea     rdi, [rel ?_126]                        ; 0756 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 075D _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 0762 _ EB, 7A

?_049:  mov     rax, qword [rbp-8H]                     ; 0764 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 0768 _ 48: 89. C1
        mov     edx, 7                                  ; 076B _ BA, 00000007
        mov     esi, 1                                  ; 0770 _ BE, 00000001
        lea     rdi, [rel ?_127]                        ; 0775 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 077C _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 0781 _ EB, 5B

?_050:  mov     rax, qword [rbp-8H]                     ; 0783 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 0787 _ 48: 89. C1
        mov     edx, 8                                  ; 078A _ BA, 00000008
        mov     esi, 1                                  ; 078F _ BE, 00000001
        lea     rdi, [rel ?_128]                        ; 0794 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 079B _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 07A0 _ EB, 3C

?_051:  mov     rax, qword [rbp-8H]                     ; 07A2 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 07A6 _ 48: 89. C1
        mov     edx, 8                                  ; 07A9 _ BA, 00000008
        mov     esi, 1                                  ; 07AE _ BE, 00000001
        lea     rdi, [rel ?_129]                        ; 07B3 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 07BA _ E8, 00000000(PLT r)
        jmp     ?_053                                   ; 07BF _ EB, 1D

?_052:  mov     rax, qword [rbp-8H]                     ; 07C1 _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 07C5 _ 48: 89. C1
        mov     edx, 21                                 ; 07C8 _ BA, 00000015
        mov     esi, 1                                  ; 07CD _ BE, 00000001
        lea     rdi, [rel ?_130]                        ; 07D2 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 07D9 _ E8, 00000000(PLT r)
?_053:  sub     rsp, 8                                  ; 07DE _ 48: 83. EC, 08
        push    qword [rbp+70H]                         ; 07E2 _ FF. 75, 70
        push    qword [rbp+68H]                         ; 07E5 _ FF. 75, 68
        push    qword [rbp+60H]                         ; 07E8 _ FF. 75, 60
        push    qword [rbp+58H]                         ; 07EB _ FF. 75, 58
        push    qword [rbp+50H]                         ; 07EE _ FF. 75, 50
        push    qword [rbp+48H]                         ; 07F1 _ FF. 75, 48
        push    qword [rbp+40H]                         ; 07F4 _ FF. 75, 40
        push    qword [rbp+38H]                         ; 07F7 _ FF. 75, 38
        push    qword [rbp+30H]                         ; 07FA _ FF. 75, 30
        push    qword [rbp+28H]                         ; 07FD _ FF. 75, 28
        push    qword [rbp+20H]                         ; 0800 _ FF. 75, 20
        push    qword [rbp+18H]                         ; 0803 _ FF. 75, 18
        push    qword [rbp+10H]                         ; 0806 _ FF. 75, 10
        call    CountExprS                              ; 0809 _ E8, 00000000(PLT r)
        add     rsp, 112                                ; 080E _ 48: 83. C4, 70
        lea     rdx, [rbp+14H]                          ; 0812 _ 48: 8D. 55, 14
        mov     rax, qword [rbp-8H]                     ; 0816 _ 48: 8B. 45, F8
        lea     rsi, [rel ?_116]                        ; 081A _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0821 _ 48: 89. C7
        mov     eax, 1                                  ; 0824 _ B8, 00000001
        call    fprintf                                 ; 0829 _ E8, 00000000(PLT r)
        nop                                             ; 082E _ 90
        leave                                           ; 082F _ C9
        ret                                             ; 0830 _ C3
; OutS End of function

CountExprS:; Function begin
        endbr64                                         ; 0831 _ F3: 0F 1E. FA
        push    rbp                                     ; 0835 _ 55
        mov     rbp, rsp                                ; 0836 _ 48: 89. E5
        sub     rsp, 32                                 ; 0839 _ 48: 83. EC, 20
        mov     dword [rbp-4H], 0                       ; 083D _ C7. 45, FC, 00000000
        mov     dword [rbp-8H], 0                       ; 0844 _ C7. 45, F8, 00000000
        jmp     ?_057                                   ; 084B _ EB, 45

?_054:  mov     eax, dword [rbp-8H]                     ; 084D _ 8B. 45, F8
        cdqe                                            ; 0850 _ 48: 98
        movzx   eax, byte [rbp+rax+14H]                 ; 0852 _ 0F B6. 44 05, 14
        mov     byte [rbp-9H], al                       ; 0857 _ 88. 45, F7
        movsx   eax, byte [rbp-9H]                      ; 085A _ 0F BE. 45, F7
        mov     edi, eax                                ; 085E _ 89. C7
        call    tolower                                 ; 0860 _ E8, 00000000(PLT r)
        mov     byte [rbp-0AH], al                      ; 0865 _ 88. 45, F6
        cmp     byte [rbp-0AH], 97                      ; 0868 _ 80. 7D, F6, 61
        jz      ?_055                                   ; 086C _ 74, 1E
        cmp     byte [rbp-0AH], 101                     ; 086E _ 80. 7D, F6, 65
        jz      ?_055                                   ; 0872 _ 74, 18
        cmp     byte [rbp-0AH], 105                     ; 0874 _ 80. 7D, F6, 69
        jz      ?_055                                   ; 0878 _ 74, 12
        cmp     byte [rbp-0AH], 111                     ; 087A _ 80. 7D, F6, 6F
        jz      ?_055                                   ; 087E _ 74, 0C
        cmp     byte [rbp-0AH], 117                     ; 0880 _ 80. 7D, F6, 75
        jz      ?_055                                   ; 0884 _ 74, 06
        cmp     byte [rbp-0AH], 121                     ; 0886 _ 80. 7D, F6, 79
        jnz     ?_056                                   ; 088A _ 75, 03
?_055:  inc     dword [rbp-4H]                          ; 088C _ FF. 45, FC
?_056:  inc     dword [rbp-8H]                          ; 088F _ FF. 45, F8
?_057:  cmp     dword [rbp-8H], 99                      ; 0892 _ 83. 7D, F8, 63
        jle     ?_054                                   ; 0896 _ 7E, B5
        vcvtsi2sd xmm1, xmm1, dword [rbp-4H]            ; 0898 _ C5 F3: 2A. 4D, FC
        vmovsd  qword [rbp-18H], xmm1                   ; 089D _ C5 FB: 11. 4D, E8
        lea     rax, [rbp+14H]                          ; 08A2 _ 48: 8D. 45, 14
        mov     rdi, rax                                ; 08A6 _ 48: 89. C7
        call    strlen                                  ; 08A9 _ E8, 00000000(PLT r)
        test    rax, rax                                ; 08AE _ 48: 85. C0
        js      ?_058                                   ; 08B1 _ 78, 07
        vcvtsi2sd xmm0, xmm0, rax                       ; 08B3 _ C4 E1 FB: 2A. C0
        jmp     ?_059                                   ; 08B8 _ EB, 15

?_058:  mov     rdx, rax                                ; 08BA _ 48: 89. C2
        shr     rdx, 1                                  ; 08BD _ 48: D1. EA
        and     eax, 01H                                ; 08C0 _ 83. E0, 01
        or      rdx, rax                                ; 08C3 _ 48: 09. C2
        vcvtsi2sd xmm0, xmm0, rdx                       ; 08C6 _ C4 E1 FB: 2A. C2
        vaddsd  xmm0, xmm0, xmm0                        ; 08CB _ C5 FB: 58. C0
?_059:  vmovsd  xmm2, qword [rbp-18H]                   ; 08CF _ C5 FB: 10. 55, E8
        vdivsd  xmm0, xmm2, xmm0                        ; 08D4 _ C5 EB: 5E. C0
        leave                                           ; 08D8 _ C9
        ret                                             ; 08D9 _ C3
; CountExprS End of function

InT:    ; Function begin
        endbr64                                         ; 08DA _ F3: 0F 1E. FA
        push    rbp                                     ; 08DE _ 55
        mov     rbp, rsp                                ; 08DF _ 48: 89. E5
        sub     rsp, 16                                 ; 08E2 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 08E6 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 08EA _ 48: 89. 75, F0
        mov     rax, qword [rbp-8H]                     ; 08EE _ 48: 8B. 45, F8
        lea     rcx, [rax+8H]                           ; 08F2 _ 48: 8D. 48, 08
        mov     rdx, qword [rbp-8H]                     ; 08F6 _ 48: 8B. 55, F8
        mov     rax, qword [rbp-10H]                    ; 08FA _ 48: 8B. 45, F0
        lea     rsi, [rel ?_131]                        ; 08FE _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0905 _ 48: 89. C7
        mov     eax, 0                                  ; 0908 _ B8, 00000000
        call    __isoc99_fscanf                         ; 090D _ E8, 00000000(PLT r)
        nop                                             ; 0912 _ 90
        leave                                           ; 0913 _ C9
        ret                                             ; 0914 _ C3
; InT End of function

InRndT: ; Function begin
        endbr64                                         ; 0915 _ F3: 0F 1E. FA
        push    rbp                                     ; 0919 _ 55
        mov     rbp, rsp                                ; 091A _ 48: 89. E5
        sub     rsp, 32                                 ; 091D _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 0921 _ 48: 89. 7D, E8
        mov     eax, 0                                  ; 0925 _ B8, 00000000
        call    Random                                  ; 092A _ E8, 00000000(PLT r)
        movsxd  rdx, eax                                ; 092F _ 48: 63. D0
        mov     rax, qword [rbp-18H]                    ; 0932 _ 48: 8B. 45, E8
        mov     qword [rax], rdx                        ; 0936 _ 48: 89. 10
        mov     dword [rbp-4H], 0                       ; 0939 _ C7. 45, FC, 00000000
        jmp     ?_061                                   ; 0940 _ EB, 1F

?_060:  mov     eax, 0                                  ; 0942 _ B8, 00000000
        call    Random                                  ; 0947 _ E8, 00000000(PLT r)
        add     eax, 97                                 ; 094C _ 83. C0, 61
        mov     ecx, eax                                ; 094F _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0951 _ 48: 8B. 55, E8
        mov     eax, dword [rbp-4H]                     ; 0955 _ 8B. 45, FC
        cdqe                                            ; 0958 _ 48: 98
        mov     byte [rdx+rax+8H], cl                   ; 095A _ 88. 4C 02, 08
        inc     dword [rbp-4H]                          ; 095E _ FF. 45, FC
?_061:  cmp     dword [rbp-4H], 99                      ; 0961 _ 83. 7D, FC, 63
        jle     ?_060                                   ; 0965 _ 7E, DB
        mov     rax, qword [rbp-18H]                    ; 0967 _ 48: 8B. 45, E8
        mov     byte [rax+6BH], 0                       ; 096B _ C6. 40, 6B, 00
        nop                                             ; 096F _ 90
        leave                                           ; 0970 _ C9
        ret                                             ; 0971 _ C3
; InRndT End of function

OutT:   ; Function begin
        endbr64                                         ; 0972 _ F3: 0F 1E. FA
        push    rbp                                     ; 0976 _ 55
        mov     rbp, rsp                                ; 0977 _ 48: 89. E5
        sub     rsp, 16                                 ; 097A _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 097E _ 48: 89. 7D, F8
        push    qword [rbp+78H]                         ; 0982 _ FF. 75, 78
        push    qword [rbp+70H]                         ; 0985 _ FF. 75, 70
        push    qword [rbp+68H]                         ; 0988 _ FF. 75, 68
        push    qword [rbp+60H]                         ; 098B _ FF. 75, 60
        push    qword [rbp+58H]                         ; 098E _ FF. 75, 58
        push    qword [rbp+50H]                         ; 0991 _ FF. 75, 50
        push    qword [rbp+48H]                         ; 0994 _ FF. 75, 48
        push    qword [rbp+40H]                         ; 0997 _ FF. 75, 40
        push    qword [rbp+38H]                         ; 099A _ FF. 75, 38
        push    qword [rbp+30H]                         ; 099D _ FF. 75, 30
        push    qword [rbp+28H]                         ; 09A0 _ FF. 75, 28
        push    qword [rbp+20H]                         ; 09A3 _ FF. 75, 20
        push    qword [rbp+18H]                         ; 09A6 _ FF. 75, 18
        push    qword [rbp+10H]                         ; 09A9 _ FF. 75, 10
        call    CountExprT                              ; 09AC _ E8, 00000000(PLT r)
        add     rsp, 112                                ; 09B1 _ 48: 83. C4, 70
        mov     rdx, qword [rbp+10H]                    ; 09B5 _ 48: 8B. 55, 10
        lea     rcx, [rbp+18H]                          ; 09B9 _ 48: 8D. 4D, 18
        mov     rax, qword [rbp-8H]                     ; 09BD _ 48: 8B. 45, F8
        lea     rsi, [rel ?_132]                        ; 09C1 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 09C8 _ 48: 89. C7
        mov     eax, 1                                  ; 09CB _ B8, 00000001
        call    fprintf                                 ; 09D0 _ E8, 00000000(PLT r)
        nop                                             ; 09D5 _ 90
        leave                                           ; 09D6 _ C9
        ret                                             ; 09D7 _ C3
; OutT End of function

CountExprT:; Function begin
        endbr64                                         ; 09D8 _ F3: 0F 1E. FA
        push    rbp                                     ; 09DC _ 55
        mov     rbp, rsp                                ; 09DD _ 48: 89. E5
        sub     rsp, 32                                 ; 09E0 _ 48: 83. EC, 20
        mov     dword [rbp-4H], 0                       ; 09E4 _ C7. 45, FC, 00000000
        mov     dword [rbp-8H], 0                       ; 09EB _ C7. 45, F8, 00000000
        jmp     ?_065                                   ; 09F2 _ EB, 45

?_062:  mov     eax, dword [rbp-8H]                     ; 09F4 _ 8B. 45, F8
        cdqe                                            ; 09F7 _ 48: 98
        movzx   eax, byte [rbp+rax+18H]                 ; 09F9 _ 0F B6. 44 05, 18
        mov     byte [rbp-9H], al                       ; 09FE _ 88. 45, F7
        movsx   eax, byte [rbp-9H]                      ; 0A01 _ 0F BE. 45, F7
        mov     edi, eax                                ; 0A05 _ 89. C7
        call    tolower                                 ; 0A07 _ E8, 00000000(PLT r)
        mov     byte [rbp-0AH], al                      ; 0A0C _ 88. 45, F6
        cmp     byte [rbp-0AH], 97                      ; 0A0F _ 80. 7D, F6, 61
        jz      ?_063                                   ; 0A13 _ 74, 1E
        cmp     byte [rbp-0AH], 101                     ; 0A15 _ 80. 7D, F6, 65
        jz      ?_063                                   ; 0A19 _ 74, 18
        cmp     byte [rbp-0AH], 105                     ; 0A1B _ 80. 7D, F6, 69
        jz      ?_063                                   ; 0A1F _ 74, 12
        cmp     byte [rbp-0AH], 111                     ; 0A21 _ 80. 7D, F6, 6F
        jz      ?_063                                   ; 0A25 _ 74, 0C
        cmp     byte [rbp-0AH], 117                     ; 0A27 _ 80. 7D, F6, 75
        jz      ?_063                                   ; 0A2B _ 74, 06
        cmp     byte [rbp-0AH], 121                     ; 0A2D _ 80. 7D, F6, 79
        jnz     ?_064                                   ; 0A31 _ 75, 03
?_063:  inc     dword [rbp-4H]                          ; 0A33 _ FF. 45, FC
?_064:  inc     dword [rbp-8H]                          ; 0A36 _ FF. 45, F8
?_065:  cmp     dword [rbp-8H], 99                      ; 0A39 _ 83. 7D, F8, 63
        jle     ?_062                                   ; 0A3D _ 7E, B5
        vcvtsi2sd xmm1, xmm1, dword [rbp-4H]            ; 0A3F _ C5 F3: 2A. 4D, FC
        vmovsd  qword [rbp-18H], xmm1                   ; 0A44 _ C5 FB: 11. 4D, E8
        lea     rax, [rbp+18H]                          ; 0A49 _ 48: 8D. 45, 18
        mov     rdi, rax                                ; 0A4D _ 48: 89. C7
        call    strlen                                  ; 0A50 _ E8, 00000000(PLT r)
        test    rax, rax                                ; 0A55 _ 48: 85. C0
        js      ?_066                                   ; 0A58 _ 78, 07
        vcvtsi2sd xmm0, xmm0, rax                       ; 0A5A _ C4 E1 FB: 2A. C0
        jmp     ?_067                                   ; 0A5F _ EB, 15

?_066:  mov     rdx, rax                                ; 0A61 _ 48: 89. C2
        shr     rdx, 1                                  ; 0A64 _ 48: D1. EA
        and     eax, 01H                                ; 0A67 _ 83. E0, 01
        or      rdx, rax                                ; 0A6A _ 48: 09. C2
        vcvtsi2sd xmm0, xmm0, rdx                       ; 0A6D _ C4 E1 FB: 2A. C2
        vaddsd  xmm0, xmm0, xmm0                        ; 0A72 _ C5 FB: 58. C0
?_067:  vmovsd  xmm2, qword [rbp-18H]                   ; 0A76 _ C5 FB: 10. 55, E8
        vdivsd  xmm0, xmm2, xmm0                        ; 0A7B _ C5 EB: 5E. C0
        leave                                           ; 0A7F _ C9
        ret                                             ; 0A80 _ C3
; CountExprT End of function

In:     ; Function begin
        endbr64                                         ; 0A81 _ F3: 0F 1E. FA
        push    rbp                                     ; 0A85 _ 55
        mov     rbp, rsp                                ; 0A86 _ 48: 89. E5
        push    rbx                                     ; 0A89 _ 53
        sub     rsp, 264                                ; 0A8A _ 48: 81. EC, 00000108
        mov     qword [rbp-108H], rdi                   ; 0A91 _ 48: 89. BD, FFFFFEF8
        mov     qword [rbp-110H], rsi                   ; 0A98 _ 48: 89. B5, FFFFFEF0
        lea     rdx, [rbp-94H]                          ; 0A9F _ 48: 8D. 95, FFFFFF6C
        mov     rax, qword [rbp-110H]                   ; 0AA6 _ 48: 8B. 85, FFFFFEF0
        lea     rsi, [rel ?_133]                        ; 0AAD _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0AB4 _ 48: 89. C7
        mov     eax, 0                                  ; 0AB7 _ B8, 00000000
        call    __isoc99_fscanf                         ; 0ABC _ E8, 00000000(PLT r)
        mov     eax, dword [rbp-94H]                    ; 0AC1 _ 8B. 85, FFFFFF6C
        cmp     eax, 3                                  ; 0AC7 _ 83. F8, 03
        je      ?_070                                   ; 0ACA _ 0F 84, 0000017C
        cmp     eax, 3                                  ; 0AD0 _ 83. F8, 03
        jg      ?_071                                   ; 0AD3 _ 0F 8F, 00000223
        cmp     eax, 1                                  ; 0AD9 _ 83. F8, 01
        jz      ?_068                                   ; 0ADC _ 74, 0E
        cmp     eax, 2                                  ; 0ADE _ 83. F8, 02
        je      ?_069                                   ; 0AE1 _ 0F 84, 000000B5
        jmp     ?_071                                   ; 0AE7 _ E9, 00000210

?_068:  mov     dword [rbp-90H], 0                      ; 0AEC _ C7. 85, FFFFFF70, 00000000
        mov     rax, qword [rbp-110H]                   ; 0AF6 _ 48: 8B. 85, FFFFFEF0
        lea     rdx, [rbp-90H]                          ; 0AFD _ 48: 8D. 95, FFFFFF70
        add     rdx, 8                                  ; 0B04 _ 48: 83. C2, 08
        mov     rsi, rax                                ; 0B08 _ 48: 89. C6
        mov     rdi, rdx                                ; 0B0B _ 48: 89. D7
        call    InT                                     ; 0B0E _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-108H]                   ; 0B13 _ 48: 8B. 85, FFFFFEF8
        mov     rcx, qword [rbp-90H]                    ; 0B1A _ 48: 8B. 8D, FFFFFF70
        mov     rbx, qword [rbp-88H]                    ; 0B21 _ 48: 8B. 9D, FFFFFF78
        mov     qword [rax], rcx                        ; 0B28 _ 48: 89. 08
        mov     qword [rax+8H], rbx                     ; 0B2B _ 48: 89. 58, 08
        mov     rcx, qword [rbp-80H]                    ; 0B2F _ 48: 8B. 4D, 80
        mov     rbx, qword [rbp-78H]                    ; 0B33 _ 48: 8B. 5D, 88
        mov     qword [rax+10H], rcx                    ; 0B37 _ 48: 89. 48, 10
        mov     qword [rax+18H], rbx                    ; 0B3B _ 48: 89. 58, 18
        mov     rcx, qword [rbp-70H]                    ; 0B3F _ 48: 8B. 4D, 90
        mov     rbx, qword [rbp-68H]                    ; 0B43 _ 48: 8B. 5D, 98
        mov     qword [rax+20H], rcx                    ; 0B47 _ 48: 89. 48, 20
        mov     qword [rax+28H], rbx                    ; 0B4B _ 48: 89. 58, 28
        mov     rcx, qword [rbp-60H]                    ; 0B4F _ 48: 8B. 4D, A0
        mov     rbx, qword [rbp-58H]                    ; 0B53 _ 48: 8B. 5D, A8
        mov     qword [rax+30H], rcx                    ; 0B57 _ 48: 89. 48, 30
        mov     qword [rax+38H], rbx                    ; 0B5B _ 48: 89. 58, 38
        mov     rcx, qword [rbp-50H]                    ; 0B5F _ 48: 8B. 4D, B0
        mov     rbx, qword [rbp-48H]                    ; 0B63 _ 48: 8B. 5D, B8
        mov     qword [rax+40H], rcx                    ; 0B67 _ 48: 89. 48, 40
        mov     qword [rax+48H], rbx                    ; 0B6B _ 48: 89. 58, 48
        mov     rcx, qword [rbp-40H]                    ; 0B6F _ 48: 8B. 4D, C0
        mov     rbx, qword [rbp-38H]                    ; 0B73 _ 48: 8B. 5D, C8
        mov     qword [rax+50H], rcx                    ; 0B77 _ 48: 89. 48, 50
        mov     qword [rax+58H], rbx                    ; 0B7B _ 48: 89. 58, 58
        mov     rcx, qword [rbp-30H]                    ; 0B7F _ 48: 8B. 4D, D0
        mov     rbx, qword [rbp-28H]                    ; 0B83 _ 48: 8B. 5D, D8
        mov     qword [rax+60H], rcx                    ; 0B87 _ 48: 89. 48, 60
        mov     qword [rax+68H], rbx                    ; 0B8B _ 48: 89. 58, 68
        mov     rdx, qword [rbp-20H]                    ; 0B8F _ 48: 8B. 55, E0
        mov     qword [rax+70H], rdx                    ; 0B93 _ 48: 89. 50, 70
        jmp     ?_072                                   ; 0B97 _ E9, 00000217

?_069:  mov     dword [rbp-90H], 1                      ; 0B9C _ C7. 85, FFFFFF70, 00000001
        mov     rax, qword [rbp-110H]                   ; 0BA6 _ 48: 8B. 85, FFFFFEF0
        lea     rdx, [rbp-90H]                          ; 0BAD _ 48: 8D. 95, FFFFFF70
        add     rdx, 8                                  ; 0BB4 _ 48: 83. C2, 08
        mov     rsi, rax                                ; 0BB8 _ 48: 89. C6
        mov     rdi, rdx                                ; 0BBB _ 48: 89. D7
        call    InS                                     ; 0BBE _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-108H]                   ; 0BC3 _ 48: 8B. 85, FFFFFEF8
        mov     rcx, qword [rbp-90H]                    ; 0BCA _ 48: 8B. 8D, FFFFFF70
        mov     rbx, qword [rbp-88H]                    ; 0BD1 _ 48: 8B. 9D, FFFFFF78
        mov     qword [rax], rcx                        ; 0BD8 _ 48: 89. 08
        mov     qword [rax+8H], rbx                     ; 0BDB _ 48: 89. 58, 08
        mov     rcx, qword [rbp-80H]                    ; 0BDF _ 48: 8B. 4D, 80
        mov     rbx, qword [rbp-78H]                    ; 0BE3 _ 48: 8B. 5D, 88
        mov     qword [rax+10H], rcx                    ; 0BE7 _ 48: 89. 48, 10
        mov     qword [rax+18H], rbx                    ; 0BEB _ 48: 89. 58, 18
        mov     rcx, qword [rbp-70H]                    ; 0BEF _ 48: 8B. 4D, 90
        mov     rbx, qword [rbp-68H]                    ; 0BF3 _ 48: 8B. 5D, 98
        mov     qword [rax+20H], rcx                    ; 0BF7 _ 48: 89. 48, 20
        mov     qword [rax+28H], rbx                    ; 0BFB _ 48: 89. 58, 28
        mov     rcx, qword [rbp-60H]                    ; 0BFF _ 48: 8B. 4D, A0
        mov     rbx, qword [rbp-58H]                    ; 0C03 _ 48: 8B. 5D, A8
        mov     qword [rax+30H], rcx                    ; 0C07 _ 48: 89. 48, 30
        mov     qword [rax+38H], rbx                    ; 0C0B _ 48: 89. 58, 38
        mov     rcx, qword [rbp-50H]                    ; 0C0F _ 48: 8B. 4D, B0
        mov     rbx, qword [rbp-48H]                    ; 0C13 _ 48: 8B. 5D, B8
        mov     qword [rax+40H], rcx                    ; 0C17 _ 48: 89. 48, 40
        mov     qword [rax+48H], rbx                    ; 0C1B _ 48: 89. 58, 48
        mov     rcx, qword [rbp-40H]                    ; 0C1F _ 48: 8B. 4D, C0
        mov     rbx, qword [rbp-38H]                    ; 0C23 _ 48: 8B. 5D, C8
        mov     qword [rax+50H], rcx                    ; 0C27 _ 48: 89. 48, 50
        mov     qword [rax+58H], rbx                    ; 0C2B _ 48: 89. 58, 58
        mov     rcx, qword [rbp-30H]                    ; 0C2F _ 48: 8B. 4D, D0
        mov     rbx, qword [rbp-28H]                    ; 0C33 _ 48: 8B. 5D, D8
        mov     qword [rax+60H], rcx                    ; 0C37 _ 48: 89. 48, 60
        mov     qword [rax+68H], rbx                    ; 0C3B _ 48: 89. 58, 68
        mov     rdx, qword [rbp-20H]                    ; 0C3F _ 48: 8B. 55, E0
        mov     qword [rax+70H], rdx                    ; 0C43 _ 48: 89. 50, 70
        jmp     ?_072                                   ; 0C47 _ E9, 00000167

?_070:  mov     dword [rbp-90H], 2                      ; 0C4C _ C7. 85, FFFFFF70, 00000002
        mov     rax, qword [rbp-110H]                   ; 0C56 _ 48: 8B. 85, FFFFFEF0
        lea     rdx, [rbp-90H]                          ; 0C5D _ 48: 8D. 95, FFFFFF70
        add     rdx, 8                                  ; 0C64 _ 48: 83. C2, 08
        mov     rsi, rax                                ; 0C68 _ 48: 89. C6
        mov     rdi, rdx                                ; 0C6B _ 48: 89. D7
        call    InF                                     ; 0C6E _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-108H]                   ; 0C73 _ 48: 8B. 85, FFFFFEF8
        mov     rcx, qword [rbp-90H]                    ; 0C7A _ 48: 8B. 8D, FFFFFF70
        mov     rbx, qword [rbp-88H]                    ; 0C81 _ 48: 8B. 9D, FFFFFF78
        mov     qword [rax], rcx                        ; 0C88 _ 48: 89. 08
        mov     qword [rax+8H], rbx                     ; 0C8B _ 48: 89. 58, 08
        mov     rcx, qword [rbp-80H]                    ; 0C8F _ 48: 8B. 4D, 80
        mov     rbx, qword [rbp-78H]                    ; 0C93 _ 48: 8B. 5D, 88
        mov     qword [rax+10H], rcx                    ; 0C97 _ 48: 89. 48, 10
        mov     qword [rax+18H], rbx                    ; 0C9B _ 48: 89. 58, 18
        mov     rcx, qword [rbp-70H]                    ; 0C9F _ 48: 8B. 4D, 90
        mov     rbx, qword [rbp-68H]                    ; 0CA3 _ 48: 8B. 5D, 98
        mov     qword [rax+20H], rcx                    ; 0CA7 _ 48: 89. 48, 20
        mov     qword [rax+28H], rbx                    ; 0CAB _ 48: 89. 58, 28
        mov     rcx, qword [rbp-60H]                    ; 0CAF _ 48: 8B. 4D, A0
        mov     rbx, qword [rbp-58H]                    ; 0CB3 _ 48: 8B. 5D, A8
        mov     qword [rax+30H], rcx                    ; 0CB7 _ 48: 89. 48, 30
        mov     qword [rax+38H], rbx                    ; 0CBB _ 48: 89. 58, 38
        mov     rcx, qword [rbp-50H]                    ; 0CBF _ 48: 8B. 4D, B0
        mov     rbx, qword [rbp-48H]                    ; 0CC3 _ 48: 8B. 5D, B8
        mov     qword [rax+40H], rcx                    ; 0CC7 _ 48: 89. 48, 40
        mov     qword [rax+48H], rbx                    ; 0CCB _ 48: 89. 58, 48
        mov     rcx, qword [rbp-40H]                    ; 0CCF _ 48: 8B. 4D, C0
        mov     rbx, qword [rbp-38H]                    ; 0CD3 _ 48: 8B. 5D, C8
        mov     qword [rax+50H], rcx                    ; 0CD7 _ 48: 89. 48, 50
        mov     qword [rax+58H], rbx                    ; 0CDB _ 48: 89. 58, 58
        mov     rcx, qword [rbp-30H]                    ; 0CDF _ 48: 8B. 4D, D0
        mov     rbx, qword [rbp-28H]                    ; 0CE3 _ 48: 8B. 5D, D8
        mov     qword [rax+60H], rcx                    ; 0CE7 _ 48: 89. 48, 60
        mov     qword [rax+68H], rbx                    ; 0CEB _ 48: 89. 58, 68
        mov     rdx, qword [rbp-20H]                    ; 0CEF _ 48: 8B. 55, E0
        mov     qword [rax+70H], rdx                    ; 0CF3 _ 48: 89. 50, 70
        jmp     ?_072                                   ; 0CF7 _ E9, 000000B7

?_071:  mov     dword [rbp-90H], 3                      ; 0CFC _ C7. 85, FFFFFF70, 00000003
        lea     rcx, [rbp-100H]                         ; 0D06 _ 48: 8D. 8D, FFFFFF00
        lea     rdx, [rbp-100H]                         ; 0D0D _ 48: 8D. 95, FFFFFF00
        mov     rax, qword [rbp-110H]                   ; 0D14 _ 48: 8B. 85, FFFFFEF0
        lea     rsi, [rel ?_134]                        ; 0D1B _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0D22 _ 48: 89. C7
        mov     eax, 0                                  ; 0D25 _ B8, 00000000
        call    __isoc99_fscanf                         ; 0D2A _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-108H]                   ; 0D2F _ 48: 8B. 85, FFFFFEF8
        mov     rcx, qword [rbp-90H]                    ; 0D36 _ 48: 8B. 8D, FFFFFF70
        mov     rbx, qword [rbp-88H]                    ; 0D3D _ 48: 8B. 9D, FFFFFF78
        mov     qword [rax], rcx                        ; 0D44 _ 48: 89. 08
        mov     qword [rax+8H], rbx                     ; 0D47 _ 48: 89. 58, 08
        mov     rcx, qword [rbp-80H]                    ; 0D4B _ 48: 8B. 4D, 80
        mov     rbx, qword [rbp-78H]                    ; 0D4F _ 48: 8B. 5D, 88
        mov     qword [rax+10H], rcx                    ; 0D53 _ 48: 89. 48, 10
        mov     qword [rax+18H], rbx                    ; 0D57 _ 48: 89. 58, 18
        mov     rcx, qword [rbp-70H]                    ; 0D5B _ 48: 8B. 4D, 90
        mov     rbx, qword [rbp-68H]                    ; 0D5F _ 48: 8B. 5D, 98
        mov     qword [rax+20H], rcx                    ; 0D63 _ 48: 89. 48, 20
        mov     qword [rax+28H], rbx                    ; 0D67 _ 48: 89. 58, 28
        mov     rcx, qword [rbp-60H]                    ; 0D6B _ 48: 8B. 4D, A0
        mov     rbx, qword [rbp-58H]                    ; 0D6F _ 48: 8B. 5D, A8
        mov     qword [rax+30H], rcx                    ; 0D73 _ 48: 89. 48, 30
        mov     qword [rax+38H], rbx                    ; 0D77 _ 48: 89. 58, 38
        mov     rcx, qword [rbp-50H]                    ; 0D7B _ 48: 8B. 4D, B0
        mov     rbx, qword [rbp-48H]                    ; 0D7F _ 48: 8B. 5D, B8
        mov     qword [rax+40H], rcx                    ; 0D83 _ 48: 89. 48, 40
        mov     qword [rax+48H], rbx                    ; 0D87 _ 48: 89. 58, 48
        mov     rcx, qword [rbp-40H]                    ; 0D8B _ 48: 8B. 4D, C0
        mov     rbx, qword [rbp-38H]                    ; 0D8F _ 48: 8B. 5D, C8
        mov     qword [rax+50H], rcx                    ; 0D93 _ 48: 89. 48, 50
        mov     qword [rax+58H], rbx                    ; 0D97 _ 48: 89. 58, 58
        mov     rcx, qword [rbp-30H]                    ; 0D9B _ 48: 8B. 4D, D0
        mov     rbx, qword [rbp-28H]                    ; 0D9F _ 48: 8B. 5D, D8
        mov     qword [rax+60H], rcx                    ; 0DA3 _ 48: 89. 48, 60
        mov     qword [rax+68H], rbx                    ; 0DA7 _ 48: 89. 58, 68
        mov     rdx, qword [rbp-20H]                    ; 0DAB _ 48: 8B. 55, E0
        mov     qword [rax+70H], rdx                    ; 0DAF _ 48: 89. 50, 70
?_072:  mov     rax, qword [rbp-108H]                   ; 0DB3 _ 48: 8B. 85, FFFFFEF8
        add     rsp, 264                                ; 0DBA _ 48: 81. C4, 00000108
        pop     rbx                                     ; 0DC1 _ 5B
        pop     rbp                                     ; 0DC2 _ 5D
        ret                                             ; 0DC3 _ C3
; In End of function

InRnd:  ; Function begin
        endbr64                                         ; 0DC4 _ F3: 0F 1E. FA
        push    rbp                                     ; 0DC8 _ 55
        mov     rbp, rsp                                ; 0DC9 _ 48: 89. E5
        push    rbx                                     ; 0DCC _ 53
        sub     rsp, 152                                ; 0DCD _ 48: 81. EC, 00000098
        mov     qword [rbp-98H], rdi                    ; 0DD4 _ 48: 89. BD, FFFFFF68
        mov     eax, 0                                  ; 0DDB _ B8, 00000000
        call    Random                                  ; 0DE0 _ E8, 00000000(PLT r)
        mov     edx, eax                                ; 0DE5 _ 89. C2
        movsxd  rax, edx                                ; 0DE7 _ 48: 63. C2
        imul    rax, rax, 1431655766                    ; 0DEA _ 48: 69. C0, 55555556
        shr     rax, 32                                 ; 0DF1 _ 48: C1. E8, 20
        mov     rcx, rax                                ; 0DF5 _ 48: 89. C1
        mov     eax, edx                                ; 0DF8 _ 89. D0
        sar     eax, 31                                 ; 0DFA _ C1. F8, 1F
        mov     esi, ecx                                ; 0DFD _ 89. CE
        sub     esi, eax                                ; 0DFF _ 29. C6
        mov     eax, esi                                ; 0E01 _ 89. F0
        mov     dword [rbp-14H], eax                    ; 0E03 _ 89. 45, EC
        mov     ecx, dword [rbp-14H]                    ; 0E06 _ 8B. 4D, EC
        mov     eax, ecx                                ; 0E09 _ 89. C8
        add     eax, eax                                ; 0E0B _ 01. C0
        add     eax, ecx                                ; 0E0D _ 01. C8
        sub     edx, eax                                ; 0E0F _ 29. C2
        mov     eax, edx                                ; 0E11 _ 89. D0
        mov     dword [rbp-14H], eax                    ; 0E13 _ 89. 45, EC
        cmp     dword [rbp-14H], 2                      ; 0E16 _ 83. 7D, EC, 02
        je      ?_075                                   ; 0E1A _ 0F 84, 0000016B
        cmp     dword [rbp-14H], 2                      ; 0E20 _ 83. 7D, EC, 02
        jg      ?_076                                   ; 0E24 _ 0F 8F, 00000207
        cmp     dword [rbp-14H], 0                      ; 0E2A _ 83. 7D, EC, 00
        jz      ?_073                                   ; 0E2E _ 74, 0F
        cmp     dword [rbp-14H], 1                      ; 0E30 _ 83. 7D, EC, 01
        je      ?_074                                   ; 0E34 _ 0F 84, 000000AB
        jmp     ?_076                                   ; 0E3A _ E9, 000001F2

?_073:  mov     dword [rbp-90H], 0                      ; 0E3F _ C7. 85, FFFFFF70, 00000000
        lea     rax, [rbp-90H]                          ; 0E49 _ 48: 8D. 85, FFFFFF70
        add     rax, 8                                  ; 0E50 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0E54 _ 48: 89. C7
        call    InRndT                                  ; 0E57 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-98H]                    ; 0E5C _ 48: 8B. 85, FFFFFF68
        mov     rcx, qword [rbp-90H]                    ; 0E63 _ 48: 8B. 8D, FFFFFF70
        mov     rbx, qword [rbp-88H]                    ; 0E6A _ 48: 8B. 9D, FFFFFF78
        mov     qword [rax], rcx                        ; 0E71 _ 48: 89. 08
        mov     qword [rax+8H], rbx                     ; 0E74 _ 48: 89. 58, 08
        mov     rcx, qword [rbp-80H]                    ; 0E78 _ 48: 8B. 4D, 80
        mov     rbx, qword [rbp-78H]                    ; 0E7C _ 48: 8B. 5D, 88
        mov     qword [rax+10H], rcx                    ; 0E80 _ 48: 89. 48, 10
        mov     qword [rax+18H], rbx                    ; 0E84 _ 48: 89. 58, 18
        mov     rcx, qword [rbp-70H]                    ; 0E88 _ 48: 8B. 4D, 90
        mov     rbx, qword [rbp-68H]                    ; 0E8C _ 48: 8B. 5D, 98
        mov     qword [rax+20H], rcx                    ; 0E90 _ 48: 89. 48, 20
        mov     qword [rax+28H], rbx                    ; 0E94 _ 48: 89. 58, 28
        mov     rcx, qword [rbp-60H]                    ; 0E98 _ 48: 8B. 4D, A0
        mov     rbx, qword [rbp-58H]                    ; 0E9C _ 48: 8B. 5D, A8
        mov     qword [rax+30H], rcx                    ; 0EA0 _ 48: 89. 48, 30
        mov     qword [rax+38H], rbx                    ; 0EA4 _ 48: 89. 58, 38
        mov     rcx, qword [rbp-50H]                    ; 0EA8 _ 48: 8B. 4D, B0
        mov     rbx, qword [rbp-48H]                    ; 0EAC _ 48: 8B. 5D, B8
        mov     qword [rax+40H], rcx                    ; 0EB0 _ 48: 89. 48, 40
        mov     qword [rax+48H], rbx                    ; 0EB4 _ 48: 89. 58, 48
        mov     rcx, qword [rbp-40H]                    ; 0EB8 _ 48: 8B. 4D, C0
        mov     rbx, qword [rbp-38H]                    ; 0EBC _ 48: 8B. 5D, C8
        mov     qword [rax+50H], rcx                    ; 0EC0 _ 48: 89. 48, 50
        mov     qword [rax+58H], rbx                    ; 0EC4 _ 48: 89. 58, 58
        mov     rcx, qword [rbp-30H]                    ; 0EC8 _ 48: 8B. 4D, D0
        mov     rbx, qword [rbp-28H]                    ; 0ECC _ 48: 8B. 5D, D8
        mov     qword [rax+60H], rcx                    ; 0ED0 _ 48: 89. 48, 60
        mov     qword [rax+68H], rbx                    ; 0ED4 _ 48: 89. 58, 68
        mov     rdx, qword [rbp-20H]                    ; 0ED8 _ 48: 8B. 55, E0
        mov     qword [rax+70H], rdx                    ; 0EDC _ 48: 89. 50, 70
        jmp     ?_077                                   ; 0EE0 _ E9, 000001DA

?_074:  mov     dword [rbp-90H], 1                      ; 0EE5 _ C7. 85, FFFFFF70, 00000001
        lea     rax, [rbp-90H]                          ; 0EEF _ 48: 8D. 85, FFFFFF70
        add     rax, 8                                  ; 0EF6 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0EFA _ 48: 89. C7
        call    InRndS                                  ; 0EFD _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-98H]                    ; 0F02 _ 48: 8B. 85, FFFFFF68
        mov     rcx, qword [rbp-90H]                    ; 0F09 _ 48: 8B. 8D, FFFFFF70
        mov     rbx, qword [rbp-88H]                    ; 0F10 _ 48: 8B. 9D, FFFFFF78
        mov     qword [rax], rcx                        ; 0F17 _ 48: 89. 08
        mov     qword [rax+8H], rbx                     ; 0F1A _ 48: 89. 58, 08
        mov     rcx, qword [rbp-80H]                    ; 0F1E _ 48: 8B. 4D, 80
        mov     rbx, qword [rbp-78H]                    ; 0F22 _ 48: 8B. 5D, 88
        mov     qword [rax+10H], rcx                    ; 0F26 _ 48: 89. 48, 10
        mov     qword [rax+18H], rbx                    ; 0F2A _ 48: 89. 58, 18
        mov     rcx, qword [rbp-70H]                    ; 0F2E _ 48: 8B. 4D, 90
        mov     rbx, qword [rbp-68H]                    ; 0F32 _ 48: 8B. 5D, 98
        mov     qword [rax+20H], rcx                    ; 0F36 _ 48: 89. 48, 20
        mov     qword [rax+28H], rbx                    ; 0F3A _ 48: 89. 58, 28
        mov     rcx, qword [rbp-60H]                    ; 0F3E _ 48: 8B. 4D, A0
        mov     rbx, qword [rbp-58H]                    ; 0F42 _ 48: 8B. 5D, A8
        mov     qword [rax+30H], rcx                    ; 0F46 _ 48: 89. 48, 30
        mov     qword [rax+38H], rbx                    ; 0F4A _ 48: 89. 58, 38
        mov     rcx, qword [rbp-50H]                    ; 0F4E _ 48: 8B. 4D, B0
        mov     rbx, qword [rbp-48H]                    ; 0F52 _ 48: 8B. 5D, B8
        mov     qword [rax+40H], rcx                    ; 0F56 _ 48: 89. 48, 40
        mov     qword [rax+48H], rbx                    ; 0F5A _ 48: 89. 58, 48
        mov     rcx, qword [rbp-40H]                    ; 0F5E _ 48: 8B. 4D, C0
        mov     rbx, qword [rbp-38H]                    ; 0F62 _ 48: 8B. 5D, C8
        mov     qword [rax+50H], rcx                    ; 0F66 _ 48: 89. 48, 50
        mov     qword [rax+58H], rbx                    ; 0F6A _ 48: 89. 58, 58
        mov     rcx, qword [rbp-30H]                    ; 0F6E _ 48: 8B. 4D, D0
        mov     rbx, qword [rbp-28H]                    ; 0F72 _ 48: 8B. 5D, D8
        mov     qword [rax+60H], rcx                    ; 0F76 _ 48: 89. 48, 60
        mov     qword [rax+68H], rbx                    ; 0F7A _ 48: 89. 58, 68
        mov     rdx, qword [rbp-20H]                    ; 0F7E _ 48: 8B. 55, E0
        mov     qword [rax+70H], rdx                    ; 0F82 _ 48: 89. 50, 70
        jmp     ?_077                                   ; 0F86 _ E9, 00000134

?_075:  mov     dword [rbp-90H], 2                      ; 0F8B _ C7. 85, FFFFFF70, 00000002
        lea     rax, [rbp-90H]                          ; 0F95 _ 48: 8D. 85, FFFFFF70
        add     rax, 8                                  ; 0F9C _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0FA0 _ 48: 89. C7
        call    InRndF                                  ; 0FA3 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-98H]                    ; 0FA8 _ 48: 8B. 85, FFFFFF68
        mov     rcx, qword [rbp-90H]                    ; 0FAF _ 48: 8B. 8D, FFFFFF70
        mov     rbx, qword [rbp-88H]                    ; 0FB6 _ 48: 8B. 9D, FFFFFF78
        mov     qword [rax], rcx                        ; 0FBD _ 48: 89. 08
        mov     qword [rax+8H], rbx                     ; 0FC0 _ 48: 89. 58, 08
        mov     rcx, qword [rbp-80H]                    ; 0FC4 _ 48: 8B. 4D, 80
        mov     rbx, qword [rbp-78H]                    ; 0FC8 _ 48: 8B. 5D, 88
        mov     qword [rax+10H], rcx                    ; 0FCC _ 48: 89. 48, 10
        mov     qword [rax+18H], rbx                    ; 0FD0 _ 48: 89. 58, 18
        mov     rcx, qword [rbp-70H]                    ; 0FD4 _ 48: 8B. 4D, 90
        mov     rbx, qword [rbp-68H]                    ; 0FD8 _ 48: 8B. 5D, 98
        mov     qword [rax+20H], rcx                    ; 0FDC _ 48: 89. 48, 20
        mov     qword [rax+28H], rbx                    ; 0FE0 _ 48: 89. 58, 28
        mov     rcx, qword [rbp-60H]                    ; 0FE4 _ 48: 8B. 4D, A0
        mov     rbx, qword [rbp-58H]                    ; 0FE8 _ 48: 8B. 5D, A8
        mov     qword [rax+30H], rcx                    ; 0FEC _ 48: 89. 48, 30
        mov     qword [rax+38H], rbx                    ; 0FF0 _ 48: 89. 58, 38
        mov     rcx, qword [rbp-50H]                    ; 0FF4 _ 48: 8B. 4D, B0
        mov     rbx, qword [rbp-48H]                    ; 0FF8 _ 48: 8B. 5D, B8
        mov     qword [rax+40H], rcx                    ; 0FFC _ 48: 89. 48, 40
        mov     qword [rax+48H], rbx                    ; 1000 _ 48: 89. 58, 48
        mov     rcx, qword [rbp-40H]                    ; 1004 _ 48: 8B. 4D, C0
        mov     rbx, qword [rbp-38H]                    ; 1008 _ 48: 8B. 5D, C8
        mov     qword [rax+50H], rcx                    ; 100C _ 48: 89. 48, 50
        mov     qword [rax+58H], rbx                    ; 1010 _ 48: 89. 58, 58
        mov     rcx, qword [rbp-30H]                    ; 1014 _ 48: 8B. 4D, D0
        mov     rbx, qword [rbp-28H]                    ; 1018 _ 48: 8B. 5D, D8
        mov     qword [rax+60H], rcx                    ; 101C _ 48: 89. 48, 60
        mov     qword [rax+68H], rbx                    ; 1020 _ 48: 89. 58, 68
        mov     rdx, qword [rbp-20H]                    ; 1024 _ 48: 8B. 55, E0
        mov     qword [rax+70H], rdx                    ; 1028 _ 48: 89. 50, 70
        jmp     ?_077                                   ; 102C _ E9, 0000008E

?_076:  mov     dword [rbp-90H], 3                      ; 1031 _ C7. 85, FFFFFF70, 00000003
        mov     rax, qword [rbp-98H]                    ; 103B _ 48: 8B. 85, FFFFFF68
        mov     rcx, qword [rbp-90H]                    ; 1042 _ 48: 8B. 8D, FFFFFF70
        mov     rbx, qword [rbp-88H]                    ; 1049 _ 48: 8B. 9D, FFFFFF78
        mov     qword [rax], rcx                        ; 1050 _ 48: 89. 08
        mov     qword [rax+8H], rbx                     ; 1053 _ 48: 89. 58, 08
        mov     rcx, qword [rbp-80H]                    ; 1057 _ 48: 8B. 4D, 80
        mov     rbx, qword [rbp-78H]                    ; 105B _ 48: 8B. 5D, 88
        mov     qword [rax+10H], rcx                    ; 105F _ 48: 89. 48, 10
        mov     qword [rax+18H], rbx                    ; 1063 _ 48: 89. 58, 18
        mov     rcx, qword [rbp-70H]                    ; 1067 _ 48: 8B. 4D, 90
        mov     rbx, qword [rbp-68H]                    ; 106B _ 48: 8B. 5D, 98
        mov     qword [rax+20H], rcx                    ; 106F _ 48: 89. 48, 20
        mov     qword [rax+28H], rbx                    ; 1073 _ 48: 89. 58, 28
        mov     rcx, qword [rbp-60H]                    ; 1077 _ 48: 8B. 4D, A0
        mov     rbx, qword [rbp-58H]                    ; 107B _ 48: 8B. 5D, A8
        mov     qword [rax+30H], rcx                    ; 107F _ 48: 89. 48, 30
        mov     qword [rax+38H], rbx                    ; 1083 _ 48: 89. 58, 38
        mov     rcx, qword [rbp-50H]                    ; 1087 _ 48: 8B. 4D, B0
        mov     rbx, qword [rbp-48H]                    ; 108B _ 48: 8B. 5D, B8
        mov     qword [rax+40H], rcx                    ; 108F _ 48: 89. 48, 40
        mov     qword [rax+48H], rbx                    ; 1093 _ 48: 89. 58, 48
        mov     rcx, qword [rbp-40H]                    ; 1097 _ 48: 8B. 4D, C0
        mov     rbx, qword [rbp-38H]                    ; 109B _ 48: 8B. 5D, C8
        mov     qword [rax+50H], rcx                    ; 109F _ 48: 89. 48, 50
        mov     qword [rax+58H], rbx                    ; 10A3 _ 48: 89. 58, 58
        mov     rcx, qword [rbp-30H]                    ; 10A7 _ 48: 8B. 4D, D0
        mov     rbx, qword [rbp-28H]                    ; 10AB _ 48: 8B. 5D, D8
        mov     qword [rax+60H], rcx                    ; 10AF _ 48: 89. 48, 60
        mov     qword [rax+68H], rbx                    ; 10B3 _ 48: 89. 58, 68
        mov     rdx, qword [rbp-20H]                    ; 10B7 _ 48: 8B. 55, E0
        mov     qword [rax+70H], rdx                    ; 10BB _ 48: 89. 50, 70
?_077:  mov     rax, qword [rbp-98H]                    ; 10BF _ 48: 8B. 85, FFFFFF68
        add     rsp, 152                                ; 10C6 _ 48: 81. C4, 00000098
        pop     rbx                                     ; 10CD _ 5B
        pop     rbp                                     ; 10CE _ 5D
        ret                                             ; 10CF _ C3
; InRnd End of function

Out:    ; Function begin
        endbr64                                         ; 10D0 _ F3: 0F 1E. FA
        push    rbp                                     ; 10D4 _ 55
        mov     rbp, rsp                                ; 10D5 _ 48: 89. E5
        sub     rsp, 16                                 ; 10D8 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 10DC _ 48: 89. 7D, F8
        mov     eax, dword [rbp+10H]                    ; 10E0 _ 8B. 45, 10
        cmp     eax, 2                                  ; 10E3 _ 83. F8, 02
        je      ?_080                                   ; 10E6 _ 0F 84, 00000096
        cmp     eax, 2                                  ; 10EC _ 83. F8, 02
        ja      ?_081                                   ; 10EF _ 0F 87, 000000CA
        test    eax, eax                                ; 10F5 _ 85. C0
        jz      ?_078                                   ; 10F7 _ 74, 0A
        cmp     eax, 1                                  ; 10F9 _ 83. F8, 01
        jz      ?_079                                   ; 10FC _ 74, 47
        jmp     ?_081                                   ; 10FE _ E9, 000000BC

?_078:  mov     rax, qword [rbp-8H]                     ; 1103 _ 48: 8B. 45, F8
        push    qword [rbp+80H]                         ; 1107 _ FF. B5, 00000080
        push    qword [rbp+78H]                         ; 110D _ FF. 75, 78
        push    qword [rbp+70H]                         ; 1110 _ FF. 75, 70
        push    qword [rbp+68H]                         ; 1113 _ FF. 75, 68
        push    qword [rbp+60H]                         ; 1116 _ FF. 75, 60
        push    qword [rbp+58H]                         ; 1119 _ FF. 75, 58
        push    qword [rbp+50H]                         ; 111C _ FF. 75, 50
        push    qword [rbp+48H]                         ; 111F _ FF. 75, 48
        push    qword [rbp+40H]                         ; 1122 _ FF. 75, 40
        push    qword [rbp+38H]                         ; 1125 _ FF. 75, 38
        push    qword [rbp+30H]                         ; 1128 _ FF. 75, 30
        push    qword [rbp+28H]                         ; 112B _ FF. 75, 28
        push    qword [rbp+20H]                         ; 112E _ FF. 75, 20
        push    qword [rbp+18H]                         ; 1131 _ FF. 75, 18
        mov     rdi, rax                                ; 1134 _ 48: 89. C7
        call    OutT                                    ; 1137 _ E8, 00000000(PLT r)
        add     rsp, 112                                ; 113C _ 48: 83. C4, 70
        jmp     ?_082                                   ; 1140 _ E9, 00000098

?_079:  mov     rax, qword [rbp-8H]                     ; 1145 _ 48: 8B. 45, F8
        sub     rsp, 8                                  ; 1149 _ 48: 83. EC, 08
        push    qword [rbp+78H]                         ; 114D _ FF. 75, 78
        push    qword [rbp+70H]                         ; 1150 _ FF. 75, 70
        push    qword [rbp+68H]                         ; 1153 _ FF. 75, 68
        push    qword [rbp+60H]                         ; 1156 _ FF. 75, 60
        push    qword [rbp+58H]                         ; 1159 _ FF. 75, 58
        push    qword [rbp+50H]                         ; 115C _ FF. 75, 50
        push    qword [rbp+48H]                         ; 115F _ FF. 75, 48
        push    qword [rbp+40H]                         ; 1162 _ FF. 75, 40
        push    qword [rbp+38H]                         ; 1165 _ FF. 75, 38
        push    qword [rbp+30H]                         ; 1168 _ FF. 75, 30
        push    qword [rbp+28H]                         ; 116B _ FF. 75, 28
        push    qword [rbp+20H]                         ; 116E _ FF. 75, 20
        push    qword [rbp+18H]                         ; 1171 _ FF. 75, 18
        mov     rdi, rax                                ; 1174 _ 48: 89. C7
        call    OutS                                    ; 1177 _ E8, 00000000(PLT r)
        add     rsp, 112                                ; 117C _ 48: 83. C4, 70
        jmp     ?_082                                   ; 1180 _ EB, 5B

?_080:  mov     rax, qword [rbp-8H]                     ; 1182 _ 48: 8B. 45, F8
        sub     rsp, 8                                  ; 1186 _ 48: 83. EC, 08
        push    qword [rbp+78H]                         ; 118A _ FF. 75, 78
        push    qword [rbp+70H]                         ; 118D _ FF. 75, 70
        push    qword [rbp+68H]                         ; 1190 _ FF. 75, 68
        push    qword [rbp+60H]                         ; 1193 _ FF. 75, 60
        push    qword [rbp+58H]                         ; 1196 _ FF. 75, 58
        push    qword [rbp+50H]                         ; 1199 _ FF. 75, 50
        push    qword [rbp+48H]                         ; 119C _ FF. 75, 48
        push    qword [rbp+40H]                         ; 119F _ FF. 75, 40
        push    qword [rbp+38H]                         ; 11A2 _ FF. 75, 38
        push    qword [rbp+30H]                         ; 11A5 _ FF. 75, 30
        push    qword [rbp+28H]                         ; 11A8 _ FF. 75, 28
        push    qword [rbp+20H]                         ; 11AB _ FF. 75, 20
        push    qword [rbp+18H]                         ; 11AE _ FF. 75, 18
        mov     rdi, rax                                ; 11B1 _ 48: 89. C7
        call    OutF                                    ; 11B4 _ E8, 00000000(PLT r)
        add     rsp, 112                                ; 11B9 _ 48: 83. C4, 70
        jmp     ?_082                                   ; 11BD _ EB, 1E

?_081:  mov     rax, qword [rbp-8H]                     ; 11BF _ 48: 8B. 45, F8
        mov     rcx, rax                                ; 11C3 _ 48: 89. C1
        mov     edx, 20                                 ; 11C6 _ BA, 00000014
        mov     esi, 1                                  ; 11CB _ BE, 00000001
        lea     rdi, [rel ?_135]                        ; 11D0 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 11D7 _ E8, 00000000(PLT r)
        nop                                             ; 11DC _ 90
?_082:  nop                                             ; 11DD _ 90
        leave                                           ; 11DE _ C9
        ret                                             ; 11DF _ C3
; Out End of function

CountExpr:; Function begin
        endbr64                                         ; 11E0 _ F3: 0F 1E. FA
        push    rbp                                     ; 11E4 _ 55
        mov     rbp, rsp                                ; 11E5 _ 48: 89. E5
        mov     eax, dword [rbp+10H]                    ; 11E8 _ 8B. 45, 10
        cmp     eax, 2                                  ; 11EB _ 83. F8, 02
        je      ?_085                                   ; 11EE _ 0F 84, 0000008F
        cmp     eax, 2                                  ; 11F4 _ 83. F8, 02
        ja      ?_086                                   ; 11F7 _ 0F 87, 000000C1
        test    eax, eax                                ; 11FD _ 85. C0
        jz      ?_083                                   ; 11FF _ 74, 0A
        cmp     eax, 1                                  ; 1201 _ 83. F8, 01
        jz      ?_084                                   ; 1204 _ 74, 42
        jmp     ?_086                                   ; 1206 _ E9, 000000B3

?_083:  push    qword [rbp+80H]                         ; 120B _ FF. B5, 00000080
        push    qword [rbp+78H]                         ; 1211 _ FF. 75, 78
        push    qword [rbp+70H]                         ; 1214 _ FF. 75, 70
        push    qword [rbp+68H]                         ; 1217 _ FF. 75, 68
        push    qword [rbp+60H]                         ; 121A _ FF. 75, 60
        push    qword [rbp+58H]                         ; 121D _ FF. 75, 58
        push    qword [rbp+50H]                         ; 1220 _ FF. 75, 50
        push    qword [rbp+48H]                         ; 1223 _ FF. 75, 48
        push    qword [rbp+40H]                         ; 1226 _ FF. 75, 40
        push    qword [rbp+38H]                         ; 1229 _ FF. 75, 38
        push    qword [rbp+30H]                         ; 122C _ FF. 75, 30
        push    qword [rbp+28H]                         ; 122F _ FF. 75, 28
        push    qword [rbp+20H]                         ; 1232 _ FF. 75, 20
        push    qword [rbp+18H]                         ; 1235 _ FF. 75, 18
        call    CountExprT                              ; 1238 _ E8, 00000000(PLT r)
        add     rsp, 112                                ; 123D _ 48: 83. C4, 70
        vmovq   rax, xmm0                               ; 1241 _ C4 E1 F9: 7E. C0
        jmp     ?_087                                   ; 1246 _ EB, 7D

?_084:  sub     rsp, 8                                  ; 1248 _ 48: 83. EC, 08
        push    qword [rbp+78H]                         ; 124C _ FF. 75, 78
        push    qword [rbp+70H]                         ; 124F _ FF. 75, 70
        push    qword [rbp+68H]                         ; 1252 _ FF. 75, 68
        push    qword [rbp+60H]                         ; 1255 _ FF. 75, 60
        push    qword [rbp+58H]                         ; 1258 _ FF. 75, 58
        push    qword [rbp+50H]                         ; 125B _ FF. 75, 50
        push    qword [rbp+48H]                         ; 125E _ FF. 75, 48
        push    qword [rbp+40H]                         ; 1261 _ FF. 75, 40
        push    qword [rbp+38H]                         ; 1264 _ FF. 75, 38
        push    qword [rbp+30H]                         ; 1267 _ FF. 75, 30
        push    qword [rbp+28H]                         ; 126A _ FF. 75, 28
        push    qword [rbp+20H]                         ; 126D _ FF. 75, 20
        push    qword [rbp+18H]                         ; 1270 _ FF. 75, 18
        call    CountExprS                              ; 1273 _ E8, 00000000(PLT r)
        add     rsp, 112                                ; 1278 _ 48: 83. C4, 70
        vmovq   rax, xmm0                               ; 127C _ C4 E1 F9: 7E. C0
        jmp     ?_087                                   ; 1281 _ EB, 42

?_085:  sub     rsp, 8                                  ; 1283 _ 48: 83. EC, 08
        push    qword [rbp+78H]                         ; 1287 _ FF. 75, 78
        push    qword [rbp+70H]                         ; 128A _ FF. 75, 70
        push    qword [rbp+68H]                         ; 128D _ FF. 75, 68
        push    qword [rbp+60H]                         ; 1290 _ FF. 75, 60
        push    qword [rbp+58H]                         ; 1293 _ FF. 75, 58
        push    qword [rbp+50H]                         ; 1296 _ FF. 75, 50
        push    qword [rbp+48H]                         ; 1299 _ FF. 75, 48
        push    qword [rbp+40H]                         ; 129C _ FF. 75, 40
        push    qword [rbp+38H]                         ; 129F _ FF. 75, 38
        push    qword [rbp+30H]                         ; 12A2 _ FF. 75, 30
        push    qword [rbp+28H]                         ; 12A5 _ FF. 75, 28
        push    qword [rbp+20H]                         ; 12A8 _ FF. 75, 20
        push    qword [rbp+18H]                         ; 12AB _ FF. 75, 18
        call    CountExprF                              ; 12AE _ E8, 00000000(PLT r)
        add     rsp, 112                                ; 12B3 _ 48: 83. C4, 70
        vmovq   rax, xmm0                               ; 12B7 _ C4 E1 F9: 7E. C0
        jmp     ?_087                                   ; 12BC _ EB, 07

?_086:  mov     rax, qword [rel ?_149]                  ; 12BE _ 48: 8B. 05, 00000000(rel)
?_087:  vmovq   xmm0, rax                               ; 12C5 _ C4 E1 F9: 6E. C0
        leave                                           ; 12CA _ C9
        ret                                             ; 12CB _ C3
; CountExpr End of function

Init:   ; Function begin
        endbr64                                         ; 12CC _ F3: 0F 1E. FA
        push    rbp                                     ; 12D0 _ 55
        mov     rbp, rsp                                ; 12D1 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 12D4 _ 48: 89. 7D, F8
        mov     rax, qword [rbp-8H]                     ; 12D8 _ 48: 8B. 45, F8
        mov     dword [rax], 0                          ; 12DC _ C7. 00, 00000000
        nop                                             ; 12E2 _ 90
        pop     rbp                                     ; 12E3 _ 5D
        ret                                             ; 12E4 _ C3
; Init End of function

InC:    ; Function begin
        endbr64                                         ; 12E5 _ F3: 0F 1E. FA
        push    rbp                                     ; 12E9 _ 55
        mov     rbp, rsp                                ; 12EA _ 48: 89. E5
        push    rbx                                     ; 12ED _ 53
        and     rsp, 0FFFFFFFFFFFFFFE0H                 ; 12EE _ 48: 83. E4, E0
        sub     rsp, 160                                ; 12F2 _ 48: 81. EC, 000000A0
        mov     qword [rsp+98H], rdi                    ; 12F9 _ 48: 89. BC 24, 00000098
        mov     qword [rsp+90H], rsi                    ; 1301 _ 48: 89. B4 24, 00000090
        jmp     ?_089                                   ; 1309 _ E9, 000000CF

?_088:  mov     rax, qword [rsp+98H]                    ; 130E _ 48: 8B. 84 24, 00000098
        mov     eax, dword [rax]                        ; 1316 _ 8B. 00
        mov     rdx, qword [rsp+98H]                    ; 1318 _ 48: 8B. 94 24, 00000098
        cdqe                                            ; 1320 _ 48: 98
        imul    rax, rax, 120                           ; 1322 _ 48: 6B. C0, 78
        lea     rbx, [rdx+rax]                          ; 1326 _ 48: 8D. 1C 02
        mov     rax, rsp                                ; 132A _ 48: 89. E0
        mov     rdx, qword [rsp+90H]                    ; 132D _ 48: 8B. 94 24, 00000090
        mov     rsi, rdx                                ; 1335 _ 48: 89. D6
        mov     rdi, rax                                ; 1338 _ 48: 89. C7
        call    In                                      ; 133B _ E8, 00000000(PLT r)
        mov     rax, qword [rsp]                        ; 1340 _ 48: 8B. 04 24
        mov     rdx, qword [rsp+8H]                     ; 1344 _ 48: 8B. 54 24, 08
        mov     qword [rbx+8H], rax                     ; 1349 _ 48: 89. 43, 08
        mov     qword [rbx+10H], rdx                    ; 134D _ 48: 89. 53, 10
        mov     rax, qword [rsp+10H]                    ; 1351 _ 48: 8B. 44 24, 10
        mov     rdx, qword [rsp+18H]                    ; 1356 _ 48: 8B. 54 24, 18
        mov     qword [rbx+18H], rax                    ; 135B _ 48: 89. 43, 18
        mov     qword [rbx+20H], rdx                    ; 135F _ 48: 89. 53, 20
        mov     rax, qword [rsp+20H]                    ; 1363 _ 48: 8B. 44 24, 20
        mov     rdx, qword [rsp+28H]                    ; 1368 _ 48: 8B. 54 24, 28
        mov     qword [rbx+28H], rax                    ; 136D _ 48: 89. 43, 28
        mov     qword [rbx+30H], rdx                    ; 1371 _ 48: 89. 53, 30
        mov     rax, qword [rsp+30H]                    ; 1375 _ 48: 8B. 44 24, 30
        mov     rdx, qword [rsp+38H]                    ; 137A _ 48: 8B. 54 24, 38
        mov     qword [rbx+38H], rax                    ; 137F _ 48: 89. 43, 38
        mov     qword [rbx+40H], rdx                    ; 1383 _ 48: 89. 53, 40
        mov     rax, qword [rsp+40H]                    ; 1387 _ 48: 8B. 44 24, 40
        mov     rdx, qword [rsp+48H]                    ; 138C _ 48: 8B. 54 24, 48
        mov     qword [rbx+48H], rax                    ; 1391 _ 48: 89. 43, 48
        mov     qword [rbx+50H], rdx                    ; 1395 _ 48: 89. 53, 50
        mov     rax, qword [rsp+50H]                    ; 1399 _ 48: 8B. 44 24, 50
        mov     rdx, qword [rsp+58H]                    ; 139E _ 48: 8B. 54 24, 58
        mov     qword [rbx+58H], rax                    ; 13A3 _ 48: 89. 43, 58
        mov     qword [rbx+60H], rdx                    ; 13A7 _ 48: 89. 53, 60
        mov     rax, qword [rsp+60H]                    ; 13AB _ 48: 8B. 44 24, 60
        mov     rdx, qword [rsp+68H]                    ; 13B0 _ 48: 8B. 54 24, 68
        mov     qword [rbx+68H], rax                    ; 13B5 _ 48: 89. 43, 68
        mov     qword [rbx+70H], rdx                    ; 13B9 _ 48: 89. 53, 70
        mov     rax, qword [rsp+70H]                    ; 13BD _ 48: 8B. 44 24, 70
        mov     qword [rbx+78H], rax                    ; 13C2 _ 48: 89. 43, 78
        mov     rax, qword [rsp+98H]                    ; 13C6 _ 48: 8B. 84 24, 00000098
        mov     eax, dword [rax]                        ; 13CE _ 8B. 00
        lea     edx, [rax+1H]                           ; 13D0 _ 8D. 50, 01
        mov     rax, qword [rsp+98H]                    ; 13D3 _ 48: 8B. 84 24, 00000098
        mov     dword [rax], edx                        ; 13DB _ 89. 10
?_089:  mov     rax, qword [rsp+90H]                    ; 13DD _ 48: 8B. 84 24, 00000090
        mov     rdi, rax                                ; 13E5 _ 48: 89. C7
        call    feof                                    ; 13E8 _ E8, 00000000(PLT r)
        test    eax, eax                                ; 13ED _ 85. C0
        jne     ?_088                                   ; 13EF _ 0F 85, FFFFFF19
        nop                                             ; 13F5 _ 90
        nop                                             ; 13F6 _ 90
        mov     rbx, qword [rbp-8H]                     ; 13F7 _ 48: 8B. 5D, F8
        leave                                           ; 13FB _ C9
        ret                                             ; 13FC _ C3
; InC End of function

InRndC: ; Function begin
        endbr64                                         ; 13FD _ F3: 0F 1E. FA
        push    rbp                                     ; 1401 _ 55
        mov     rbp, rsp                                ; 1402 _ 48: 89. E5
        push    rbx                                     ; 1405 _ 53
        and     rsp, 0FFFFFFFFFFFFFFE0H                 ; 1406 _ 48: 83. E4, E0
        sub     rsp, 160                                ; 140A _ 48: 81. EC, 000000A0
        mov     qword [rsp+98H], rdi                    ; 1411 _ 48: 89. BC 24, 00000098
        mov     dword [rsp+94H], esi                    ; 1419 _ 89. B4 24, 00000094
        jmp     ?_091                                   ; 1420 _ E9, 000000C9

?_090:  mov     rax, qword [rsp+98H]                    ; 1425 _ 48: 8B. 84 24, 00000098
        mov     eax, dword [rax]                        ; 142D _ 8B. 00
        mov     rdx, qword [rsp+98H]                    ; 142F _ 48: 8B. 94 24, 00000098
        cdqe                                            ; 1437 _ 48: 98
        imul    rax, rax, 120                           ; 1439 _ 48: 6B. C0, 78
        lea     rbx, [rdx+rax]                          ; 143D _ 48: 8D. 1C 02
        mov     rax, rsp                                ; 1441 _ 48: 89. E0
        mov     rdi, rax                                ; 1444 _ 48: 89. C7
        mov     eax, 0                                  ; 1447 _ B8, 00000000
        call    InRnd                                   ; 144C _ E8, 00000000(PLT r)
        mov     rax, qword [rsp]                        ; 1451 _ 48: 8B. 04 24
        mov     rdx, qword [rsp+8H]                     ; 1455 _ 48: 8B. 54 24, 08
        mov     qword [rbx+8H], rax                     ; 145A _ 48: 89. 43, 08
        mov     qword [rbx+10H], rdx                    ; 145E _ 48: 89. 53, 10
        mov     rax, qword [rsp+10H]                    ; 1462 _ 48: 8B. 44 24, 10
        mov     rdx, qword [rsp+18H]                    ; 1467 _ 48: 8B. 54 24, 18
        mov     qword [rbx+18H], rax                    ; 146C _ 48: 89. 43, 18
        mov     qword [rbx+20H], rdx                    ; 1470 _ 48: 89. 53, 20
        mov     rax, qword [rsp+20H]                    ; 1474 _ 48: 8B. 44 24, 20
        mov     rdx, qword [rsp+28H]                    ; 1479 _ 48: 8B. 54 24, 28
        mov     qword [rbx+28H], rax                    ; 147E _ 48: 89. 43, 28
        mov     qword [rbx+30H], rdx                    ; 1482 _ 48: 89. 53, 30
        mov     rax, qword [rsp+30H]                    ; 1486 _ 48: 8B. 44 24, 30
        mov     rdx, qword [rsp+38H]                    ; 148B _ 48: 8B. 54 24, 38
        mov     qword [rbx+38H], rax                    ; 1490 _ 48: 89. 43, 38
        mov     qword [rbx+40H], rdx                    ; 1494 _ 48: 89. 53, 40
        mov     rax, qword [rsp+40H]                    ; 1498 _ 48: 8B. 44 24, 40
        mov     rdx, qword [rsp+48H]                    ; 149D _ 48: 8B. 54 24, 48
        mov     qword [rbx+48H], rax                    ; 14A2 _ 48: 89. 43, 48
        mov     qword [rbx+50H], rdx                    ; 14A6 _ 48: 89. 53, 50
        mov     rax, qword [rsp+50H]                    ; 14AA _ 48: 8B. 44 24, 50
        mov     rdx, qword [rsp+58H]                    ; 14AF _ 48: 8B. 54 24, 58
        mov     qword [rbx+58H], rax                    ; 14B4 _ 48: 89. 43, 58
        mov     qword [rbx+60H], rdx                    ; 14B8 _ 48: 89. 53, 60
        mov     rax, qword [rsp+60H]                    ; 14BC _ 48: 8B. 44 24, 60
        mov     rdx, qword [rsp+68H]                    ; 14C1 _ 48: 8B. 54 24, 68
        mov     qword [rbx+68H], rax                    ; 14C6 _ 48: 89. 43, 68
        mov     qword [rbx+70H], rdx                    ; 14CA _ 48: 89. 53, 70
        mov     rax, qword [rsp+70H]                    ; 14CE _ 48: 8B. 44 24, 70
        mov     qword [rbx+78H], rax                    ; 14D3 _ 48: 89. 43, 78
        mov     rax, qword [rsp+98H]                    ; 14D7 _ 48: 8B. 84 24, 00000098
        mov     eax, dword [rax]                        ; 14DF _ 8B. 00
        lea     edx, [rax+1H]                           ; 14E1 _ 8D. 50, 01
        mov     rax, qword [rsp+98H]                    ; 14E4 _ 48: 8B. 84 24, 00000098
        mov     dword [rax], edx                        ; 14EC _ 89. 10
?_091:  mov     rax, qword [rsp+98H]                    ; 14EE _ 48: 8B. 84 24, 00000098
        mov     eax, dword [rax]                        ; 14F6 _ 8B. 00
        cmp     dword [rsp+94H], eax                    ; 14F8 _ 39. 84 24, 00000094
        jg      ?_090                                   ; 14FF _ 0F 8F, FFFFFF20
        nop                                             ; 1505 _ 90
        nop                                             ; 1506 _ 90
        mov     rbx, qword [rbp-8H]                     ; 1507 _ 48: 8B. 5D, F8
        leave                                           ; 150B _ C9
        ret                                             ; 150C _ C3
; InRndC End of function

OutC:   ; Function begin
        endbr64                                         ; 150D _ F3: 0F 1E. FA
        push    rbp                                     ; 1511 _ 55
        mov     rbp, rsp                                ; 1512 _ 48: 89. E5
        sub     rsp, 32                                 ; 1515 _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 1519 _ 48: 89. 7D, E8
        mov     qword [rbp-20H], rsi                    ; 151D _ 48: 89. 75, E0
        mov     rax, qword [rbp-18H]                    ; 1521 _ 48: 8B. 45, E8
        mov     edx, dword [rax]                        ; 1525 _ 8B. 10
        mov     rax, qword [rbp-20H]                    ; 1527 _ 48: 8B. 45, E0
        lea     rsi, [rel ?_136]                        ; 152B _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 1532 _ 48: 89. C7
        mov     eax, 0                                  ; 1535 _ B8, 00000000
        call    fprintf                                 ; 153A _ E8, 00000000(PLT r)
        mov     dword [rbp-4H], 0                       ; 153F _ C7. 45, FC, 00000000
        jmp     ?_093                                   ; 1546 _ EB, 6F

?_092:  mov     edx, dword [rbp-4H]                     ; 1548 _ 8B. 55, FC
        mov     rax, qword [rbp-20H]                    ; 154B _ 48: 8B. 45, E0
        lea     rsi, [rel ?_137]                        ; 154F _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 1556 _ 48: 89. C7
        mov     eax, 0                                  ; 1559 _ B8, 00000000
        call    fprintf                                 ; 155E _ E8, 00000000(PLT r)
        mov     rdx, qword [rbp-20H]                    ; 1563 _ 48: 8B. 55, E0
        sub     rsp, 8                                  ; 1567 _ 48: 83. EC, 08
        mov     rcx, qword [rbp-18H]                    ; 156B _ 48: 8B. 4D, E8
        mov     eax, dword [rbp-4H]                     ; 156F _ 8B. 45, FC
        cdqe                                            ; 1572 _ 48: 98
        imul    rax, rax, 120                           ; 1574 _ 48: 6B. C0, 78
        add     rax, rcx                                ; 1578 _ 48: 01. C8
        push    qword [rax+78H]                         ; 157B _ FF. 70, 78
        push    qword [rax+70H]                         ; 157E _ FF. 70, 70
        push    qword [rax+68H]                         ; 1581 _ FF. 70, 68
        push    qword [rax+60H]                         ; 1584 _ FF. 70, 60
        push    qword [rax+58H]                         ; 1587 _ FF. 70, 58
        push    qword [rax+50H]                         ; 158A _ FF. 70, 50
        push    qword [rax+48H]                         ; 158D _ FF. 70, 48
        push    qword [rax+40H]                         ; 1590 _ FF. 70, 40
        push    qword [rax+38H]                         ; 1593 _ FF. 70, 38
        push    qword [rax+30H]                         ; 1596 _ FF. 70, 30
        push    qword [rax+28H]                         ; 1599 _ FF. 70, 28
        push    qword [rax+20H]                         ; 159C _ FF. 70, 20
        push    qword [rax+18H]                         ; 159F _ FF. 70, 18
        push    qword [rax+10H]                         ; 15A2 _ FF. 70, 10
        push    qword [rax+8H]                          ; 15A5 _ FF. 70, 08
        mov     rdi, rdx                                ; 15A8 _ 48: 89. D7
        call    Out                                     ; 15AB _ E8, 00000000(PLT r)
        sub     rsp, -128                               ; 15B0 _ 48: 83. EC, 80
        inc     dword [rbp-4H]                          ; 15B4 _ FF. 45, FC
?_093:  mov     rax, qword [rbp-18H]                    ; 15B7 _ 48: 8B. 45, E8
        mov     eax, dword [rax]                        ; 15BB _ 8B. 00
        cmp     dword [rbp-4H], eax                     ; 15BD _ 39. 45, FC
        jl      ?_092                                   ; 15C0 _ 7C, 86
        nop                                             ; 15C2 _ 90
        nop                                             ; 15C3 _ 90
        leave                                           ; 15C4 _ C9
        ret                                             ; 15C5 _ C3
; OutC End of function

swapElement:; Function begin
        endbr64                                         ; 15C6 _ F3: 0F 1E. FA
        push    rbp                                     ; 15CA _ 55
        mov     rbp, rsp                                ; 15CB _ 48: 89. E5
        push    rbx                                     ; 15CE _ 53
        sub     rsp, 24                                 ; 15CF _ 48: 83. EC, 18
        mov     qword [rbp-90H], rdi                    ; 15D3 _ 48: 89. BD, FFFFFF70
        mov     qword [rbp-98H], rsi                    ; 15DA _ 48: 89. B5, FFFFFF68
        mov     rax, qword [rbp-90H]                    ; 15E1 _ 48: 8B. 85, FFFFFF70
        mov     rcx, qword [rax]                        ; 15E8 _ 48: 8B. 08
        mov     rbx, qword [rax+8H]                     ; 15EB _ 48: 8B. 58, 08
        mov     qword [rbp-88H], rcx                    ; 15EF _ 48: 89. 8D, FFFFFF78
        mov     qword [rbp-80H], rbx                    ; 15F6 _ 48: 89. 5D, 80
        mov     rcx, qword [rax+10H]                    ; 15FA _ 48: 8B. 48, 10
        mov     rbx, qword [rax+18H]                    ; 15FE _ 48: 8B. 58, 18
        mov     qword [rbp-78H], rcx                    ; 1602 _ 48: 89. 4D, 88
        mov     qword [rbp-70H], rbx                    ; 1606 _ 48: 89. 5D, 90
        mov     rcx, qword [rax+20H]                    ; 160A _ 48: 8B. 48, 20
        mov     rbx, qword [rax+28H]                    ; 160E _ 48: 8B. 58, 28
        mov     qword [rbp-68H], rcx                    ; 1612 _ 48: 89. 4D, 98
        mov     qword [rbp-60H], rbx                    ; 1616 _ 48: 89. 5D, A0
        mov     rcx, qword [rax+30H]                    ; 161A _ 48: 8B. 48, 30
        mov     rbx, qword [rax+38H]                    ; 161E _ 48: 8B. 58, 38
        mov     qword [rbp-58H], rcx                    ; 1622 _ 48: 89. 4D, A8
        mov     qword [rbp-50H], rbx                    ; 1626 _ 48: 89. 5D, B0
        mov     rcx, qword [rax+40H]                    ; 162A _ 48: 8B. 48, 40
        mov     rbx, qword [rax+48H]                    ; 162E _ 48: 8B. 58, 48
        mov     qword [rbp-48H], rcx                    ; 1632 _ 48: 89. 4D, B8
        mov     qword [rbp-40H], rbx                    ; 1636 _ 48: 89. 5D, C0
        mov     rcx, qword [rax+50H]                    ; 163A _ 48: 8B. 48, 50
        mov     rbx, qword [rax+58H]                    ; 163E _ 48: 8B. 58, 58
        mov     qword [rbp-38H], rcx                    ; 1642 _ 48: 89. 4D, C8
        mov     qword [rbp-30H], rbx                    ; 1646 _ 48: 89. 5D, D0
        mov     rcx, qword [rax+60H]                    ; 164A _ 48: 8B. 48, 60
        mov     rbx, qword [rax+68H]                    ; 164E _ 48: 8B. 58, 68
        mov     qword [rbp-28H], rcx                    ; 1652 _ 48: 89. 4D, D8
        mov     qword [rbp-20H], rbx                    ; 1656 _ 48: 89. 5D, E0
        mov     rax, qword [rax+70H]                    ; 165A _ 48: 8B. 40, 70
        mov     qword [rbp-18H], rax                    ; 165E _ 48: 89. 45, E8
        mov     rax, qword [rbp-90H]                    ; 1662 _ 48: 8B. 85, FFFFFF70
        mov     rdx, qword [rbp-98H]                    ; 1669 _ 48: 8B. 95, FFFFFF68
        mov     rcx, qword [rdx]                        ; 1670 _ 48: 8B. 0A
        mov     rbx, qword [rdx+8H]                     ; 1673 _ 48: 8B. 5A, 08
        mov     qword [rax], rcx                        ; 1677 _ 48: 89. 08
        mov     qword [rax+8H], rbx                     ; 167A _ 48: 89. 58, 08
        mov     rcx, qword [rdx+10H]                    ; 167E _ 48: 8B. 4A, 10
        mov     rbx, qword [rdx+18H]                    ; 1682 _ 48: 8B. 5A, 18
        mov     qword [rax+10H], rcx                    ; 1686 _ 48: 89. 48, 10
        mov     qword [rax+18H], rbx                    ; 168A _ 48: 89. 58, 18
        mov     rcx, qword [rdx+20H]                    ; 168E _ 48: 8B. 4A, 20
        mov     rbx, qword [rdx+28H]                    ; 1692 _ 48: 8B. 5A, 28
        mov     qword [rax+20H], rcx                    ; 1696 _ 48: 89. 48, 20
        mov     qword [rax+28H], rbx                    ; 169A _ 48: 89. 58, 28
        mov     rcx, qword [rdx+30H]                    ; 169E _ 48: 8B. 4A, 30
        mov     rbx, qword [rdx+38H]                    ; 16A2 _ 48: 8B. 5A, 38
        mov     qword [rax+30H], rcx                    ; 16A6 _ 48: 89. 48, 30
        mov     qword [rax+38H], rbx                    ; 16AA _ 48: 89. 58, 38
        mov     rcx, qword [rdx+40H]                    ; 16AE _ 48: 8B. 4A, 40
        mov     rbx, qword [rdx+48H]                    ; 16B2 _ 48: 8B. 5A, 48
        mov     qword [rax+40H], rcx                    ; 16B6 _ 48: 89. 48, 40
        mov     qword [rax+48H], rbx                    ; 16BA _ 48: 89. 58, 48
        mov     rcx, qword [rdx+50H]                    ; 16BE _ 48: 8B. 4A, 50
        mov     rbx, qword [rdx+58H]                    ; 16C2 _ 48: 8B. 5A, 58
        mov     qword [rax+50H], rcx                    ; 16C6 _ 48: 89. 48, 50
        mov     qword [rax+58H], rbx                    ; 16CA _ 48: 89. 58, 58
        mov     rcx, qword [rdx+60H]                    ; 16CE _ 48: 8B. 4A, 60
        mov     rbx, qword [rdx+68H]                    ; 16D2 _ 48: 8B. 5A, 68
        mov     qword [rax+60H], rcx                    ; 16D6 _ 48: 89. 48, 60
        mov     qword [rax+68H], rbx                    ; 16DA _ 48: 89. 58, 68
        mov     rdx, qword [rdx+70H]                    ; 16DE _ 48: 8B. 52, 70
        mov     qword [rax+70H], rdx                    ; 16E2 _ 48: 89. 50, 70
        mov     rax, qword [rbp-98H]                    ; 16E6 _ 48: 8B. 85, FFFFFF68
        mov     rcx, qword [rbp-88H]                    ; 16ED _ 48: 8B. 8D, FFFFFF78
        mov     rbx, qword [rbp-80H]                    ; 16F4 _ 48: 8B. 5D, 80
        mov     qword [rax], rcx                        ; 16F8 _ 48: 89. 08
        mov     qword [rax+8H], rbx                     ; 16FB _ 48: 89. 58, 08
        mov     rcx, qword [rbp-78H]                    ; 16FF _ 48: 8B. 4D, 88
        mov     rbx, qword [rbp-70H]                    ; 1703 _ 48: 8B. 5D, 90
        mov     qword [rax+10H], rcx                    ; 1707 _ 48: 89. 48, 10
        mov     qword [rax+18H], rbx                    ; 170B _ 48: 89. 58, 18
        mov     rcx, qword [rbp-68H]                    ; 170F _ 48: 8B. 4D, 98
        mov     rbx, qword [rbp-60H]                    ; 1713 _ 48: 8B. 5D, A0
        mov     qword [rax+20H], rcx                    ; 1717 _ 48: 89. 48, 20
        mov     qword [rax+28H], rbx                    ; 171B _ 48: 89. 58, 28
        mov     rcx, qword [rbp-58H]                    ; 171F _ 48: 8B. 4D, A8
        mov     rbx, qword [rbp-50H]                    ; 1723 _ 48: 8B. 5D, B0
        mov     qword [rax+30H], rcx                    ; 1727 _ 48: 89. 48, 30
        mov     qword [rax+38H], rbx                    ; 172B _ 48: 89. 58, 38
        mov     rcx, qword [rbp-48H]                    ; 172F _ 48: 8B. 4D, B8
        mov     rbx, qword [rbp-40H]                    ; 1733 _ 48: 8B. 5D, C0
        mov     qword [rax+40H], rcx                    ; 1737 _ 48: 89. 48, 40
        mov     qword [rax+48H], rbx                    ; 173B _ 48: 89. 58, 48
        mov     rcx, qword [rbp-38H]                    ; 173F _ 48: 8B. 4D, C8
        mov     rbx, qword [rbp-30H]                    ; 1743 _ 48: 8B. 5D, D0
        mov     qword [rax+50H], rcx                    ; 1747 _ 48: 89. 48, 50
        mov     qword [rax+58H], rbx                    ; 174B _ 48: 89. 58, 58
        mov     rcx, qword [rbp-28H]                    ; 174F _ 48: 8B. 4D, D8
        mov     rbx, qword [rbp-20H]                    ; 1753 _ 48: 8B. 5D, E0
        mov     qword [rax+60H], rcx                    ; 1757 _ 48: 89. 48, 60
        mov     qword [rax+68H], rbx                    ; 175B _ 48: 89. 58, 68
        mov     rdx, qword [rbp-18H]                    ; 175F _ 48: 8B. 55, E8
        mov     qword [rax+70H], rdx                    ; 1763 _ 48: 89. 50, 70
        nop                                             ; 1767 _ 90
        add     rsp, 24                                 ; 1768 _ 48: 83. C4, 18
        pop     rbx                                     ; 176C _ 5B
        pop     rbp                                     ; 176D _ 5D
        ret                                             ; 176E _ C3
; swapElement End of function

Sort:   ; Function begin
        endbr64                                         ; 176F _ F3: 0F 1E. FA
        push    rbp                                     ; 1773 _ 55
        mov     rbp, rsp                                ; 1774 _ 48: 89. E5
        sub     rsp, 32                                 ; 1777 _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 177B _ 48: 89. 7D, E8
        mov     dword [rbp-4H], 1                       ; 177F _ C7. 45, FC, 00000001
        mov     rax, qword [rbp-18H]                    ; 1786 _ 48: 8B. 45, E8
        mov     eax, dword [rax]                        ; 178A _ 8B. 00
        dec     eax                                     ; 178C _ FF. C8
        mov     dword [rbp-8H], eax                     ; 178E _ 89. 45, F8
        jmp     ?_101                                   ; 1791 _ E9, 000001E8

?_094:  mov     eax, dword [rbp-8H]                     ; 1796 _ 8B. 45, F8
        mov     dword [rbp-0CH], eax                    ; 1799 _ 89. 45, F4
        jmp     ?_097                                   ; 179C _ E9, 000000DA

?_095:  mov     eax, dword [rbp-0CH]                    ; 17A1 _ 8B. 45, F4
        dec     eax                                     ; 17A4 _ FF. C8
        sub     rsp, 8                                  ; 17A6 _ 48: 83. EC, 08
        mov     rdx, qword [rbp-18H]                    ; 17AA _ 48: 8B. 55, E8
        cdqe                                            ; 17AE _ 48: 98
        imul    rax, rax, 120                           ; 17B0 _ 48: 6B. C0, 78
        add     rax, rdx                                ; 17B4 _ 48: 01. D0
        push    qword [rax+78H]                         ; 17B7 _ FF. 70, 78
        push    qword [rax+70H]                         ; 17BA _ FF. 70, 70
        push    qword [rax+68H]                         ; 17BD _ FF. 70, 68
        push    qword [rax+60H]                         ; 17C0 _ FF. 70, 60
        push    qword [rax+58H]                         ; 17C3 _ FF. 70, 58
        push    qword [rax+50H]                         ; 17C6 _ FF. 70, 50
        push    qword [rax+48H]                         ; 17C9 _ FF. 70, 48
        push    qword [rax+40H]                         ; 17CC _ FF. 70, 40
        push    qword [rax+38H]                         ; 17CF _ FF. 70, 38
        push    qword [rax+30H]                         ; 17D2 _ FF. 70, 30
        push    qword [rax+28H]                         ; 17D5 _ FF. 70, 28
        push    qword [rax+20H]                         ; 17D8 _ FF. 70, 20
        push    qword [rax+18H]                         ; 17DB _ FF. 70, 18
        push    qword [rax+10H]                         ; 17DE _ FF. 70, 10
        push    qword [rax+8H]                          ; 17E1 _ FF. 70, 08
        call    CountExpr                               ; 17E4 _ E8, 00000000(PLT r)
        sub     rsp, -128                               ; 17E9 _ 48: 83. EC, 80
        vmovsd  qword [rbp-20H], xmm0                   ; 17ED _ C5 FB: 11. 45, E0
        sub     rsp, 8                                  ; 17F2 _ 48: 83. EC, 08
        mov     rdx, qword [rbp-18H]                    ; 17F6 _ 48: 8B. 55, E8
        mov     eax, dword [rbp-0CH]                    ; 17FA _ 8B. 45, F4
        cdqe                                            ; 17FD _ 48: 98
        imul    rax, rax, 120                           ; 17FF _ 48: 6B. C0, 78
        add     rax, rdx                                ; 1803 _ 48: 01. D0
        push    qword [rax+78H]                         ; 1806 _ FF. 70, 78
        push    qword [rax+70H]                         ; 1809 _ FF. 70, 70
        push    qword [rax+68H]                         ; 180C _ FF. 70, 68
        push    qword [rax+60H]                         ; 180F _ FF. 70, 60
        push    qword [rax+58H]                         ; 1812 _ FF. 70, 58
        push    qword [rax+50H]                         ; 1815 _ FF. 70, 50
        push    qword [rax+48H]                         ; 1818 _ FF. 70, 48
        push    qword [rax+40H]                         ; 181B _ FF. 70, 40
        push    qword [rax+38H]                         ; 181E _ FF. 70, 38
        push    qword [rax+30H]                         ; 1821 _ FF. 70, 30
        push    qword [rax+28H]                         ; 1824 _ FF. 70, 28
        push    qword [rax+20H]                         ; 1827 _ FF. 70, 20
        push    qword [rax+18H]                         ; 182A _ FF. 70, 18
        push    qword [rax+10H]                         ; 182D _ FF. 70, 10
        push    qword [rax+8H]                          ; 1830 _ FF. 70, 08
        call    CountExpr                               ; 1833 _ E8, 00000000(PLT r)
        sub     rsp, -128                               ; 1838 _ 48: 83. EC, 80
        vcomisd xmm0, qword [rbp-20H]                   ; 183C _ C5 F9: 2F. 45, E0
        jbe     ?_096                                   ; 1841 _ 76, 35
        mov     eax, dword [rbp-0CH]                    ; 1843 _ 8B. 45, F4
        cdqe                                            ; 1846 _ 48: 98
        imul    rdx, rax, 120                           ; 1848 _ 48: 6B. D0, 78
        mov     rax, qword [rbp-18H]                    ; 184C _ 48: 8B. 45, E8
        add     rax, rdx                                ; 1850 _ 48: 01. D0
        lea     rdx, [rax+8H]                           ; 1853 _ 48: 8D. 50, 08
        mov     eax, dword [rbp-0CH]                    ; 1857 _ 8B. 45, F4
        dec     eax                                     ; 185A _ FF. C8
        cdqe                                            ; 185C _ 48: 98
        imul    rcx, rax, 120                           ; 185E _ 48: 6B. C8, 78
        mov     rax, qword [rbp-18H]                    ; 1862 _ 48: 8B. 45, E8
        add     rax, rcx                                ; 1866 _ 48: 01. C8
        add     rax, 8                                  ; 1869 _ 48: 83. C0, 08
        mov     rsi, rdx                                ; 186D _ 48: 89. D6
        mov     rdi, rax                                ; 1870 _ 48: 89. C7
        call    swapElement                             ; 1873 _ E8, 00000000(PLT r)
?_096:  dec     dword [rbp-0CH]                         ; 1878 _ FF. 4D, F4
?_097:  mov     eax, dword [rbp-0CH]                    ; 187B _ 8B. 45, F4
        cmp     eax, dword [rbp-4H]                     ; 187E _ 3B. 45, FC
        jge     ?_095                                   ; 1881 _ 0F 8D, FFFFFF1A
        inc     dword [rbp-4H]                          ; 1887 _ FF. 45, FC
        mov     eax, dword [rbp-4H]                     ; 188A _ 8B. 45, FC
        mov     dword [rbp-10H], eax                    ; 188D _ 89. 45, F0
        jmp     ?_100                                   ; 1890 _ E9, 000000DA

?_098:  mov     eax, dword [rbp-10H]                    ; 1895 _ 8B. 45, F0
        dec     eax                                     ; 1898 _ FF. C8
        sub     rsp, 8                                  ; 189A _ 48: 83. EC, 08
        mov     rdx, qword [rbp-18H]                    ; 189E _ 48: 8B. 55, E8
        cdqe                                            ; 18A2 _ 48: 98
        imul    rax, rax, 120                           ; 18A4 _ 48: 6B. C0, 78
        add     rax, rdx                                ; 18A8 _ 48: 01. D0
        push    qword [rax+78H]                         ; 18AB _ FF. 70, 78
        push    qword [rax+70H]                         ; 18AE _ FF. 70, 70
        push    qword [rax+68H]                         ; 18B1 _ FF. 70, 68
        push    qword [rax+60H]                         ; 18B4 _ FF. 70, 60
        push    qword [rax+58H]                         ; 18B7 _ FF. 70, 58
        push    qword [rax+50H]                         ; 18BA _ FF. 70, 50
        push    qword [rax+48H]                         ; 18BD _ FF. 70, 48
        push    qword [rax+40H]                         ; 18C0 _ FF. 70, 40
        push    qword [rax+38H]                         ; 18C3 _ FF. 70, 38
        push    qword [rax+30H]                         ; 18C6 _ FF. 70, 30
        push    qword [rax+28H]                         ; 18C9 _ FF. 70, 28
        push    qword [rax+20H]                         ; 18CC _ FF. 70, 20
        push    qword [rax+18H]                         ; 18CF _ FF. 70, 18
        push    qword [rax+10H]                         ; 18D2 _ FF. 70, 10
        push    qword [rax+8H]                          ; 18D5 _ FF. 70, 08
        call    CountExpr                               ; 18D8 _ E8, 00000000(PLT r)
        sub     rsp, -128                               ; 18DD _ 48: 83. EC, 80
        vmovsd  qword [rbp-20H], xmm0                   ; 18E1 _ C5 FB: 11. 45, E0
        sub     rsp, 8                                  ; 18E6 _ 48: 83. EC, 08
        mov     rdx, qword [rbp-18H]                    ; 18EA _ 48: 8B. 55, E8
        mov     eax, dword [rbp-10H]                    ; 18EE _ 8B. 45, F0
        cdqe                                            ; 18F1 _ 48: 98
        imul    rax, rax, 120                           ; 18F3 _ 48: 6B. C0, 78
        add     rax, rdx                                ; 18F7 _ 48: 01. D0
        push    qword [rax+78H]                         ; 18FA _ FF. 70, 78
        push    qword [rax+70H]                         ; 18FD _ FF. 70, 70
        push    qword [rax+68H]                         ; 1900 _ FF. 70, 68
        push    qword [rax+60H]                         ; 1903 _ FF. 70, 60
        push    qword [rax+58H]                         ; 1906 _ FF. 70, 58
        push    qword [rax+50H]                         ; 1909 _ FF. 70, 50
        push    qword [rax+48H]                         ; 190C _ FF. 70, 48
        push    qword [rax+40H]                         ; 190F _ FF. 70, 40
        push    qword [rax+38H]                         ; 1912 _ FF. 70, 38
        push    qword [rax+30H]                         ; 1915 _ FF. 70, 30
        push    qword [rax+28H]                         ; 1918 _ FF. 70, 28
        push    qword [rax+20H]                         ; 191B _ FF. 70, 20
        push    qword [rax+18H]                         ; 191E _ FF. 70, 18
        push    qword [rax+10H]                         ; 1921 _ FF. 70, 10
        push    qword [rax+8H]                          ; 1924 _ FF. 70, 08
        call    CountExpr                               ; 1927 _ E8, 00000000(PLT r)
        sub     rsp, -128                               ; 192C _ 48: 83. EC, 80
        vcomisd xmm0, qword [rbp-20H]                   ; 1930 _ C5 F9: 2F. 45, E0
        jbe     ?_099                                   ; 1935 _ 76, 35
        mov     eax, dword [rbp-10H]                    ; 1937 _ 8B. 45, F0
        cdqe                                            ; 193A _ 48: 98
        imul    rdx, rax, 120                           ; 193C _ 48: 6B. D0, 78
        mov     rax, qword [rbp-18H]                    ; 1940 _ 48: 8B. 45, E8
        add     rax, rdx                                ; 1944 _ 48: 01. D0
        lea     rdx, [rax+8H]                           ; 1947 _ 48: 8D. 50, 08
        mov     eax, dword [rbp-10H]                    ; 194B _ 8B. 45, F0
        dec     eax                                     ; 194E _ FF. C8
        cdqe                                            ; 1950 _ 48: 98
        imul    rcx, rax, 120                           ; 1952 _ 48: 6B. C8, 78
        mov     rax, qword [rbp-18H]                    ; 1956 _ 48: 8B. 45, E8
        add     rax, rcx                                ; 195A _ 48: 01. C8
        add     rax, 8                                  ; 195D _ 48: 83. C0, 08
        mov     rsi, rdx                                ; 1961 _ 48: 89. D6
        mov     rdi, rax                                ; 1964 _ 48: 89. C7
        call    swapElement                             ; 1967 _ E8, 00000000(PLT r)
?_099:  inc     dword [rbp-10H]                         ; 196C _ FF. 45, F0
?_100:  mov     eax, dword [rbp-10H]                    ; 196F _ 8B. 45, F0
        cmp     eax, dword [rbp-8H]                     ; 1972 _ 3B. 45, F8
        jle     ?_098                                   ; 1975 _ 0F 8E, FFFFFF1A
        dec     dword [rbp-8H]                          ; 197B _ FF. 4D, F8
?_101:  mov     eax, dword [rbp-4H]                     ; 197E _ 8B. 45, FC
        cmp     eax, dword [rbp-8H]                     ; 1981 _ 3B. 45, F8
        jle     ?_094                                   ; 1984 _ 0F 8E, FFFFFE0C
        nop                                             ; 198A _ 90
        nop                                             ; 198B _ 90
        leave                                           ; 198C _ C9
        ret                                             ; 198D _ C3
; Sort End of function

errMessage1:; Function begin
        endbr64                                         ; 198E _ F3: 0F 1E. FA
        push    rbp                                     ; 1992 _ 55
        mov     rbp, rsp                                ; 1993 _ 48: 89. E5
        lea     rdi, [rel ?_138]                        ; 1996 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 199D _ E8, 00000000(PLT r)
        nop                                             ; 19A2 _ 90
        pop     rbp                                     ; 19A3 _ 5D
        ret                                             ; 19A4 _ C3
; errMessage1 End of function

errMessage2:; Function begin
        endbr64                                         ; 19A5 _ F3: 0F 1E. FA
        push    rbp                                     ; 19A9 _ 55
        mov     rbp, rsp                                ; 19AA _ 48: 89. E5
        lea     rdi, [rel ?_139]                        ; 19AD _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 19B4 _ E8, 00000000(PLT r)
        nop                                             ; 19B9 _ 90
        pop     rbp                                     ; 19BA _ 5D
        ret                                             ; 19BB _ C3
; errMessage2 End of function

main:   ; Function begin
        endbr64                                         ; 19BC _ F3: 0F 1E. FA
        push    rbp                                     ; 19C0 _ 55
        mov     rbp, rsp                                ; 19C1 _ 48: 89. E5
        lea     r11, [rsp-124000H]                      ; 19C4 _ 4C: 8D. 9C 24, FFEDC000
?_102:  sub     rsp, 4096                               ; 19CC _ 48: 81. EC, 00001000
        or      dword [rsp], 00H                        ; 19D3 _ 83. 0C 24, 00
        cmp     rsp, r11                                ; 19D7 _ 4C: 39. DC
        jnz     ?_102                                   ; 19DA _ 75, F0
        sub     rsp, 4016                               ; 19DC _ 48: 81. EC, 00000FB0
        mov     dword [rbp-124FA4H], edi                ; 19E3 _ 89. BD, FFEDB05C
        mov     qword [rbp-124FB0H], rsi                ; 19E9 _ 48: 89. B5, FFEDB050
        cmp     dword [rbp-124FA4H], 5                  ; 19F0 _ 83. BD, FFEDB05C, 05
        jz      ?_103                                   ; 19F7 _ 74, 14
        mov     eax, 0                                  ; 19F9 _ B8, 00000000
        call    errMessage1                             ; 19FE _ E8, 00000000(PLT r)
        mov     eax, 1                                  ; 1A03 _ B8, 00000001
        jmp     ?_109                                   ; 1A08 _ E9, 000001F5

?_103:  lea     rdi, [rel ?_140]                        ; 1A0D _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 1A14 _ E8, 00000000(PLT r)
        lea     rax, [rbp-124FA0H]                      ; 1A19 _ 48: 8D. 85, FFEDB060
        mov     rdi, rax                                ; 1A20 _ 48: 89. C7
        call    Init                                    ; 1A23 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-124FB0H]                ; 1A28 _ 48: 8B. 85, FFEDB050
        add     rax, 8                                  ; 1A2F _ 48: 83. C0, 08
        mov     rax, qword [rax]                        ; 1A33 _ 48: 8B. 00
        lea     rsi, [rel ?_141]                        ; 1A36 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 1A3D _ 48: 89. C7
        call    strcmp                                  ; 1A40 _ E8, 00000000(PLT r)
        test    eax, eax                                ; 1A45 _ 85. C0
        jnz     ?_104                                   ; 1A47 _ 75, 48
        mov     rax, qword [rbp-124FB0H]                ; 1A49 _ 48: 8B. 85, FFEDB050
        add     rax, 16                                 ; 1A50 _ 48: 83. C0, 10
        mov     rax, qword [rax]                        ; 1A54 _ 48: 8B. 00
        lea     rsi, [rel ?_142]                        ; 1A57 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 1A5E _ 48: 89. C7
        call    fopen                                   ; 1A61 _ E8, 00000000(PLT r)
        mov     qword [rbp-10H], rax                    ; 1A66 _ 48: 89. 45, F0
        mov     rdx, qword [rbp-10H]                    ; 1A6A _ 48: 8B. 55, F0
        lea     rax, [rbp-124FA0H]                      ; 1A6E _ 48: 8D. 85, FFEDB060
        mov     rsi, rdx                                ; 1A75 _ 48: 89. D6
        mov     rdi, rax                                ; 1A78 _ 48: 89. C7
        call    InC                                     ; 1A7B _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-10H]                    ; 1A80 _ 48: 8B. 45, F0
        mov     rdi, rax                                ; 1A84 _ 48: 89. C7
        call    fclose                                  ; 1A87 _ E8, 00000000(PLT r)
        jmp     ?_108                                   ; 1A8C _ E9, 000000B3

?_104:  mov     rax, qword [rbp-124FB0H]                ; 1A91 _ 48: 8B. 85, FFEDB050
        add     rax, 8                                  ; 1A98 _ 48: 83. C0, 08
        mov     rax, qword [rax]                        ; 1A9C _ 48: 8B. 00
        lea     rsi, [rel ?_143]                        ; 1A9F _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 1AA6 _ 48: 89. C7
        call    strcmp                                  ; 1AA9 _ E8, 00000000(PLT r)
        test    eax, eax                                ; 1AAE _ 85. C0
        jnz     ?_107                                   ; 1AB0 _ 75, 7E
        mov     rax, qword [rbp-124FB0H]                ; 1AB2 _ 48: 8B. 85, FFEDB050
        add     rax, 16                                 ; 1AB9 _ 48: 83. C0, 10
        mov     rax, qword [rax]                        ; 1ABD _ 48: 8B. 00
        mov     rdi, rax                                ; 1AC0 _ 48: 89. C7
        mov     eax, 0                                  ; 1AC3 _ B8, 00000000
        call    atoi                                    ; 1AC8 _ E8, 00000000(PLT r)
        mov     dword [rbp-4H], eax                     ; 1ACD _ 89. 45, FC
        cmp     dword [rbp-4H], 0                       ; 1AD0 _ 83. 7D, FC, 00
        jle     ?_105                                   ; 1AD4 _ 7E, 09
        cmp     dword [rbp-4H], 10000                   ; 1AD6 _ 81. 7D, FC, 00002710
        jle     ?_106                                   ; 1ADD _ 7E, 20
?_105:  mov     eax, dword [rbp-4H]                     ; 1ADF _ 8B. 45, FC
        mov     esi, eax                                ; 1AE2 _ 89. C6
        lea     rdi, [rel ?_144]                        ; 1AE4 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 1AEB _ B8, 00000000
        call    printf                                  ; 1AF0 _ E8, 00000000(PLT r)
        mov     eax, 3                                  ; 1AF5 _ B8, 00000003
        jmp     ?_109                                   ; 1AFA _ E9, 00000103

?_106:  mov     edi, 0                                  ; 1AFF _ BF, 00000000
        mov     eax, 0                                  ; 1B04 _ B8, 00000000
        call    time                                    ; 1B09 _ E8, 00000000(PLT r)
        mov     edi, eax                                ; 1B0E _ 89. C7
        mov     eax, 0                                  ; 1B10 _ B8, 00000000
        call    srand                                   ; 1B15 _ E8, 00000000(PLT r)
        mov     edx, dword [rbp-4H]                     ; 1B1A _ 8B. 55, FC
        lea     rax, [rbp-124FA0H]                      ; 1B1D _ 48: 8D. 85, FFEDB060
        mov     esi, edx                                ; 1B24 _ 89. D6
        mov     rdi, rax                                ; 1B26 _ 48: 89. C7
        call    InRndC                                  ; 1B29 _ E8, 00000000(PLT r)
        jmp     ?_108                                   ; 1B2E _ EB, 14

?_107:  mov     eax, 0                                  ; 1B30 _ B8, 00000000
        call    errMessage2                             ; 1B35 _ E8, 00000000(PLT r)
        mov     eax, 2                                  ; 1B3A _ B8, 00000002
        jmp     ?_109                                   ; 1B3F _ E9, 000000BE

?_108:  lea     rdi, [rel ?_145]                        ; 1B44 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 1B4B _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-124FB0H]                ; 1B50 _ 48: 8B. 85, FFEDB050
        add     rax, 24                                 ; 1B57 _ 48: 83. C0, 18
        mov     rax, qword [rax]                        ; 1B5B _ 48: 8B. 00
        lea     rsi, [rel ?_146]                        ; 1B5E _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 1B65 _ 48: 89. C7
        call    fopen                                   ; 1B68 _ E8, 00000000(PLT r)
        mov     qword [rbp-18H], rax                    ; 1B6D _ 48: 89. 45, E8
        mov     rdx, qword [rbp-18H]                    ; 1B71 _ 48: 8B. 55, E8
        lea     rax, [rbp-124FA0H]                      ; 1B75 _ 48: 8D. 85, FFEDB060
        mov     rsi, rdx                                ; 1B7C _ 48: 89. D6
        mov     rdi, rax                                ; 1B7F _ 48: 89. C7
        call    OutC                                    ; 1B82 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-18H]                    ; 1B87 _ 48: 8B. 45, E8
        mov     rdi, rax                                ; 1B8B _ 48: 89. C7
        call    fclose                                  ; 1B8E _ E8, 00000000(PLT r)
        lea     rax, [rbp-124FA0H]                      ; 1B93 _ 48: 8D. 85, FFEDB060
        mov     rdi, rax                                ; 1B9A _ 48: 89. C7
        call    Sort                                    ; 1B9D _ E8, 00000000(PLT r)
        lea     rdi, [rel ?_147]                        ; 1BA2 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 1BA9 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-124FB0H]                ; 1BAE _ 48: 8B. 85, FFEDB050
        add     rax, 32                                 ; 1BB5 _ 48: 83. C0, 20
        mov     rax, qword [rax]                        ; 1BB9 _ 48: 8B. 00
        lea     rsi, [rel ?_146]                        ; 1BBC _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 1BC3 _ 48: 89. C7
        call    fopen                                   ; 1BC6 _ E8, 00000000(PLT r)
        mov     qword [rbp-18H], rax                    ; 1BCB _ 48: 89. 45, E8
        mov     rdx, qword [rbp-18H]                    ; 1BCF _ 48: 8B. 55, E8
        lea     rax, [rbp-124FA0H]                      ; 1BD3 _ 48: 8D. 85, FFEDB060
        mov     rsi, rdx                                ; 1BDA _ 48: 89. D6
        mov     rdi, rax                                ; 1BDD _ 48: 89. C7
        call    OutC                                    ; 1BE0 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-18H]                    ; 1BE5 _ 48: 8B. 45, E8
        mov     rdi, rax                                ; 1BE9 _ 48: 89. C7
        call    fclose                                  ; 1BEC _ E8, 00000000(PLT r)
        lea     rdi, [rel ?_148]                        ; 1BF1 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 1BF8 _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 1BFD _ B8, 00000000
?_109:  leave                                           ; 1C02 _ C9
        ret                                             ; 1C03 _ C3
; main End of function


SECTION .data                           ; section number 2, data


SECTION .bss                            ; section number 3, bss


SECTION .rodata                         ; section number 4, const

?_110:                                                  ; byte
        db 25H, 64H, 20H, 25H, 73H, 00H                 ; 0000 _ %d %s.

?_111:                                                  ; byte
        db 49H, 74H, 20H, 69H, 73H, 20H, 66H, 6CH       ; 0006 _ It is fl
        db 6FH, 77H, 65H, 72H, 3AH, 20H, 66H, 6CH       ; 000E _ ower: fl
        db 6FH, 77H, 65H, 72H, 20H, 74H, 79H, 70H       ; 0016 _ ower typ
        db 65H, 20H, 3DH, 20H, 00H                      ; 001E _ e = .

?_112:                                                  ; byte
        db 64H, 6FH, 6DH, 65H, 73H, 74H, 69H, 63H       ; 0023 _ domestic
        db 00H                                          ; 002B _ .

?_113:                                                  ; byte
        db 67H, 61H, 72H, 64H, 65H, 6EH, 00H            ; 002C _ garden.

?_114:                                                  ; byte
        db 77H, 69H, 6CH, 64H, 00H                      ; 0033 _ wild.

?_115:                                                  ; byte
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0038 _ Invalid 
        db 70H, 6CH, 61H, 63H, 65H, 20H, 6EH, 75H       ; 0040 _ place nu
        db 6DH, 62H, 65H, 72H, 21H, 00H                 ; 0048 _ mber!.

?_116:                                                  ; byte
        db 2CH, 20H, 6EH, 61H, 6DH, 65H, 20H, 3DH       ; 004E _ , name =
        db 20H, 25H, 73H, 2EH, 20H, 43H, 6FH, 75H       ; 0056 _  %s. Cou
        db 6EH, 74H, 45H, 78H, 70H, 72H, 20H, 3DH       ; 005E _ ntExpr =
        db 20H, 25H, 66H, 0AH, 00H, 00H, 00H, 00H       ; 0066 _  %f.....
        db 00H, 00H                                     ; 006E _ ..

?_117:                                                  ; byte
        db 49H, 74H, 20H, 69H, 73H, 20H, 73H, 68H       ; 0070 _ It is sh
        db 72H, 75H, 62H, 3AH, 20H, 66H, 6CH, 6FH       ; 0078 _ rub: flo
        db 77H, 65H, 72H, 69H, 6EH, 67H, 20H, 73H       ; 0080 _ wering s
        db 65H, 61H, 73H, 6FH, 6EH, 20H, 3DH, 20H       ; 0088 _ eason = 
        db 00H                                          ; 0090 _ .

?_118:                                                  ; byte
        db 6AH, 61H, 6EH, 75H, 61H, 72H, 79H, 00H       ; 0091 _ january.

?_119:                                                  ; byte
        db 66H, 65H, 62H, 72H, 75H, 61H, 72H, 79H       ; 0099 _ february
        db 00H                                          ; 00A1 _ .

?_120:                                                  ; byte
        db 6DH, 61H, 72H, 63H, 68H, 00H                 ; 00A2 _ march.

?_121:                                                  ; byte
        db 61H, 70H, 72H, 69H, 6CH, 00H                 ; 00A8 _ april.

?_122:                                                  ; byte
        db 6DH, 61H, 79H, 00H                           ; 00AE _ may.

?_123:                                                  ; byte
        db 6AH, 75H, 6EH, 65H, 00H                      ; 00B2 _ june.

?_124:                                                  ; byte
        db 6AH, 75H, 6CH, 79H, 00H                      ; 00B7 _ july.

?_125:                                                  ; byte
        db 61H, 75H, 67H, 75H, 73H, 74H, 00H            ; 00BC _ august.

?_126:                                                  ; byte
        db 73H, 65H, 70H, 74H, 65H, 6DH, 62H, 65H       ; 00C3 _ septembe
        db 72H, 00H                                     ; 00CB _ r.

?_127:                                                  ; byte
        db 6FH, 63H, 74H, 6FH, 62H, 65H, 72H, 00H       ; 00CD _ october.

?_128:                                                  ; byte
        db 6EH, 6FH, 76H, 65H, 6DH, 62H, 65H, 72H       ; 00D5 _ november
        db 00H                                          ; 00DD _ .

?_129:                                                  ; byte
        db 64H, 65H, 63H, 65H, 6DH, 62H, 65H, 72H       ; 00DE _ december
        db 00H                                          ; 00E6 _ .

?_130:                                                  ; byte
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 00E7 _ Invalid 
        db 6DH, 6FH, 6EH, 74H, 68H, 20H, 6EH, 75H       ; 00EF _ month nu
        db 6DH, 62H, 65H, 72H, 21H, 00H                 ; 00F7 _ mber!.

?_131:                                                  ; byte
        db 25H, 6CH, 64H, 20H, 25H, 73H, 00H, 00H       ; 00FD _ %ld %s..
        db 00H, 00H, 00H                                ; 0105 _ ...

?_132:                                                  ; byte
        db 49H, 74H, 20H, 69H, 73H, 20H, 74H, 72H       ; 0108 _ It is tr
        db 65H, 65H, 3AH, 20H, 61H, 67H, 65H, 20H       ; 0110 _ ee: age 
        db 3DH, 20H, 25H, 6CH, 64H, 2CH, 20H, 6EH       ; 0118 _ = %ld, n
        db 61H, 6DH, 65H, 20H, 3DH, 20H, 25H, 73H       ; 0120 _ ame = %s
        db 2EH, 20H, 43H, 6FH, 75H, 6EH, 74H, 45H       ; 0128 _ . CountE
        db 78H, 70H, 72H, 20H, 3DH, 20H, 25H, 66H       ; 0130 _ xpr = %f
        db 0AH, 00H                                     ; 0138 _ ..

?_133:                                                  ; byte
        db 25H, 64H, 00H                                ; 013A _ %d.

?_134:                                                  ; byte
        db 25H, 73H, 20H, 25H, 73H, 00H                 ; 013D _ %s %s.

?_135:                                                  ; byte
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0143 _ Invalid 
        db 70H, 6CH, 61H, 6EH, 74H, 20H, 74H, 79H       ; 014B _ plant ty
        db 70H, 65H, 21H, 0AH, 00H                      ; 0153 _ pe!..

?_136:                                                  ; byte
        db 43H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H       ; 0158 _ Containe
        db 72H, 20H, 63H, 6FH, 6EH, 74H, 61H, 69H       ; 0160 _ r contai
        db 6EH, 73H, 20H, 25H, 64H, 20H, 65H, 6CH       ; 0168 _ ns %d el
        db 65H, 6DH, 65H, 6EH, 74H, 73H, 2EH, 0AH       ; 0170 _ ements..
        db 00H                                          ; 0178 _ .

?_137:                                                  ; byte
        db 25H, 64H, 3AH, 20H, 00H, 00H, 00H            ; 0179 _ %d: ...

?_138:                                                  ; byte
        db 69H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 0180 _ incorrec
        db 74H, 20H, 63H, 6FH, 6DH, 6DH, 61H, 6EH       ; 0188 _ t comman
        db 64H, 20H, 6CH, 69H, 6EH, 65H, 21H, 0AH       ; 0190 _ d line!.
        db 20H, 20H, 57H, 61H, 69H, 74H, 65H, 64H       ; 0198 _   Waited
        db 3AH, 0AH, 20H, 20H, 20H, 20H, 20H, 63H       ; 01A0 _ :.     c
        db 6FH, 6DH, 6DH, 61H, 6EH, 64H, 20H, 2DH       ; 01A8 _ ommand -
        db 66H, 20H, 69H, 6EH, 66H, 69H, 6CH, 65H       ; 01B0 _ f infile
        db 20H, 6FH, 75H, 74H, 66H, 69H, 6CH, 65H       ; 01B8 _  outfile
        db 30H, 31H, 20H, 6FH, 75H, 74H, 66H, 69H       ; 01C0 _ 01 outfi
        db 6CH, 65H, 30H, 32H, 0AH, 20H, 20H, 4FH       ; 01C8 _ le02.  O
        db 72H, 3AH, 0AH, 20H, 20H, 20H, 20H, 20H       ; 01D0 _ r:.     
        db 63H, 6FH, 6DH, 6DH, 61H, 6EH, 64H, 20H       ; 01D8 _ command 
        db 2DH, 6EH, 20H, 6EH, 75H, 6DH, 62H, 65H       ; 01E0 _ -n numbe
        db 72H, 20H, 6FH, 75H, 74H, 66H, 69H, 6CH       ; 01E8 _ r outfil
        db 65H, 30H, 31H, 20H, 6FH, 75H, 74H, 66H       ; 01F0 _ e01 outf
        db 69H, 6CH, 65H, 30H, 32H, 00H, 00H, 00H       ; 01F8 _ ile02...

?_139:                                                  ; byte
        db 69H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 0200 _ incorrec
        db 74H, 20H, 71H, 75H, 61H, 6CH, 69H, 66H       ; 0208 _ t qualif
        db 69H, 65H, 72H, 20H, 76H, 61H, 6CH, 75H       ; 0210 _ ier valu
        db 65H, 21H, 0AH, 20H, 20H, 57H, 61H, 69H       ; 0218 _ e!.  Wai
        db 74H, 65H, 64H, 3AH, 0AH, 20H, 20H, 20H       ; 0220 _ ted:.   
        db 20H, 20H, 63H, 6FH, 6DH, 6DH, 61H, 6EH       ; 0228 _   comman
        db 64H, 20H, 2DH, 66H, 20H, 69H, 6EH, 66H       ; 0230 _ d -f inf
        db 69H, 6CH, 65H, 20H, 6FH, 75H, 74H, 66H       ; 0238 _ ile outf
        db 69H, 6CH, 65H, 30H, 31H, 20H, 6FH, 75H       ; 0240 _ ile01 ou
        db 74H, 66H, 69H, 6CH, 65H, 30H, 32H, 0AH       ; 0248 _ tfile02.
        db 20H, 20H, 4FH, 72H, 3AH, 0AH, 20H, 20H       ; 0250 _   Or:.  
        db 20H, 20H, 20H, 63H, 6FH, 6DH, 6DH, 61H       ; 0258 _    comma
        db 6EH, 64H, 20H, 2DH, 6EH, 20H, 6EH, 75H       ; 0260 _ nd -n nu
        db 6DH, 62H, 65H, 72H, 20H, 6FH, 75H, 74H       ; 0268 _ mber out
        db 66H, 69H, 6CH, 65H, 30H, 31H, 20H, 6FH       ; 0270 _ file01 o
        db 75H, 74H, 66H, 69H, 6CH, 65H, 30H, 32H       ; 0278 _ utfile02
        db 00H                                          ; 0280 _ .

?_140:                                                  ; byte
        db 53H, 74H, 61H, 72H, 74H, 00H                 ; 0281 _ Start.

?_141:                                                  ; byte
        db 2DH, 66H, 00H                                ; 0287 _ -f.

?_142:                                                  ; byte
        db 72H, 00H                                     ; 028A _ r.

?_143:                                                  ; byte
        db 2DH, 6EH, 00H, 00H                           ; 028C _ -n..

?_144:                                                  ; byte
        db 69H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 0290 _ incorrec
        db 74H, 20H, 6EH, 75H, 6DH, 65H, 72H, 20H       ; 0298 _ t numer 
        db 6FH, 66H, 20H, 66H, 69H, 67H, 75H, 72H       ; 02A0 _ of figur
        db 65H, 73H, 20H, 3DH, 20H, 25H, 64H, 2EH       ; 02A8 _ es = %d.
        db 20H, 20H, 53H, 65H, 74H, 20H, 30H, 20H       ; 02B0 _   Set 0 
        db 3CH, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H       ; 02B8 _ < number
        db 20H, 3CH, 3DH, 20H, 31H, 30H, 30H, 30H       ; 02C0 _  <= 1000
        db 30H, 0AH, 00H                                ; 02C8 _ 0..

?_145:                                                  ; byte
        db 46H, 69H, 6CH, 6CH, 65H, 64H, 20H, 63H       ; 02CB _ Filled c
        db 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H, 72H       ; 02D3 _ ontainer
        db 3AH, 00H                                     ; 02DB _ :.

?_146:                                                  ; byte
        db 77H, 00H                                     ; 02DD _ w.

?_147:                                                  ; byte
        db 43H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H       ; 02DF _ Containe
        db 72H, 20H, 61H, 66H, 74H, 65H, 72H, 20H       ; 02E7 _ r after 
        db 73H, 6FH, 72H, 74H, 69H, 6EH, 67H, 3AH       ; 02EF _ sorting:
        db 00H                                          ; 02F7 _ .

?_148:                                                  ; byte
        db 53H, 74H, 6FH, 70H, 00H, 00H, 00H, 00H       ; 02F8 _ Stop....

?_149:  dq 0000000000000000H                            ; 0300 _ 0000000000000000 


