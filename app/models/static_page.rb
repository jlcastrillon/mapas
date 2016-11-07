class StaticPage
  include Mongoid::Document
  field :nombre, type: String
  field :datos, type: Integer

  #def self.import(file)
  	#CSV.foreach(file.path, headers: true) do |row|
  		#staticpage = find_by_id(row["id"]) || new
  		 #staticpage.attributes = row.to_hash.slice(*accessible_attributes)
  		 #staticpage.save!
  	#end
  #end
 
 def self.import(file)
      name =  file.original_filename
      directory = 'public/data'
    
      path = File.join(directory, name)
    
      File.open(path, "wb") { |f| f.write(file.read) }
  end

   #def self.import(file)
  	#spreadsheet = Roo::Spreadsheet.open(file.path)
  	#header = spreadsheet.row(1)
  	#(2..spreadsheet.last_row).each do |i|
    	#row = Hash[[header, spreadsheet.row(i)].transpose]
    	#staticpage = find_by(id: row["id"]) || new
    	#staticpage.attributes = row.to_hash
    	#staticpage.save!
  	#end
  #end

  def self.open_spreadsheet(file)
    valor = ''
    begin
        logger.debug 'abriendo fichero'
        directory = 'public/data'
        path = File.join(directory, file)
        spreadsheet = Roo::Spreadsheet.open(path)
        logger.debug 'abierto'
        spreadsheet.sheet(0).each do |r|
          if valor != ''
            valor += ','
          end
          valor += r.to_s
        end
      
    rescue Exception
      
    end

    return valor

  end


end
