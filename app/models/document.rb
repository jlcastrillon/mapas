class Document
  include Mongoid::Document
  field :filename, type: String
  field :content_type, type: String
  field :file_contents, type: Binary
end
