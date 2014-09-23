# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

UserRegistration.new(
	username: 'admin', 
	email: 'constanza@obrasysistemas.com.ar', 
	password: 'callefalsa123',
	role: 'admin').sign_up

['Torres',
 'Salud',
 'Oficinas',
 'Viviendas',
 'Restauraciones',
 'Institucionales',
 'Industriales e Ingeniería',
 'Hoteleria',
 'Comerciales'].each { |n| TipoDeObra.create(nombre: n) }