-- CLEAR DB --
delete from checkout_item where member_id = (
    select id from member where name = 'Lucas Veloso'
);
delete from book where book.title = 'The Pragmatic Programmer';
delete from member where member.name = 'Lucas Veloso';

-- INSERT BOOK --
insert into book (title) values ('The Pragmatic Programmer');

-- INSERT MEMBER --
insert into member (name) values('Lucas Veloso');

-- CHECKOUT BOOK --
insert into checkout_item (member_id, book_id) values(
    (select member.id from member where member.name = 'Lucas Veloso'),
    (select book.id from book where book.title = 'The Pragmatic Programmer')
);

-- VERIFY CHECKOUT (Q1 SCRIPT) --
select member.name 
    from member, checkout_item, book 
    where member.id = checkout_item.member_id 
        AND book.id = checkout_item.book_id 
        AND book.title = 'The Pragmatic Programmer';