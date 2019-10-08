select 'Book', book.title
    from book 
    where book.id NOT IN (
        select checkout_item.book_id 
            from checkout_item
            where checkout_item.book_id = book.id
        );

select 'Movie', movie.title
    from movie 
    where movie.id NOT IN (
        select checkout_item.movie_id 
            from checkout_item
            where checkout_item.movie_id = movie.id
        );