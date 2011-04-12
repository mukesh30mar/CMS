class AddDefaultUser < ActiveRecord::Migration
  def self.up
    if !User.find_by_login('admin')
      User.create!(:login => 'admin', :email =>'admin@sample.com', :password => 'mukesh', :password_confirmation => 'mukesh')  
    end
    
  end

  def self.down
#    User.find_by_login('admin')
  end
end
