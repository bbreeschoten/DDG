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
Profile.create! :name => "Koken en Bakken", :abbreviation => "K&B", :description => "Koken en Bakken"
Profile.create! :name => "Sfeer en Muziek", :abbreviation => "S&M", :description => "Sfeer en Muziek"
Profile.create! :name => "Sport en Spel", :abbreviation => "S&S", :description => "Sport en Spel"
Profile.create! :name => "Beleving", :abbreviation => "BEL", :description => "Beleving"



#load Targetgroups
Targetgroup.create! :name => "Activiteiten voor kinderen", :abbreviation => "Kinderen", :description => "Activiteiten voor kinderen"
Targetgroup.create! :name => "Activiteiten/werkzaamheden voor senioren", :abbreviation => "Senioren", :description => "Activiteiten/werkzaamheden voor Senioren"
Targetgroup.create! :name => "Activiteiten/werkzaamheden voor mensen met niet-aangeboren hersenletsel", :abbreviation => "NAH", :description => "Activiteiten/werkzaamheden voor mensen met niet-aangeboren hersenletsel"
Targetgroup.create! :name => "Activiteiten/werkzaamheden voor mensen met een licht verstandelijke beperking", :abbreviation => "LVB", :description => "Activiteiten/werkzaamheden voor mensen met een licht verstandelijke beperking"
Targetgroup.create! :name => "Activiteiten/werkzaamheden voor mensen met een matige verstandelijke beperking", :abbreviation => "MVB", :description => "Activiteiten/werkzaamheden voor mensen met een matige verstandelijke beperking"
Targetgroup.create! :name => "Activiteiten/werkzaamheden voor mensen met een ernstige verstandelijke beperking", :abbreviation => "EVB", :description => "Activiteiten/werkzaamheden voor mensen met een ernstige verstandelijke beperking"
Targetgroup.create! :name => "Activiteiten/werkzaamheden voor mensen met een lichamelijke beperking", :abbreviation => "LB", :description => "Activiteiten/werkzaamheden voor mensen met een lichamelijke beperking"
Targetgroup.create! :name => "Activiteiten voor mensen met een ernstige meervoudige beperking", :abbreviation => "MVB", :description => "Activiteiten voor mensen met een ernstige meervoudige beperking"
