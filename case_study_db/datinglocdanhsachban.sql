select p.content as content,
        p.id_user as idUser,
        p.media as media,
         p.time as time,
         p.id_post as idPost,
         u.avatar as avatar,
         u.name as Username
from post as p
 join user as u on p.id_user = u.id_user
where p.id_user =7 or p.id_user in
 ( 
 select f.id_user2
 from user as u
  left join friend_list as f  on u.id_user=f.id_user1
   where f.status = 6 and u.id_user=7
   group by f.id_user2)
   order by p.time DESC