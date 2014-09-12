# encoding: UTF-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Monstruo.destroy_all
Tweet.destroy_all

dracula = Monstruo.find_or_create_by(nombre: "Drácula", descripcion: "Chupa sangre")
king_kong = Monstruo.find_or_create_by(nombre: "King Kong", descripcion: "Es un gorila gigante")
nahuelito = Monstruo.find_or_create_by(nombre: "Nahuelito", descripcion: "Vive en el Nahuel Huapi")
hombre_lobo = Monstruo.find_or_create_by(nombre: "Hombre lobo", descripcion: "Mitad lobo - mitad humano")

Tweet.find_or_create_by(estado: "Me gusta que me saquen sangre", monstruo: dracula)
Tweet.find_or_create_by(estado: "Cuando sea grande quiero que me llamen Nahuel", monstruo: nahuelito)
Tweet.find_or_create_by(estado: "En el recital de la mona Jimenez",monstruo: king_kong)
Tweet.find_or_create_by(estado: "Abro latas con los dientes",monstruo: dracula)
Tweet.find_or_create_by(estado: "Me gusta el asado jugoso",monstruo: dracula)
Tweet.find_or_create_by(estado: "Soy de Gimnasia",monstruo: hombre_lobo)
Tweet.find_or_create_by(estado: '@godzilla volvé #estoysolito',monstruo: nahuelito)
Tweet.find_or_create_by(estado: 'Qué tiempo de locos',monstruo: nahuelito)