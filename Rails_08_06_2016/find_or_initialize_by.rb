1. nick = Article.find_or_initialize_by(Title: 'Test123')
  Article Load (0.3ms)  SELECT  "articles".* FROM "articles" WHERE "articles"."Title" = 'Test123' LIMIT 1
=> #<Article id: 11, title: "Test123", text: nil, created_at: "2016-06-06 11:39:37", updated_at: "2016-06-06 11:53:27"> 
  a. nick.persisted?
=> true 

  b. nick.new_record?
=> false 

2. Article.connection.select_all("SELECT Title, created_at FROM articles WHERE id = '1'")
   SELECT Title, created_at FROM articles WHERE id = '1'
=> #<ActiveRecord::Result:0x00000004da6520 @columns=["title", "created_at"], @rows=[], @hash_rows=nil, @column_types={}> 

3. Article.where(text: true).pluck(:id)
   SELECT "articles"."id" FROM "articles" WHERE "articles"."text" = ?  [["text", "t"]]
=> [] 

4. Article.distinct.pluck(:title)
   SELECT DISTINCT "articles"."title" FROM "articles"
=> ["sample", "test65", "Test123"] 

5. Article.pluck(:id, :title)
   SELECT "articles"."id", "articles"."title" FROM "articles"
=> [[2, "sample"], [3, "sample"], [4, "sample"], [5, "test65"], [6, "test65"], [7, "sample"], [8, "sample"], [9, "sample"], [10, "sample"], [11, "Test123"]] 

6. Article.limit(1).pluck(:title)
   SELECT  "articles"."title" FROM "articles" LIMIT 1
=> ["sample"] 

7. Article.exists?(id: [1,2,3])
   Article Exists ( SELECT  1 AS one FROM "articles" WHERE "articles"."id" IN (1, 2, 3) LIMIT 1 )
=> true 

8. Article.exists?(title: ['Test123', 'Sample'])
   Article Exists ( SELECT  1 AS one FROM "articles" WHERE "articles"."title" IN ('Test123', 'Sample') LIMIT 1 )
=> true 

9. Article.where(title: 'Ryan').exists?
   Article Exists ( SELECT  1 AS one FROM "articles" WHERE "articles"."title" = ? LIMIT 1  [["title", "Ryan"]] )
=> false 

10. Article.any?
    SELECT COUNT(*) FROM "articles"
=> true 

11. Article.count
    SELECT COUNT(*) FROM "articles"
=> 10 

12. Article.order(:created_at)
    Article Load (0.3ms)  SELECT "articles".* FROM "articles"  ORDER BY "articles"."created_at" ASC
=> #<ActiveRecord::Relation [#<Article id: 2, title: "sample", text: "", created_at: "2016-06-03 11:55:10", updated_at: "2016-06-03 11:55:10">, #<Article id: 3, title: "sample", text: "hiiii ", created_at: "2016-06-03 11:55:20", updated_at: "2016-06-03 11:55:20">, #<Article id: 4, title: "sample", text: "", created_at: "2016-06-03 12:53:55", updated_at: "2016-06-03 12:53:55">, #<Article id: 5, title: "test65", text: "", created_at: "2016-06-03 13:08:26", updated_at: "2016-06-03 13:08:26">, #<Article id: 6, title: "test65", text: nil, created_at: "2016-06-06 06:33:14", updated_at: "2016-06-06 06:34:01">, #<Article id: 7, title: "sample", text: "hfhgghj", created_at: "2016-06-06 06:46:21", updated_at: "2016-06-06 06:46:21">, #<Article id: 8, title: "sample", text: "fsdfsdfs", created_at: "2016-06-06 07:21:04", updated_at: "2016-06-06 07:21:04">, #<Article id: 9, title: "sample", text: "fsdfsdfs", created_at: "2016-06-06 07:21:13", updated_at: "2016-06-06 07:21:13">, #<Article id: 10, title: "sample", text: "fsdfsdfs", created_at: "2016-06-06 07:22:16", updated_at: "2016-06-06 07:22:16">, #<Article id: 11, title: "Test123", text: nil, created_at: "2016-06-06 11:39:37", updated_at: "2016-06-06 11:53:27">]> 

13. Article.order(created_at: :desc)
    Article Load (0.3ms)  SELECT "articles".* FROM "articles"  ORDER BY "articles"."created_at" DESC
=> #<ActiveRecord::Relation [#<Article id: 11, title: "Test123", text: nil, created_at: "2016-06-06 11:39:37", updated_at: "2016-06-06 11:53:27">, #<Article id: 10, title: "sample", text: "fsdfsdfs", created_at: "2016-06-06 07:22:16", updated_at: "2016-06-06 07:22:16">, #<Article id: 9, title: "sample", text: "fsdfsdfs", created_at: "2016-06-06 07:21:13", updated_at: "2016-06-06 07:21:13">, #<Article id: 8, title: "sample", text: "fsdfsdfs", created_at: "2016-06-06 07:21:04", updated_at: "2016-06-06 07:21:04">, #<Article id: 7, title: "sample", text: "hfhgghj", created_at: "2016-06-06 06:46:21", updated_at: "2016-06-06 06:46:21">, #<Article id: 6, title: "test65", text: nil, created_at: "2016-06-06 06:33:14", updated_at: "2016-06-06 06:34:01">, #<Article id: 5, title: "test65", text: "", created_at: "2016-06-03 13:08:26", updated_at: "2016-06-03 13:08:26">, #<Article id: 4, title: "sample", text: "", created_at: "2016-06-03 12:53:55", updated_at: "2016-06-03 12:53:55">, #<Article id: 3, title: "sample", text: "hiiii ", created_at: "2016-06-03 11:55:20", updated_at: "2016-06-03 11:55:20">, #<Article id: 2, title: "sample", text: "", created_at: "2016-06-03 11:55:10", updated_at: "2016-06-03 11:55:10">]> 

14. Article.order(text: :asc, created_at: :desc)
    Article Load (0.3ms)  SELECT "articles".* FROM "articles"  ORDER BY "articles"."text" ASC, "articles"."created_at"DESC
=> #<ActiveRecord::Relation [#<Article id: 11, title: "Test123", text: nil, created_at: "2016-06-06 11:39:37", updated_at: "2016-06-06 11:53:27">, #<Article id: 6, title: "test65", text: nil, created_at: "2016-06-06 06:33:14", updated_at: "2016-06-06 06:34:01">, #<Article id: 5, title: "test65", text: "", created_at: "2016-06-03 13:08:26", updated_at: "2016-06-03 13:08:26">, #<Article id: 4, title: "sample", text: "", created_at: "2016-06-03 12:53:55", updated_at: "2016-06-03 12:53:55">, #<Article id: 2, title: "sample", text: "", created_at: "2016-06-03 11:55:10", updated_at: "2016-06-03 11:55:10">, #<Article id: 10, title: "sample", text: "fsdfsdfs", created_at: "2016-06-06 07:22:16", updated_at: "2016-06-06 07:22:16">, #<Article id: 9, title: "sample", text: "fsdfsdfs", created_at: "2016-06-06 07:21:13", updated_at: "2016-06-06 07:21:13">, #<Article id: 8, title: "sample", text: "fsdfsdfs", created_at: "2016-06-06 07:21:04", updated_at: "2016-06-06 07:21:04">, #<Article id: 7, title: "sample", text: "hfhgghj", created_at: "2016-06-06 06:46:21", updated_at: "2016-06-06 06:46:21">, #<Article id: 3, title: "sample", text: "hiiii ", created_at: "2016-06-03 11:55:20", updated_at: "2016-06-03 11:55:20">]> 

15. Article.select(:title).distinct
    Article Load (0.3ms)  SELECT DISTINCT "articles"."title" FROM "articles"
=> #<ActiveRecord::Relation [#<Article id: nil, title: "sample">, #<Article id: nil, title: "test65">, #<Article id: nil, title: "Test123">]> 

16. Article.limit(2)
    Article Load (0.2ms)  SELECT  "articles".* FROM "articles" LIMIT 2
=> #<ActiveRecord::Relation [#<Article id: 2, title: "sample", text: "", created_at: "2016-06-03 11:55:10", updated_at: "2016-06-03 11:55:10">, #<Article id: 3, title: "sample", text: "hiiii ", created_at: "2016-06-03 11:55:20", updated_at: "2016-06-03 11:55:20">]> 

