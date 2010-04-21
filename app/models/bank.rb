class Bank < ActiveRecord::Base

    def to_s
     "#{self.name} - #{self.city}, #{self.state}"
   end
end
