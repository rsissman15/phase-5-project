class AddUrlToColleges < ActiveRecord::Migration[7.0]
  def change
    add_column :colleges, :web_pages, :string
  end
end
