NAME	= lol_program

CC	= g++

RM	= rm -f

SRCS	= ./main.cpp 

OBJS	= $(SRCS:.cpp=.o)

CPPFLAGS = -I ./pp
CPPFLAGS += -Wall -Wextra

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

SFMLFLAGS = -lsfml-graphics -lsfml-window -lsfml-audio -lsfml-network -lsfml-system
SFMLFLAGSOPT = $(PWD)/SFML-2.5.1/

all: init $(NAME)

init:
	$(CC) -c $(SRCS) -I$(SFMLFLAGSOPT)include

$(NAME): $(OBJS)
	 $(CC) $(OBJS) -o $(NAME) -L$(SFMLFLAGSOPT)lib $(SFMLFLAGS) $(LDFLAGS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
