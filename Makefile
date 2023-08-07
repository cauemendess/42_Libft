NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
HEADER = libft.h

OBJ_PATH = ./bin/

SOURCES = \
	ft_atoi.c \
	ft_bzero.c \
	ft_calloc.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_itoa.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memset.c \
	ft_putchar_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_putstr_fd.c \
	ft_split.c \
	ft_strchr.c \
	ft_strdup.c \
	ft_striteri.c \
	ft_strjoin.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strlen.c \
	ft_strmapi.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_strrchr.c \
	ft_strtrim.c \
	ft_substr.c \
	ft_tolower.c \
	ft_toupper.c


BONUS_SOURCES = \
	ft_lstadd_back.c \
	ft_lstadd_front.c \
	ft_lstclear.c \
	ft_lstdelone.c \
	ft_lstiter.c \
	ft_lstlast.c \
	ft_lstmap.c \
	ft_lstnew.c \
	ft_lstsize.c


OBJECTS = $(addprefix $(OBJ_PATH), $(SOURCES:%.c=%.o))
BONUS_OBJECTS = $(addprefix $(OBJ_PATH), $(BONUS_SOURCES:%.c=%.o))

all: $(OBJ_PATH) $(NAME)

$(NAME): $(OBJECTS) $(BONUS_OBJECTS)
	ar -rcs $(NAME) $?

$(OBJ_PATH)%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ -I $(HEADER)
	
$(OBJ_PATH):
	mkdir -p $(OBJ_PATH)

bonus:
	@make OBJECTS="$(BONUS_OBJECTS)" --no-print-directory

clean:
	rm -rf $(OBJ_PATH)

fclean: clean
	rm -f $(NAME)
	rm -rf $(OBJ_PATH)

re: fclean all

.PH: all clean re fclean
