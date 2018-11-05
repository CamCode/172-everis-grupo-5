# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Motivo.create(	idMotivo: 1, nombreMotivo: "Deseo ser mejor estudiante")
#Motivo.create(	idMotivo: 2, nombreMotivo: "No aprendo en el cole")
#Motivo.create(	idMotivo: 3, nombreMotivo: "Deseo validar")
#Motivo.create(	idMotivo: 4, nombreMotivo: "No me gusta el cole")
#Motivo.create(	idMotivo: 5, nombreMotivo: "Deseo entrar a la universidad")

#Estudiante.create(	tipoId: "TI", numId: "94080511161", nombre: "Miguel", apellido: "Roa", edad: "15", genero: "masculino")
#Estudiante.create(	tipoId: "TI", numId: "99080533161", nombre: "Fabian", apellido: "Varon", edad: "16", genero: "masculino")
#Estudiante.create(	tipoId: "TI", numId: "98080411110", nombre: "Camila", apellido: "Melo", edad: "13", genero: "femenino")
#Estudiante.create(	tipoId: "TI", numId: "97040522161", nombre: "Leonardo", apellido: "Saenz", edad: "14", genero: "masculino")#Estudiante.create(	tipoId: "TI", numId: "97020283456", nombre: "Yurani Marcela", apellido: "Garnica", edad: "16", genero: "femenino")
#Estudiante.create(	tipoId: "TI", numId: "94020513361", nombre: "Milton", apellido: "Rojas", edad: "15", genero: "masculino")


#Materium.create(	idMateria: "0601", nombreMateria: "Matematicas")    
#Materium.create(	idMateria: "0602", nombreMateria: "Español")
#Materium.create(	idMateria: "0603", nombreMateria: "Ingles")
#Materium.create(	idMateria: "0604", nombreMateria: "Ciencias Sociales")
#Materium.create(	idMateria: "0605", nombreMateria: "Ciencias Naturales")				


Encuestum.create(    motivo_id: "1", estudiante_id:"1", materias:"Matematicas-Español")
Encuestum.create(    motivo_id: "2", estudiante_id:"2", materias:"Ciencias Sociales-Español")
Encuestum.create(    motivo_id: "3", estudiante_id:"3", materias:"Ingles-Español")

