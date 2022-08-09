# dz80
 a path following z80 disassembler
 
 ----------------------------------------------------------------------------------------------------------------------------

dz80 command line z80 code tracer/disassembler by lovebug, https://lovebyte.eu.org

Usage: dz80 binInput mapInput traceOutput assemblerOutput

binInput:        name of binary file to disassemble\
mapInput:        name of text file to control the disassembly process\
traceOutput:     name of text file that will be generated during the trace phase\
assemblerOutput: name of text file that will be generated during the disassembly phase\

----------------------------------------------------------------------------------------------------------------------------
see top of main.c source code for changes and known issues
----------------------------------------------------------------------------------------------------------------------------

how it works

the first phase the disassembler will trace the code from the addresses supplied in the map file by following branches,
jumps, calls to map out the program code paths

it creates labels for jump addresses which are named as Jxxxx: where xxxx is the actual 4 digit hexadecimal address

it creates labels for data table addresses which are named as Txxxx: when it discovers a 16 bit load instruction like ld hl, $nnnn
when the value of nnnn is within the address range of the input file and could possibly be a data table reference

the second phase disassembles the code from start to finish outputting jump/data address labels where marked and
either z80 mnemonics or databytes depending on how the locations are marked

----------------------------------------------------------------------------------------------------------------------------

map file format

any line start starts with ; is ignored and is just a comment

first value encountered in the map file is the base address location within the 64K z80 map for the binary input file
any values following the first entry will be addresses to start tracing (disassembling)

for the ladybug.bin file supplied for testing there are 4 entrys in the map file
the address for the binary, the main reset address for the code and two addresses for the int and nmi interrupts

----------------------------------------------------------------------------------------------------------------------------

```
; base address for ladybug.bin 24KBytes @ $0000-$5fff
0x0000

; reset boot
0x0000

; int interrupt (used for coin input)
0x0038

; nmi interrupt (used for coin input)
0x0066
```

----------------------------------------------------------------------------------------------------------------------------
