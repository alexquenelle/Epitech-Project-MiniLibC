##
## EPITECH PROJECT, 2021
## b_miniLibC
## File description:
## Makefile
##

SRC			=	src/strlen.s	\
				src/strcmp.s	\
				src/strchr.s	\
				src/strncmp.s	\
				src/memset.s	\
				src/memcpy.s	\
				src/strcasecmp.s\
				src/rindex.s	\
				src/strstr.s	\

BUILDDIR	=	obj

OBJ			=	$(SRC:%.s=$(BUILDDIR)/%.o)

NAME		=	libasm.so

CC			=	ld

LD			=	$(CC)

AS 			=	nasm

ASFLAGS		= 	-felf64

LDFLAGS		=	-shared

all:	$(NAME)

$(NAME):	$(OBJ)
	$(LINK.o) $^ $(LDLIBS) $(OUTPUT_OPTION)

clean:
	rm -rf $(BUILDDIR)
	rm -f *.gc*
	rm -f a.out

fclean: clean
	rm -f $(NAME)

re:	fclean all

.SECONDEXPANSION:
$(BUILDDIR)/%.o : %.s | $$(@D)/.
	$(COMPILE.s) $(OUTPUT_OPTION) $<

$(BUILDDIR)/.:
	mkdir $@

$(BUILDDIR)%/.:
	mkdir -p $@

.PRECIOUS:	$(BUILDDIR)/. $(BUILDDIR)%/.

.PHONY: all re clean fclean