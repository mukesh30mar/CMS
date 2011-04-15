class PageRedirect < ActiveRecord::Migration
  def self.up
    
    add_column :pages, :redirect , :boolean
    add_column :pages, :action_name , :string
    add_column :pages, :controller_name , :string
    end

  def self.down
  remove_column :pages, :redirect
  add_column :pages, :action_name
  add_column :pages, :controller_name
  end
end
