create table Book
(
    id          int auto_increment
        primary key,
    book_name   varchar(100) charset utf8  not null,
    author      varchar(50) charset utf8   not null,
    content     varchar(1000) charset utf8 null,
    book_face   varchar(100) charset utf8  not null comment 'imgUrl',
    likes       int default 0              not null,
    face_suffix varchar(10) charset utf8   not null
);

create table Comment
(
    id         int auto_increment
        primary key,
    parentId   int     default 0          null,
    uid        int                        not null,
    username   varchar(100) charset utf8  null,
    bid        int                        not null,
    content    varchar(9999) charset utf8 not null,
    createTime datetime                   not null,
    `like`     int(20) default 0          not null
);

create table User
(
    username     varchar(50) charset utf8            not null,
    password     varchar(50) charset utf8            not null,
    id_card      varchar(18) charset utf8            not null,
    phone_number varchar(11) charset utf8            not null,
    isAdmin      varchar(1) charset utf8 default '0' not null,
    id           int auto_increment
        primary key
)
    comment '用户表';

insert into Book (id, book_name, author, content, book_face, likes, face_suffix)
values  (1, '叶圣陶语文教育论集', '叶圣陶', '这是叶圣陶语文教育论集的内容', '147fd001b020dcf186f7bf8defdf5021', 0, 'jpeg'),
        (2, '成就', '埃里克', '　　青春意味着什么？其实谁都不能给出一个肯定的答案。每个人对青春都有着独特的见解。我们不能单纯地从某个方面认为它是怎样，也不能笼统地看待青春。我们不能指定青春要往某个方向发展达到最终想要的结果，因为我们毕竟不是一个人在奋斗，身边有各种各样的人影响着我们，有时，这些影响可以促进我们的自身的发展，有时却可能成为我们人生路上的绊脚石。那么，我们应该怎样面对生活，让自己变得更成熟呢？　
   家，是我们成长的摇篮，是我们避风的港湾，是我们心灵的栖息地，家中有父母的陪伴，我们更加幸福。可是，有时我们会因为一点小事与父母争吵，而且被父母称作“不懂事”的孩子。面对此类问题，离家出走的也有，跳楼上吊的也不鲜见。其实，与父母争吵未必是不懂事，做出以上两种决定的才算得上真的不懂事。　　
小时候，我们是家中的小太阳，父母都围着我们转，赐予我们无限的关心。如今，我们长大了，却往往让父母担心，给父母添麻烦，难道这就是他们哺育我们十几年所换来的“成果”吗？有时我们在家里会以作业太多为借口，把家中的事务全都推给父母，自己偷偷地躲在房里上网聊天打游戏，父母却总是以为我们学习任务太过繁重，学习太苦，因此加大自身的负担，拼命干活，为我们打拼更好的生活。作为已长大的高中生，我们应该想想是谁每天为我们洗衣做饭，是谁给我们鼓励，帮助我们缓解学习压力。父母默默地给我们支持，我们应理解关心父母，不要过多地让家人操心。', 'ec43122ff8c6728ddd50b4a183c50c2c', 0, 'jpeg'),
        (3, '朱自清散文集', '朱自清', '这是朱自清散文集的内容', '35c93b1a8d91d23681cb79b82af8cb5e', 0, 'jpeg'),
        (4, '生命的思索', '史怀哲', '这是生命的思索的内容', '7c86bfffdf496fd9aa93e84f2843448a', 0, 'jpeg'),
        (5, '中间人经济', '唐荣彬', '这是中间人的内容译文', '3ef49a26a40d4414f4fb4a0361af1e05', 0, 'jpeg'),
        (6, '价值投资', '李录', '文明现代化价值投资与中国', '0e5c1cfbd408a92cc2980e8a454068cc', 0, 'jpeg');

insert into Comment (id, parentId, uid, username, bid, content, createTime, like)
values  (1, 0, 3, 'admin', 1, '这本书太好看了', '2022-12-11 00:03:54', 0),
        (2, 0, 4, 'test', 1, '太好看了', '2022-12-11 00:04:21', 0),
        (3, 1, 4, 'test', 1, '我也觉得', '2022-12-11 00:04:44', 0),
        (10, 0, 0, null, 0, '[星星眼]', '2022-12-22 18:39:53', 0),
        (11, null, 4, 'test', 6, '我要学习投资赚个几百万[打call]', '2022-12-22 21:35:27', 0),
        (12, 11, 3, 'admin', 6, '我也要我也要[星星眼][星星眼]', '2022-12-22 21:41:49', 0),
        (13, null, 5, '123', 2, '真好啊这个书', '2022-12-23 17:30:44', 0),
        (14, 13, 5, '123', 2, '孩子吃了一斤了！很不错！', '2022-12-23 17:30:59', 0),
        (15, 13, 5, '123', 2, '回复 <span style="color: var(--u-color-success-dark-2);">@123:</span> 书是人类进步的高尔基', '2022-12-23 17:31:19', 0);

insert into User (username, password, id_card, phone_number, isAdmin, id)
values  ('test1', '1', '1', '1', '0', 2),
        ('admin', 'admin', '1', '1', '1', 3),
        ('test', 'test', '123', '123', '0', 4);
