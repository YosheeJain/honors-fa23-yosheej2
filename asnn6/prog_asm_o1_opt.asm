__cxx_global_var_init:                  # @__cxx_global_var_init
        push    RBP
        mov     RBP, RSP
        mov     EDI, std::__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     EDI, std::ios_base::Init::~Init() [complete object destructor]
        mov     ESI, std::__ioinit
        mov     EDX, __dso_handle
        pop     RBP
        jmp     __cxa_atexit            # TAILCALL

factorial(int):                          # @factorial(int)
        push    RBP
        mov     RBP, RSP
        mov     EAX, 1
        jmp     .LBB1_1
.LBB1_3:                                # %if.else
        imul    EAX, EDI
        dec     EDI
.LBB1_1:                                # %tailrecurse
        cmp     EDI, 13
        jae     .LBB1_5
        test    EDI, EDI
        jne     .LBB1_3
        pop     RBP
        ret
.LBB1_5:                                # %if.then
        mov     EDI, std::cout
        mov     ESI, .L.str
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     RDI, RAX
        mov     ESI, std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        mov     EDI, 1
        call    exit

global constructors keyed to a:                           # @global constructors keyed to a
        jmp     __cxx_global_var_init   # TAILCALL

.L.str:
        .asciz   "Please enter a number between 0 and 12 (inclusive)."