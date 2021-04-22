OB	=	libasm.so

CC	=	ld

RM	=	rm -f

CFLAGS	+=	-shared

SRCS	=	./lib/memset.asm	\
		./lib/memmove.asm	\
		./lib/memcpy.asm	\
		./lib/rindex.asm	\
		./lib/strchr.asm	\
		./lib/strstr.asm	\
		./lib/strcmp.asm	\
		./lib/strlen.asm	\
		./lib/strncmp.asm	\
		./lib/strpbrk.asm	\
		./lib/strcspn.asm	\
		./lib/strcasecmp.asm

OBJS	=	$(SRCS:.asm=.o)

%.o:	%.asm
	nasm -felf64 $<

all:	obj
	$(RM) $(OBJS)

obj:	$(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(OB)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(OB)

re: fclean all

.PHONY: all clean fclean re
