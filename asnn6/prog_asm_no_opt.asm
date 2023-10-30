__cxx_global_var_init:                  # @__cxx_global_var_init
        push    RBP
        mov     RBP, RSP
        sub     RSP, 16
        lea     RDI, QWORD PTR [_ZStL8__ioinit]
        call    std::ios_base::Init::Init() [complete object constructor]
        lea     RDI, QWORD PTR [_ZNSt8ios_base4InitD1Ev]
        lea     RSI, QWORD PTR [_ZStL8__ioinit]
        lea     RAX, QWORD PTR [__dso_handle]
        mov     RDX, RAX
        call    __cxa_atexit
        mov     DWORD PTR [RBP - 4], EAX # 4-byte Spill
        add     RSP, 16
        pop     RBP
        ret

factorial(int):                          # @factorial(int)
        push    RBP
        mov     RBP, RSP
        sub     RSP, 32
        mov     DWORD PTR [RBP - 8], EDI
        cmp     DWORD PTR [RBP - 8], 0
        jl      .LBB1_2
        cmp     DWORD PTR [RBP - 8], 12
        jle     .LBB1_3
.LBB1_2:                                # %if.then
        lea     RDI, QWORD PTR [_ZSt4cout]
        lea     RSI, QWORD PTR [.L.str]
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        lea     RSI, QWORD PTR [_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
        mov     RDI, RAX
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        mov     EDI, 1
        mov     QWORD PTR [RBP - 16], RAX # 8-byte Spill
        call    exit
.LBB1_3:                                # %if.end
        cmp     DWORD PTR [RBP - 8], 0
        jne     .LBB1_5
        mov     DWORD PTR [RBP - 4], 1
        jmp     .LBB1_6
.LBB1_5:                                # %if.else
        mov     EAX, DWORD PTR [RBP - 8]
        mov     ECX, DWORD PTR [RBP - 8]
        sub     ECX, 1
        mov     EDI, ECX
        mov     DWORD PTR [RBP - 20], EAX # 4-byte Spill
        call    factorial(int)
        mov     ECX, DWORD PTR [RBP - 20] # 4-byte Reload
        imul    EAX, ECX
        mov     DWORD PTR [RBP - 4], EAX
.LBB1_6:                                # %return
        mov     EAX, DWORD PTR [RBP - 4]
        add     RSP, 32
        pop     RBP
        ret

global constructors keyed to a:                           # @global constructors keyed to a
        push    RBP
        mov     RBP, RSP
        call    __cxx_global_var_init
        pop     RBP
        ret

.L.str:
        .asciz   "Please enter a number between 0 and 12 (inclusive)."