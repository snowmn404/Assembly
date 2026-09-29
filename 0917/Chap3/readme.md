1. Provide examples of three different instruction mnemonics.

정답: MOV, ADD, SUB, JMP, MUL, CALL 등 (이 중 3개)

2. What is a calling convention, and how is it used in assembly language declarations?

정답: 호출 규약은 서브루틴(함수)을 호출할 때 매개변수 전달 방식, 레지스터 사용 및 보존 방식, 스택 정리 주체(호출자 또는 피호출자) 등을 정의한 규칙입니다. 어셈블리어에서는 .MODEL 지시어와 함께 선언되어(예: .MODEL flat, stdcall) 외부 프로시저와의 인터페이스 방식을 결정하는 데 사용됩니다.

3. How do you reserve space for the stack in a program?

정답: .STACK 지시어를 사용하여 예약합니다. (예: .STACK 4096)

4. Explain why the term assembler language is not quite correct.

정답: '어셈블러(Assembler)'는 어셈블리어로 작성된 소스 코드를 기계어로 번역해주는 '프로그램(번역기)'을 뜻하기 때문입니다. 언어 그 자체를 지칭할 때는 '어셈블리 언어(Assembly language)'라고 부르는 것이 올바릅니다.

5. Explain the difference between big endian and little endian. Also, look up the origins of this term on the Web.

정답 
차이점: 빅 엔디안은 데이터의 최상위 바이트(MSB, 가장 큰 값)를 가장 낮은 메모리 주소에 저장하는 방식이고, 리틀 엔디안은 최하위 바이트(LSB, 가장 작은 값)를 가장 낮은 주소에 저장하는 방식입니다. (x86 프로세서는 리틀 엔디안을 사용합니다.)

기원: 조너선 스위프트의 소설 《걸리버 여행기》에서 유래했습니다. 삶은 달걀을 깰 때 둥근 쪽(Big end)을 먼저 깨야 한다고 주장하는 사람들(Big-endians)과 뾰족한 쪽(Little end)을 먼저 깨야 한다고 주장하는 사람들(Little-endians) 간의 사소한 논쟁을 빗댄 용어입니다.

6. Why might you use a symbolic constant rather than an integer literal in your code?

정답: 코드의 가독성을 높이고 유지보수를 쉽게 하기 위해서입니다. 값이 변경될 때 코드 전체를 수정할 필요 없이 상수 선언부 한 곳만 수정하면 되기 때문에 오류 발생 확률을 줄여줍니다.

7. How is a source file different from a listing file?

정답: 소스 파일(.asm)은 프로그래머가 작성한 어셈블리어 텍스트 코드입니다. 리스팅 파일(.lst)은 어셈블러가 소스 파일을 번역한 후 생성하는 출력 파일로, 원본 코드와 함께 생성된 기계어 코드, 메모리 주소, 심볼 테이블, 오류 메시지 등이 포함된 문서입니다.

8. How are data labels and code labels different?

정답: 데이터 레이블은 데이터 세그먼트에서 변수의 메모리 주소를 식별하며 뒤에 콜론을 붙이지 않습니다(예: count DWORD 0). 코드 레이블은 코드 세그먼트에서 점프(JUMP)나 루프의 목적지 주소를 식별하며 뒤에 콜론(:)이 붙습니다(예: L1:).

9. (True/False): An identifier cannot begin with a numeric digit.

정답: 참 (True). 식별자는 문자나 밑줄(_) 등으로 시작해야 합니다.

10. (True/False): A hexadecimal literal may be written as 0x3A.

정답: 거짓 (False). (MASM 어셈블러 기준) MASM 등 전통적인 x86 어셈블러에서는 3Ah와 같이 접미사 h를 사용합니다. 0x 접두어는 C/C++나 NASM 같은 환경에서 쓰입니다.

11. (True/False): Assembly language directives execute at runtime.

정답: 거짓 (False). 지시어는 프로그램 실행(런타임) 중이 아니라 소스 코드를 번역하는 '어셈블 타임'에 어셈블러에게 명령을 내리기 위해 사용됩니다.

12. (True/False): Assembly language directives can be written in any combination of uppercase and lowercase letters.

정답: 참 (True). 기본적으로 MASM 등의 어셈블러는 대소문자를 구분하지 않습니다(Case-insensitive).

13. Name the four basic parts of an assembly language instruction.

정답: 레이블(Label, 선택적), 명령어 니모닉(Instruction mnemonic), 피연산자(Operand, 선택적), 주석(Comment, 선택적).

14. (True/False): MOV is an example of an instruction mnemonic.

정답: 참 (True).

15. (True/False): A code label is followed by a colon (:), but a data label does not end with a colon.

정답: 참 (True).

16. Show an example of a block comment.

정답: MASM에서는 COMMENT 지시어와 사용자 지정 문자를 사용합니다.

17. Why is it not a good idea to use numeric addresses when writing instructions that access variables?

정답: 프로그램이 수정되어 새 데이터가 추가되거나 코드가 변경되면 변수의 실제 메모리 주소도 바뀌게 됩니다. 숫자 주소를 직접 사용하면 변경될 때마다 모든 코드를 다시 계산해 수정해야 하지만, 이름(레이블)을 사용하면 어셈블러가 자동으로 바뀐 주소를 계산해 주기 때문입니다.

18. What type of argument must be passed to the ExitProcess procedure?

정답: 반환 코드(Return Code)를 나타내는 32비트 정수(일반적으로 0)입니다.

19. Which directive ends a procedure?

정답: ENDP

20. In 32-bit mode, what is the purpose of the identifier in the END directive?

정답: 프로그램 실행이 시작되는 진입점(Entry point)을 지정하기 위함입니다. (예: END main은 main 프로시저부터 실행을 시작하라는 뜻입니다.)

21. What is the purpose of the PROTO directive?

정답: 외부 프로시저(함수)의 프로토타입을 선언하기 위해 사용합니다. 이를 통해 어셈블러가 해당 프로시저를 호출할 때 전달되는 매개변수의 개수와 크기가 올바른지 검사할 수 있습니다.

22. (True/False): An Object file is produced by the Linker.

정답: 거짓 (False).

23. (True/False): A Listing file is produced by the Assembler.

정답: 참 (True).

24. (True/False): A link library is added to a program just before producing an Executable file.

정답: 참 (True)

25. Which data directive creates a 32-bit signed integer variable?

정답: SDWORD

26. Which data directive creates a 16-bit signed integer variable?

정답: SWORD

27. Which data directive creates a 64-bit unsigned integer variable?

정답: QWORD

28. Which data directive creates an 8-bit signed integer variable?

정답: SBYTE

29. Which data directive creates a 10-byte packed BCD variable?

정답: TBYTE

1. Define four symbolic constants that represent integer 25 in decimal, binary, octal,
and hexadecimal formats.
정답:   DEC_VAL = 25 (또는 DEC_VAL = 25d)   BIN_VAL = 00011001b   OCT_VAL = 31o (또는 31q)   HEX_VAL = 19h   

2. Find out, by trial and error, if a program can have multiple code and data segments.
정답: 여러 개의 세그먼트를 가질 수 있습니다 (Yes).

3. Create a data definition for a doubleword that stored it in memory in big endian
format.
정답: (예시 값 12345678h 기준) myVar BYTE 12h, 34h, 56h, 78h

4. Find out if you can declare a variable of type DWORD and assign it a negative
value. What does this tell you about the assembler’s type checking?
정답: 할당할 수 있습니다 (예: myVar DWORD -1). 이는 어셈블러가 부호(Signed/Unsigned)에 대한 타입 검사를 엄격하게 하지 않는다는 것을 의미합니다.

5. Write a program that contains two instructions: (1) add the number 5 to the EAX
register, and (2) add 5 to the EDX register. Generate a listing file and examine the
machine code generated by the assembler. What differences, if any, did you find
between the two instructions?
정답: 두 명령어의 목적지 레지스터를 식별하는 기계어 바이트(ModR/M 필드 또는 레지스터 필드) 부분의 값이 다릅니다.

6. Given the number 456789ABh, list out its byte values in little-endian order.
정답: ABh, 89h, 67h, 45h

7. Declare an array of 120 uninitialized unsigned doubleword values.
정답: myArray DWORD 120 DUP(?)

8. Declare an array of byte and initialize it to the first 5 letters of the alphabet.
정답: myArray BYTE "ABCDE" (또는 myArray BYTE 'A', 'B', 'C', 'D', 'E')

9. Declare a 32-bit signed integer variable and initialize it with the smallest possible
negative decimal value. (Hint: Refer to integer ranges in Chapter 1.)
정답: myVar SDWORD -2147483648

10. Declare an unsigned 16-bit integer variable named wArray that uses three initializers.
정답: wArray WORD 10, 20, 30

11. Declare a string variable containing the name of your favorite color. Initialize it as
a nullterminated string.
정답: (예시: 파란색) myColor BYTE "Blue", 0

12. Declare an uninitialized array of 50 signed doublewords named dArray.
정답: dArray SDWORD 50 DUP(?)

13. Declare a string variable containing the word “TEST” repeated 500 times.
정답: myString BYTE 500 DUP("TEST")

14. Declare an array of 20 unsigned bytes named bArray and initialize all elements to
zero.
정답: bArray BYTE 20 DUP(0)

15. Show the order of individual bytes in memory (lowest to highest) for the following doubleword variable:
val1 DWORD 87654321h
정답: 21h, 43h, 65h, 87h
