class ChangeColumnNameToArticles < ActiveRecord::Migration
  def change
  	rename_column :articles, :tille, :title
  end
end
