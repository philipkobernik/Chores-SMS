class User < ActiveRecord::Base
  belongs_to :chore
  
  
    
  def alert
    User.all.each do |u|
      
      if !u.chore.nil?
        greeting = "Hello #{ u.name }, this is the 1212 chorechart. "
        middle = "Your duty this week: #{ u.chore.name }. "
        closing = "Go get 'em tiger. "
        

          ps = "Thanks 4 kicking ass. <3"

        
        a = Beep.create({:phone => u.phone, :message => greeting + middle + closing + ps })
        a.huzzah #send the beep
      end
    end
  end
  
  def cycle
    
    
    User.all.each do |u|
    
      if u.chore_id < 6
        u.chore_id += 1
      else
        u.chore_id = 1
      end
      
      u.save
      
    end
    

  end
  
  
end
