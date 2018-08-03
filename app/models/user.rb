class User < ApplicationRecord
	rolify :before_add => :before_add_method

  def before_add_method(role)
    # do something before it gets added
  end

  after_create :assign_default_role

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end
   
   validates :name, :last_name, :group, :count_number, :user_name, :password, presence: true
   validates :count_number, numericality: {only_integer: true}
   validates :password, length: {minimum: 3}
   #validates :password, confirmation: true
   	
  
end
