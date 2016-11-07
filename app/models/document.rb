<<<<<<< HEAD
<<<<<<< HEAD
class Document
  include Mongoid::Document
  field :filename, type: String
  field :content_type, type: String
  field :file_contents, type: Binary
=======
class Document < ActiveRecord::Base
=======
class Document
  include Mongoid::Document
>>>>>>> 93531c41c05c01ee21d60fe7a10dd3c28eb71abb
  def self.import(upload)
    name =  upload['datafile'].original_filename
    directory = "public/data"
    
    path = File.join(directory, name)
    
    File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
<<<<<<< HEAD
  ends
>>>>>>> 6e03a6abffbd827f4167831ade86ef720e44b71e
=======
  end
>>>>>>> 93531c41c05c01ee21d60fe7a10dd3c28eb71abb
end
