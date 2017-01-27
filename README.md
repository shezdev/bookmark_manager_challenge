# Bookmark Manager Challenge
https://github.com/makersacademy/course/tree/master/bookmark_manager
# User Stories

```
As a user
So that I can quickly go to web sites I regularly visit
I would like to *see a list* of links (on the homepage)
```

```
As a user
So that I can save a new website link
I would like to *add a address url and title* to my bookmark manager
```

```
As a user
So that I can organise my links into different categories for ease of search
I would like to *add tags to the links* in my bookmark manager
```

```
As a user
So that I can quickly find links on a particular topic
I would like to *filter links by tag*
```

#Checking contents of DB:

```
heroku pg:psql
shereenapp::DATABASE=> \list
shereenapp::DATABASE=> heroku pg:psql\dt
              List of relations
 Schema |   Name    | Type  |     Owner
--------+-----------+-------+----------------
 public | link_tags | table | tqzkbazznlojsi
 public | links     | table | tqzkbazznlojsi
 public | tags      | table | tqzkbazznlojsi
(3 rows)


shereenapp::DATABASE=> SELECT * FROM links;
 id |  title  |        url        | link_id | link_title | link_url
----+---------+-------------------+---------+------------+----------
  1 | RT News | http://www.rt.com |       1 |            |
  2 | RT News | http://www.rt.com |       2 |            |
(2 rows)

shereenapp::DATABASE=> SELECT * FROM tags;
 tag_id | tag_title | id | title
--------+-----------+----+-------
      1 |           |  1 | News
(1 row)

shereenapp::DATABASE=> SELECT * FROM link_tags;
 link_id | tag_id
---------+--------
       1 |      1
       2 |      1
```
