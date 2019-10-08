select member.name 
    from member, checkout_item, book 
    where member.id = checkout_item.member_id 
        AND book.id = checkout_item.book_id 
        AND book.title = "The Hobbit";