class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.column :title, :string
      t.column :intro, :string
      t.column :body, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
