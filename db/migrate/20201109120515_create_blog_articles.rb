class CreateBlogArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_articles do |t|
          t.string :author
          t.string :header
          t.string :body
      t.timestamps
    end
  end
end
