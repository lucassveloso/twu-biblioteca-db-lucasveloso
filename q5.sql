select
  member.name,
  count(member.id) as num_of_checked_out_items
from
  member,
  checkout_item
where
  member.id = checkout_item.member_id
group by
  checkout_item.member_id
  having num_of_checked_out_items > 1