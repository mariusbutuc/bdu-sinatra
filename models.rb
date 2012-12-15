DataMapper.setup(:default, "sqlite://#{Dir.pwd}/bdu.db")

# module DownloadableResource
#   def self.included base
#     base.class_eval do
#       include DataMapper::Resource

#       property :created_at,   DateTime
#       property :modified_at,  DateTime
#       property :active,       base::Boolean,  default: true

#       property :position,     Integer

#       property :title,        String,   required: true
#       property :url,          base::URI,      required: true
#       property :description,  base::Text,     required: true

#       property :type,         base::Discriminator
#     end
#   end
# end

# class News
#   include DataMapper::Resource
#   property :id,           Serial
#   property :created_at,   DateTime
#   property :modified_at,  DateTime
#   property :active,       Boolean,  default: true

#   property :position,     Integer

#   property :title,        String,   required: true, length: 100
#   property :description,  Text
#   property :url,          URI,      required: true
#   property :img_url,      URI,      required: true
# end

class Testimonial
  include DataMapper::Resource
  property :id,           Serial
  property :created_at,   DateTime
  property :modified_at,  DateTime
  property :active,       Boolean,  default: true

  property :testimonial,  Text,     required: true
  property :author,       String,   required: true
  property :country,      String
  property :email,        String
end

# class Book
#   include DownloadableResource
#   property :id,           Serial

#   property :cover_url,    URI
#   property :authors,      String,   required: true, length: 255
# end

# class Download
#   include DownloadableResource
#   property :id,           Serial

#   property :icon_url,     URI
# end

# class Faq
#   include DataMapper::Resource
#   property :id,           Serial
#   property :created_at,   DateTime
#   property :modified_at,  DateTime
#   property :active,       Boolean,  default: true

#   property :position,     Integer

#   property :question,     String,   required: true, length: 255
#   property :answer,       Text,     required: true
# end

DataMapper.auto_upgrade!
