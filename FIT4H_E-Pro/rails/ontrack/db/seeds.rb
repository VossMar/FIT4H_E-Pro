# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Visitor.create(name:"Administrator",username:"admin",password:"0000",admin:true)
Visitor.create(name:"Teamleiter",username:"teamleiter",password:"0000",teamleiter:true)
Visitor.create(name:"User",username:"User",password:"0000")

Project.create(title:"Entwickeln und Programmieren", description:"Ruby on Rails mit Bogner",creator_id:1)
Project.create(title:"Konfigurieren und Administrieren", description:"Linux mit Bogner und Windows mit Bender",creator_id:2)
Project.create(title:"Planen und Installieren", description:"Verkabekung und co. mit Bender",creator_id:1)
Project.create(title:"Facharbeit", description:"Das Schriftliche Projekt zum Abschluss der Technikerschule",creator_id:2)

Task.create(title:"Klausur Thema 1", project_id:1, visitor_id:1)
Task.create(title:"Klausur Thema 2", project_id:1, visitor_id:2)
Task.create(title:"Klausur Thema 3", project_id:1, visitor_id:3)

Task.create(title:"Test Thema 1", project_id:2, visitor_id:1)
Task.create(title:"Test Thema 2", project_id:2, visitor_id:2)
Task.create(title:"Test Thema 3", project_id:2, visitor_id:3)

Task.create(title:"Arbeit Thema 1", project_id:3, visitor_id:1)
Task.create(title:"Arbeit Thema 2", project_id:3, visitor_id:2)
Task.create(title:"Arbeit Thema 3", project_id:3, visitor_id:3)

Task.create(title:"Beginn der Arbeiten", project_id:4, visitor_id:1)
Task.create(title:"Offizielle Arbeitszeit", project_id:4, visitor_id:2)
Task.create(title:"Präsentation/Verteidigung", project_id:4, visitor_id:3)

