class Goal
  # include DataMapper::Resource
  include DataMapper::CouchResource
  
  # property :id, Serial
  property :route, DataMapper::Types::JsonObject


end
