# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.create(name: 'Jaibohack 2015', venue: "Tec Monterrey Tampico", begins_on: "04-09-2015", registration_ends_on: "01-09-2015", attendees_limit: 100)
schools = School.create([{ name: 'Instituto Tecnológico de Monterrey' },
  { name: 'Instituto Tecnológico de Ciudad Madero' },
  { name: 'Universidad Autónoma de Tamaulipas' },
  { name: 'Universidad Politécnica de Altamira' },
  { name: 'Universidad Tecnológica de Altamira' },
  { name: 'Universidad del Noreste' },
  { name: 'Instituto de Estudios Superiores de Tamaulipas' },
  { name: 'icest' },
  { name: 'CEDIP'},
  { name: 'Instituto UNITAM'},
  { name: 'UTEL'},
  { name: 'UVM'}])

skills = Skill.create([{ name: 'Rails' },
  { name: 'Rails' },
  { name: 'Javascript' },
  { name: 'node.js' },
  { name: 'angular.js' },
  { name: 'Ruby' },
  { name: 'html' },
  { name: 'css' },
  { name: 'php' },
  { name: 'git'},
  { name: 'C/C++'},
  { name: 'Java'},
  { name: 'Android'},
  { name: 'swift'}])