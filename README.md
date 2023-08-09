## Summary
> <i>The first project on the 42sp fundamentals track, Libft, is about</i>
> <i>learning how standard C Programming functions actually work, recreating them,</i>
> <i> and recreating how they work. The functions present in this library are listed below.</i>

<br>

## Libc Functions

* [`ft_atoi`](ft_atoi.c) [`ft_bzero`](ft_bzero.c) [`ft_calloc`](ft_calloc.c) [`ft_isalnum`](ft_isalnum.c) [`ft_isalpha`](ft_isalpha.c) [`ft_isascii`](ft_isascii.c)
* [`ft_isdigit`](ft_isdigit.c) [`ft_isprint`](ft_isprint.c) [`ft_memchr`](ft_memchr.c) [`ft_memcmp`](ft_memcmp.c) [`ft_memcpy`](ft_memcpy.c) [`ft_memmove`](ft_memmove.c)
* [`ft_memset`](ft_memset.c) [`ft_strchr`](ft_strchr.c) [`ft_strdup`](ft_strdup.c) [`ft_strlcat`](ft_strlcat.c) [`ft_strlcpy`](ft_strlcpy.c) [`ft_strlen`](ft_strlen.c)
* [`ft_strncmp`](ft_strncmp.c) [`ft_strnstr`](ft_strnstr.c) [`ft_strrchr`](ft_strrchr.c) [`ft_tolower`](ft_tolower.c) [`ft_toupper`](ft_toupper.c) 

## Additional Functions

* [`ft_itoa`](ft_itoa.c) [`ft_putchar_fd`](ft_putchar_fd.c) [`ft_putendl_fd`](ft_putendl_fd.c) [`ft_putnbr_fd`](ft_putnbr_fd.c) [`ft_putstr_fd`](ft_putstr_fd.c) 
* [`ft_striteri`](ft_striteri.c) [`ft_strmapi`](ft_strmapi.c) [`ft_strjoin`](ft_strjoin.c) [`ft_substr`](ft_substr.c) [`ft_strtrim`](ft_strtrim.c) [`ft_split`](ft_split.c)

## Bonus Functions

* [`ft_lstadd_back`](ft_lstadd_back_bonus.c) [`ft_lstadd_front`](ft_lstadd_front_bonus.c) [`ft_lstclear`](ft_lstclear_bonus.c) [`ft_lstdelone`](ft_lstdelone_bonus.c)
* [`ft_lstiter`](ft_lstiter_bonus.c) [`ft_lstlast`](ft_lstlast_bonus.c) [`ft_lstmap`](ft_lstmap_bonus.c) [`ft_lstnew`](ft_lstnew_bonus.c) [`ft_lstsize`](ft_lstsize_bonus.c) 

##  Usage

### Instructions

**1. Compiling the library**

To compile the library, go to its path and run:

For all mandatory functions:

```shell
$ make
```

For bonus functions:

```shell
$ make bonus
```

**2. Cleaning all binary (.o) and executable files (.a)**

To clean all files generated while doing a make, go to the path and run:

```shell
$ make fclean
```

**3. Using it in your code**

To use the library functions in your code, simply include its header:

```C
#include "libft.h"
