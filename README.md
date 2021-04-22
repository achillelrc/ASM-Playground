

# Assembly Playground
## Description

Implementation of some well known C functions to improve my assembly skills.<br>
The Makefile uses [NASM](https://en.wikipedia.org/wiki/Netwide_Assembler) to assemble object files and [ld](https://en.wikipedia.org/wiki/GNU_linker) for linking them into a shared library.

## Usage

Compile the lib :

    make

Compile your program :

    gcc test.c -lasm -L.

Do not forget to specify the path of our library : 

     LD_LIBRARY_PATH=. ./a.out


## Implemented functions :
- **[strcmp](https://man7.org/linux/man-pages/man3/strcmp.3.html)**
- **[strlen](https://man7.org/linux/man-pages/man3/strlen.3.html)**
- **[strstr](https://man7.org/linux/man-pages/man3/strstr.3.html)**
- **[strcasecmp](https://man7.org/linux/man-pages/man3/strcasecmp.3.html)**
- **[strchr](https://man7.org/linux/man-pages/man3/strchr.3.html)**
- **[strcspn](https://man7.org/linux/man-pages/man3/strcspn.3.html)**
- **[strncmp](https://man7.org/linux/man-pages/man3/strncmp.3.html)**
- **[strpbrk](https://man7.org/linux/man-pages/man3/strpbrk.3.html)**
- **[rindex](https://man7.org/linux/man-pages/man3/rindex.3.html)**
- **[memcpy](https://man7.org/linux/man-pages/man3/memcpy.3.html)**
- **[memmove](https://man7.org/linux/man-pages/man3/memmove.3.html)**
- **[memset](https://man7.org/linux/man-pages/man3/memset.3.html)**


