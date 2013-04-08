class Station < ActiveRecord::Base
  attr_accessible :rank, :stationId, :upordown

def to_param
  stationId
end

end
