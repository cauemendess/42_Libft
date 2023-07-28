# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: csilva-m <csilva-m@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/19 17:38:57 by csilva-m          #+#    #+#              #
#    Updated: 2023/07/28 14:34:04 by csilva-m         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
HEADER = libft.h

OBJ_PATH = ./bin/

SOURCES = ft_isalpha.c ft_isalnum.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c \
ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c ft_strdup.c ft_strlcat.c ft_strlcpy.c \
ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c ft_bzero.c \
ft_calloc.c ft_atoi.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
ft_striteri.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c

OBJECTS = $(addprefix $(OBJ_PATH), $(SOURCES:%.c=%.o))

all: $(OBJ_PATH) $(NAME)

$(NAME): $(OBJECTS)
	ar -rcs $(NAME) $?

$(OBJ_PATH)%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ -I $(HEADER)
	
$(OBJ_PATH):
	mkdir -p $(OBJ_PATH)

clean:
	rm -rf $(OBJ_PATH)

fclean: clean
	rm -f $(NAME)
	rm -rf $(OBJ_PATH)

re: fclean all

.PH: all clean re fclean
