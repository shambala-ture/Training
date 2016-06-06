1. Article.all
   Article Load (0.4ms)  SELECT "articles".* FROM "articles"
=> #<ActiveRecord::Relation [#<Article id: 14, title: "John Doe", text: nil, created_at: "2016-06-01 12:18:57", updated_at: "2016-06-01 12:18:57">, #<Article id: 15, title: "sample", text: "", created_at: "2016-06-01 12:32:02", updated_at: "2016-06-01 12:32:02">, #<Article id: 16, title: "David", text: "Code Artist", created_at: "2016-06-02 11:32:35", updated_at: "2016-06-02 11:32:35">, #<Article id: 17, title: "David", text: "Code new", created_at: "2016-06-02 11:38:24", updated_at: "2016-06-02 11:38:24">, #<Article id: 18, title: "samopkg", text: "dfgg", created_at: "2016-06-02 12:21:47", updated_at: "2016-06-02 12:21:47">, #<Article id: 19, title: "David", text: "Code Artist", created_at: "2016-06-02 14:13:40", updated_at: "2016-06-02 14:13:40">]> 

2. Article.first
   Article Load (0.3ms)  SELECT  "articles".* FROM "articles"  ORDER BY "articles"."id" ASC LIMIT 1
=> #<Article id: 14, title: "John Doe", text: nil, created_at: "2016-06-01 12:18:57", updated_at: "2016-06-01 12:18:57"> 

3. david = Article.find_by(title: 'David')
  Article Load (0.2ms)  SELECT  "articles".* FROM "articles" WHERE "articles"."title" = ? LIMIT 1  [["title", "David"]]
=> #<Article id: 16, title: "David", text: "Code Artist", created_at: "2016-06-02 11:32:35", updated_at: "2016-06-02 11:32:35"> 

4. david.title = 'nividita'
=> "nividita" 

5. david.save
  (0.2ms)  begin transaction
  SQL (0.3ms)  UPDATE "articles" SET "title" = ?, "updated_at" = ? WHERE "articles"."id" = ?  [["title", "nividita"], ["updated_at", "2016-06-02 14:36:27.238035"], ["id", 16]]
  (89.7ms)  commit transaction
=> true 

6. david = Article.find_by(title: 'David')
   Article Load (0.2ms)  SELECT  "articles".* FROM "articles" WHERE "articles"."title" = ? LIMIT 1  [["title", "David"]]
=> #<Article id: 19, title: "David", text: "Code Artist", created_at: "2016-06-02 14:13:40", updated_at: "2016-06-02 14:13:40"> 

7. david.destroy
   0.1ms)  begin transaction
   Comment Load (0.2ms)  SELECT "comments".* FROM "comments" WHERE "comments"."article_id" = ?  [["article_id", 19]]
   SQL (0.2ms)  DELETE FROM "articles" WHERE "articles"."id" = ?  [["id", 19]]
   (89.3ms)  commit transaction
=> #<Article id: 19, title: "David", text: "Code Artist", created_at: "2016-06-02 14:13:40", updated_at: "2016-06-02 14:13:40"> 

