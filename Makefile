##
## Makefile for Ninja tounu in /home/ungaro_l/perso/ludumdare
## 
## Made by Luca Ungaro
## Login   <ungaro_l@epitech.net>
## 
## Started on  Sat Dec 12 04:21:03 2015 Luca Ungaro
## Last update Sat Dec 12 15:34:22 2015 Luca Ungaro
##

NAME	= ninja

CP	= cp -u

RM	= rm -f

SRCS	= srcs

LIB	= ../liblapin1.5_release

CFLAGS	= -I$(LIB)

LDFLAGS	= -L$(LIB) \
	-llapin \
	-lsfml-audio \
	-lsfml-graphics \
	-lsfml-window \
	-lsfml-system \
	-lstdc++ -ldl \
	-lm

all:	 $(NAME)

$(NAME):
	$(RM) $(NAME)
	make CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" -C $(SRCS)
	$(CP) $(SRCS)/$(NAME) .

relink:
	make relink CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" -C $(SRCS)
	$(CP) $(SRCS)/$(NAME) .

clean:
	make clean -C $(SRCS)

fclean:
	make fclean -C $(SRCS)
	$(RM) $(NAME)

re:	fclean all

.PHONY: all relink clean fclean re