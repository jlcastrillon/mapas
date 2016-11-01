class Document < ActiveRecord::Base
  def self.import(upload)
    name =  upload['datafile'].original_filename
    directory = "public/data"
    
    path = File.join(directory, name)
    
    File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
  end
end
