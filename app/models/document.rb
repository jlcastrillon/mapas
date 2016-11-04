<<<<<<< HEAD
class Document
  include Mongoid::Document
  field :filename, type: String
  field :content_type, type: String
  field :file_contents, type: Binary
=======
class Document < ActiveRecord::Base
  def self.import(upload)
    name =  upload['datafile'].original_filename
    directory = "public/data"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
  ends
>>>>>>> 6e03a6abffbd827f4167831ade86ef720e44b71e
end
