class Message
  # include DataMapper::Resource
  include DataMapper::CouchResource
  
  # property :id, Serial
  # property :message_type, String
  
  property :message_type, String

end
