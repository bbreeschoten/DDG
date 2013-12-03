# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Activities extension
Refinery::Activities::Engine.load_seed

#load Profiles
Profile.create! :name => "Plant en Dier", :abbreviation => "P&D", :description => "Plant en Dier"
Profile.create! :name => "Techniek en Industrie", :abbreviation => "T&I", :description => "Techniek en Industrie"
Profile.create! :name => "Service en Dienstverlening", :abbreviation => "S&D", :description => "Service en Dienstverlening"
Profile.create! :name => "Handel", :abbreviation => "HND", :description => "Handel"
Profile.create! :name => "Horeca", :abbreviation => "HOR", :description => "Horeca"
Profile.create! :name => "Kunst en Ambacht", :abbreviation => "K&A", :description => "Kunst en Ambacht"
Profile.create! :name => "Belevingsgericht", :abbreviation => "BEL", :description => "Belevingsgericht"

#load Targetgroups
Targetgroup.create! :name => "Niet-aangeboren hersenletsel", :abbreviation => "NAH", :description => "Niet-aangeboren hersenletsel"
Targetgroup.create! :name => "Lichte verstandelijke beperking", :abbreviation => "LVB", :description => "Lichte verstandelijke beperking"
Targetgroup.create! :name => "Matige verstandelijke beperking", :abbreviation => "MVB", :description => "Matige verstandelijke beperking"
Targetgroup.create! :name => "Ernstige verstandelijke beperking", :abbreviation => "EVB", :description => "Ernstige verstandelijke beperking"
Targetgroup.create! :name => "Lichamelijke beperking", :abbreviation => "LB", :description => "Lichamelijke beperking"
Targetgroup.create! :name => "Ernstig meervoudige beperking", :abbreviation => "MVB", :description => "Ernstig meervoudige beperking"
