class UserDatum < ActiveRecord::Base
  attr_accessible :deviceid, :location, :time
end
