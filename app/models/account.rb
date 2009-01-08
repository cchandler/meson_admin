class Account
  # include DataMapper::Resource
  include DataMapper::CouchResource
  
    property :uri, String
    property :api_key, String
    property :vhost_user, String
    property :vhost_name, String
    property :experiment, DataMapper::Types::JsonObject
    
    view :by_uri, { "map" => "function(doc) { if (doc.couchdb_type == 'Account') { emit(doc.uri, doc); } }" }
  
  before :create, :create_api_key
  #   after :create, :create_amqp_user
  #   after :create, :create_amqp_vhost
  #   after :create, :map_amqp_user_vhost
  #   
  #   before :destroy, :delete_amqp_user
  #   before :destroy, :delete_amqp_vhost
  # 
    def create_api_key
      self.api_key = "mittens"
    end
  #   
  #   def create_amqp_user
  #     result = %x["#{RABBITCTL}" "add_user" "#{self.vhost_user}" "mittens"]
  #     p result
  #   end
  #   
  #   def delete_amqp_user
  #     result = %x["#{RABBITCTL}" "delete_user" "#{self.vhost_user}"]
  #     p result
  #   end
  #   
  #   def create_amqp_vhost
  #     result = %x["#{RABBITCTL}" "add_vhost" "#{self.vhost_name}"]
  #     p result
  #   end
  #   
  #   def delete_amqp_vhost
  #     result = %x["#{RABBITCTL}" "delete_vhost" "#{self.vhost_name}"]
  #     p result
  #   end
  #   
  #   def map_amqp_user_vhost
  #     result = %x["#{RABBITCTL}" "map_user_vhost" "#{self.vhost_user}" "#{self.vhost_name}"]
  #     p result
  #   end
  
end
