# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tkajanek <tkajanek@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/10 16:45:22 by tkajanek          #+#    #+#              #
#    Updated: 2023/01/29 18:02:41 by tkajanek         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
DEPS = libft.h
CC = gcc
#SRCS = $(wildcard *.c)
SRCS = ft_memset.c \
		ft_bzero.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_strlen.c \
		ft_strlcpy.c \
		ft_strlcat.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strnstr.c \
		ft_strncmp.c \
		ft_atoi.c \
		ft_isalpha.c \
		ft_isdigit.c \
		ft_isalnum.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_calloc.c \
		ft_strdup.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_split.c \
		ft_itoa.c \
		ft_strmapi.c \
		ft_striteri.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		
SBONUS = ft_lstnew.c \
	  	ft_lstadd_front.c \
	  	ft_lstsize.c \
	  	ft_lstlast.c \
	  	ft_lstadd_back.c \
	  	ft_lstdelone.c \
	  	ft_lstclear.c \
	  	ft_lstiter.c \
	  	ft_lstmap.c

OBJS = $(SRCS:.c=.o)
OBJS_BONUS = $(SBONUS:.c=.o)
CFLAGS += -Wall -Wextra -Werror

#.c.o: $(SRCS)
#	$(CC) $(CFLAGS) -c -o $@ $<
all: $(NAME)
$(NAME): $(OBJS) $(DEPS)
	ar rc $(NAME) $(OBJS) $(DEPS) 
bonus: $(OBJS) $(OBJS_BONUS) $(DEPS)
	ar rc $(NAME) $(OBJS) $(OBJS_BONUS) $(DEPS)
clean:
	rm -f $(OBJS) $(OBJS_BONUS)
fclean: clean
	rm -f $(NAME)
#so:
#	$(CC) -nostartfiles -fPIC $(CFLAGS) $(SRCS)
#	gcc -nostartfiles -shared -o libft.so $(OBJS) $(OBJS_BONUS)
re: fclean all

