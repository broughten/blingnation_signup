class Bank < ActiveRecord::Base
  
   has_many :merchants

   def to_s
     "#{self.name} - #{self.city}, #{self.state}"
   end
end
