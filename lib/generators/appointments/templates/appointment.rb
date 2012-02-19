class Appointment < ActiveRecord::Base
attr_accessible :date, :hour, :done

validates :date,  :presence => true
validates :hour,  :presence => true,
                  :uniqueness => {:scope => :date}
end
