# encoding: utf-8
require 'csv'
require 'highline/import'
data_dir = Rails.root.join('db', 'data')

[Group, Articlestatus, Bookchaptertype, Booktype, Citizenmodality, Conferencescope, Conferencetype,
 Contracttype, Coursegrouptype, Credittype, DocumentType, Editionstatus, Genericworkstatus,
 Groupmodality, Idtype, Migratorystatus, Maritalstatus, DocumentType, Jobpositiontype, Jobpositionlevel,
 Roleinjobposition, Institutiontype, Institutiontitle].each do |class_name|
   table_name = ActiveSupport::Inflector.tableize(class_name.to_s )
   puts "Inserting data into the table: #{table_name}..."
   CSV.foreach(File.join(data_dir, "#{table_name}.csv"), headers: false) do |row|
    class_name.new(name: row[0].to_s.strip).save(validate: false)
   end
end

# Courseduration

puts "Inserting data into the table: degrees..."
CSV.foreach(File.join(data_dir, "degrees.csv"), headers: false) do |row|
  Degree.new(name: row[0].to_s.strip, level: row[1].to_i).save(validate: false)
end

puts "Inserting data into the table: countries..."
CSV.foreach(File.join(data_dir, "countries.csv"), headers: false) do |row|
  Country.new(name: row[0].to_s.strip, citizen: row[1].to_s.strip, :code => row[2].to_s.strip, :id => row[3].to_i).save(validate: false)
end

puts "Inserting data into the table: states..."
CSV.foreach(File.join(data_dir, "states.csv"), headers: false) do |row|
  State.new(name: row[0].to_s.strip, code: row[1].to_s.strip, :country_id => row[2].to_i).save(validate: false)
end

puts "Inserting data into the table: cities..."
CSV.foreach(File.join(data_dir, "cities.csv"), headers: false) do |row|
  City.new(name: row[0].to_s.strip, state_id: row[1].to_i).save(validate: false)
end

puts "Inserting data into the table: documenttypes..."
CSV.foreach(File.join(data_dir, "documenttypes.csv"), headers: false) do |row|
  Documenttype.new(name: row[0].to_s.strip, year: row[1].to_i, status: (row[2].to_s == 't'), start_date: row[3], end_date: row[4]).save(validate: false)
end

puts "Inserting data into the table: jobpositioncategories..."
CSV.foreach(File.join(data_dir, "jobpositioncategories.csv"), headers: false) do |row|
  Jobpositioncategory.new(jobpositiontype_id: row[0].to_i, jobpositionlevel_id: row[1].to_i, roleinjobposition_id: row[2].to_i, administrative_key: row[3].to_s.strip).save(validate: false)
end

puts "Inserting data into the table: institutions..."
CSV.foreach(File.join(data_dir, "institutions.csv"), headers: false) do |row|
  @i = Institution.new(name: row[0].to_s.strip, url: row[1].to_s, institutiontype_id: row[2].to_i, country_id: row[3].to_i, administrative_key: row[4], institution_id: row[5].to_i, institutiontitle_id: Institutiontitle.first.id).save(validate: false)
end

puts "Inserting data into the table: periods"
CSV.foreach(File.join(data_dir, "periods.csv"), headers: false) do |row|
  Period.new(title: row[0].to_s.strip, startdate: row[1], enddate: row[2]).save(validate: false)
end

puts "Inserting data into the table: userstatuses"
CSV.foreach(File.join(data_dir, "userstatuses.csv"), headers: false) do |row|
  Userstatus.new(name: row[0]).save(validate: false)
end

unless User.exists? :login => 'admin'
  puts "Creating the 'admin' user account"
  while (1) do
    password = ask("Enter password: ") { |q| q.echo = false }
    password_confirmation = ask("Enter password confirmation: ") { |q| q.echo = false }
    if password == password_confirmation and password.to_s.length >= 8
      break
    else
      puts "The password must have 8 or more characters, and this must be equal to its confirmation"
    end
  end
  @user = User.new(:login => 'admin', :email => 'admin@unam.mx', :password => password, :password_confirmation => password_confirmation, :userstatus_id => Userstatus.where(:name => 'Activo').first.id)
  @user.user_group = UserGroup.new(:group_id => Group.where(:name => 'admin').first.id)
  @user.save(validate: false)
end
