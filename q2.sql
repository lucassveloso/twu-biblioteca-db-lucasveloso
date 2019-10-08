select count(id) 
    from member 
    where member.id NOT IN (
        select checkout_item.member_id 
            from checkout_item
            where checkout_item.member_id = member.id
        );