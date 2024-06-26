NAME = libft.a

SCRS = ft_atoi.c\
ft_bzero.c\
ft_calloc.c\
ft_isalnum.c\
ft_isalpha.c\
ft_isascii.c\
ft_isdigit.c\
ft_isprint.c\
ft_itoa.c\
ft_memchr.c\
ft_memcmp.c\
ft_memcpy.c\
ft_memmove.c\
ft_memset.c\
ft_putchar_fd.c\
ft_putendl_fd.c\
ft_putnbr_fd.c\
ft_putstr_fd.c\
ft_split.c\
ft_strchr.c\
ft_strdup.c\
ft_striteri.c\
ft_strjoin.c\
ft_strlcat.c\
ft_strlcpy.c\
ft_strlen.c\
ft_strmapi.c\
ft_strncmp.c\
ft_strnstr.c\
ft_strrchr.c\
ft_strtrim.c\
ft_substr.c\
ft_tolower.c\
ft_toupper.c\
ft_lstnew_bonus.c\
ft_lstadd_front_bonus.c\
ft_lstsize_bonus.c\
ft_lstlast_bonus.c\
ft_lstadd_back_bonus.c\
ft_lstdelone_bonus.c\
ft_lstclear_bonus.c\
ft_lstiter_bonus.c\
ft_lstmap_bonus.c\
ft_print_base10.c\
ft_print_char.c\
ft_print_string.c\
ft_printf.c\
ft_put_uns_char_fd.c\
ft_print_lower_hex.c\
ft_print_upper_hex.c\
ft_print_uns_base10.c\
ft_itoa_uns.c\
ft_print_percentage.c\
ft_print_ptr.c\
get_next_line.c\
get_next_line_utils.c\

OBJS = $(SCRS:.c=.o)

RM = rm -f

CC = $(shell which cc clang gcc | head -n 1)

CFLAGS = -Wall -Wextra -Werror

HEADER = libft.h

STATIC_LIB = ar rcs

all: $(NAME)

$(NAME): $(OBJS) $(HEADER)
	$(STATIC_LIB) $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean
	$(MAKE) all

.Phony: all clean fclean re 

debug: CFLAGS += -g
debug: all