factorial(int):                          # @factorial(int)
        push    RBP
        mov     RBP, RSP
        push    RBX
        push    RAX
        mov     EAX, 1
        jmp     .LBB0_1
.LBB0_7:                                # %if.end
        test    EDI, EDI
        je      .LBB0_9
        imul    EAX, EDI
        dec     EDI
.LBB0_1:                                # %tailrecurse
        cmp     EDI, 13
        jb      .LBB0_7
        mov     EDI, std::cout
        mov     ESI, .L.str
        mov     EDX, 51
        call    std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
        mov     RAX, QWORD PTR [RIP + std::cout]
        mov     RAX, QWORD PTR [RAX - 24]
        mov     RBX, QWORD PTR [RAX + std::cout+240]
        test    RBX, RBX
        je      .LBB0_10
        cmp     BYTE PTR [RBX + 56], 0
        je      .LBB0_5
        mov     AL, BYTE PTR [RBX + 67]
        jmp     .LBB0_6
.LBB0_5:                                # %if.end.i
        mov     RDI, RBX
        call    std::ctype<char>::_M_widen_init() const
        mov     RAX, QWORD PTR [RBX]
        mov     RDI, RBX
        mov     ESI, 10
        call    QWORD PTR [RAX + 48]
.LBB0_6:                                # %_ZNKSt5ctypeIcE5widenEc.exit
        movsx   ESI, AL
        mov     EDI, std::cout
        call    std::basic_ostream<char, std::char_traits<char> >::put(char)
        mov     RDI, RAX
        call    std::basic_ostream<char, std::char_traits<char> >::flush()
        mov     EDI, 1
        call    exit
.LBB0_9:                                # %return
        add     RSP, 8
        pop     RBX
        pop     RBP
        ret
.LBB0_10:                               # %if.then.i12
        call    std::__throw_bad_cast()

global constructors keyed to a:                           # @global constructors keyed to a
        push    RBP
        mov     RBP, RSP
        mov     EDI, std::__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     EDI, std::ios_base::Init::~Init() [complete object destructor]
        mov     ESI, std::__ioinit
        mov     EDX, __dso_handle
        pop     RBP
        jmp     __cxa_atexit            # TAILCALL

.L.str:
        .asciz   "Please enter a number between 0 and 12 (inclusive)."