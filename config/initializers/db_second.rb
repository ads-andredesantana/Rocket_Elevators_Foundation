# save stats database settings in global var
# DB_SECOND = YAML::load(ERB.new(File.read(Rails.root.join("config","database_second.yml"))).result)[Rails.env]

#cd d( ERB.new( File.read("#{ Rails.root }/config/database_second.yml") ).result )[Rails.env.to_s]

# config =YAML::load(ERB.new(File.read(Rails.root.join("config","database_second.yml"))).result)
# DB_SECOND = config[Rails.env].

DB2 = YAML.load_file(File.join(Rails.root, "config", "database_second.yml"))[Rails.env.to_s]