/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: csilva-m <csilva-m@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/04 14:04:32 by csilva-m          #+#    #+#             */
/*   Updated: 2023/08/04 20:02:13 by csilva-m         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static size_t	word_count(const char *s, char c)
{
	size_t	count;

	count = 0;
	while (*s)
	{
		if (*s != c)
		{
			count++;
			while (*s != c && *s != '\0')
				s++;
		}
		else
			s++;
	}
	return (count);
}

char	**ft_split(char const *s, char c)
{
	char	**palavras;
	size_t	i;
	size_t	count;

	i = 0;
	palavras = (char **)ft_calloc((word_count(s, c) + 1), (sizeof(char *)));
	if (!(palavras) || !s)
		return (0);
	while (*s)
	{
		while (*s == c && *s)
			s++;
		if (*s)
		{
			if (!(ft_strchr(s, c)))
				count = ft_strlen(s);
			else if (*s)
				count = ft_strchr(s, c) - s;
			palavras[i++] = ft_substr(s, 0, count);
			s += count;
		}
	}
	palavras[i] = NULL;
	return (palavras);
}
