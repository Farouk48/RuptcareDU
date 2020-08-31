# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#pundit avec admin à rajouter dans la seed si necessaire admin:true or false
require 'csv'



Message.destroy_all
User.destroy_all
PatientDrug.destroy_all
Patient.destroy_all
Stock.destroy_all
Pharma.destroy_all
User.destroy_all
Drug.destroy_all
Doctor.destroy_all

pharma_1 = Pharma.create!(name:"Pharmacie du 20ème", address:"144 Boulevard de Ménilmontant", city:"75020 Paris")
pharma_2 = Pharma.create!(name:"Pharmacie Oberkampf", address:"58 Rue Neuve Popincourt", city:"75011 Paris")
pharma_3 = Pharma.create!(name:"Pharmacie Des 3 Fleurs", address:"65 Rue Jean-Pierre Timbaud", city:"75011 Paris")
pharma_4 = Pharma.create!(name:"Pharmacie du Monde", address:"38 Avenue Parmentier", city:"75011 Paris")
pharma_5 = Pharma.create!(name:"Pharmacie de Vaucouleurs", address:"32 Rue de Vaucouleurs 75011 Paris", city:"")
pharma_6 = Pharma.create!(name:"Grande Pharmacie Selarl.", address:"113 Boulevard Voltaire 75011 Paris", city:"")
pharma_7 = Pharma.create!(name:"Pharmacie des Cliniques", address:"97 Avenue Parmentier", city:"75011 Paris")
pharma_8 = Pharma.create!(name:"Pharmacie Goncourt", address:"146 Avenue Parmentier", city:"75011 Paris")
pharma_9 = Pharma.create!(name:"Pharmacie La Confiance", address:"13 Rue de la Présentation", city:"75011 Paris")
pharma_10 = Pharma.create!(name:"Pharmacie Dubuy", address:"3 rue de Paris", city:"91090 Lisses")
pharma_11 = Pharma.create!(name:"Pharmacie Lafarrière", address:"108 Avenue Lafarrière", city:"94000 Créteil")
pharma_12 = Pharma.create!(name:"Pharmacie du Fort d'Issy", address:"63 Espl. du Belvedère", city:"92130 Issy-les-Moulineaux")
pharma_13 = Pharma.create!(name:"Pharmacie de la Place de la République", address:"5 Place de la République", city:"75003 Paris")
pharma_14 = Pharma.create!(name:"Pharmacie Paris Eiffel Selarl", address:"114 Rue Saint-Dominique", city:"75007 Paris")
pharma_15 = Pharma.create!(name:"Pharmacie du Manège", address:"2 Rue du Mont Valérien", city:"92150 Suresnes")
pharma_16 = Pharma.create!(name:"Pharmacie du Faubourg de l'Arche", address:"36 Boulevard de la Mission Marchand", city:"92400 Courbevoie")
pharma_17 = Pharma.create!(name:"Pharmacie Du Centre Basilique", address:"1 Place de la Halle", city:"93200 Saint-Denis")
pharma_18 = Pharma.create!(name:"Pharmacie Pyramide", address:"8 Route de Saint-Leu", city:"93430 Villetaneuse")
pharma_19 = Pharma.create!(name:"Pharmacie Berthelot", address:"5 Rue Marcelin Berthelot", city:"93700 Drancy")
pharma_20 = Pharma.create!(name:"Pharmacie Fraysse", address:"52 Rue du Commandant Jean Duhail", city:"94120 Fontenay-sous-Bois")
pharma_21 = Pharma.create!(name:"Pharmacie du Lycée", address:"106 Avenue Roger Salengro", city:"94500 Champigny-sur-Marne")
pharma_22 = Pharma.create!(name:"Pharmacie Jean Jaurès", address:"139 Rue Jean Jaurès", city:"94700 Maisons-Alfort")
pharma_23 = Pharma.create!(name:"Pharmacie du Pont-Royal", address:"212 Avenue Aristide Briand", city:"92220 Bagneux")
pharma_24 = Pharma.create!(name:"Pharmacie de la Mairie", address:"26 Avenue Jean Jaurès", city:"92140 Clamart")
pharma_25 = Pharma.create!(name:"Pharmacie des Chantiers", address:"43 Rue des États Généraux", city:"78000 Versailles")
pharma_26 = Pharma.create!(name:"Pharmacie de la Piscine", address:"24 Rue Pottier", city:"78150 Le Chesnay")


puts "#{Pharma.all}"


user_1 = User.create!(full_name: "RAHMANI Farouk", rpps_number: "10101992104", email:"rahmani.farouk@gmail.com", password: "123456", pharma: pharma_1)
user_2 = User.create!(full_name: "Dr TAIRI Walid", rpps_number: "10004000856", email:"tairi.walid@outlook.com", password: "123456", pharma: pharma_2)

puts "#{User.all}"


puts "#{Drug.all}"



filepath = File.join(Rails.root, 'db/drugs_demo.csv')
 csv_options = {
 	col_sep: ',',
 	quote_char: '"'
 }
 CSV.foreach(filepath, csv_options) do |row|
 if row[4] == 'Commercialisée'
  drug = Drug.create!(name: row[1], galenic: row[2], administration: row[3], commercialisation: row[4], drugs_class: row[5], family: row[6], action: row[7], posology: row[8], recommandations: row[9], availability: row[10] )
  puts "#{drug.name} created"
  end
end

mirtazapine = Drug.find_by_name("MIRTAZAPINE 15 mg")
escitalopram_10 = Drug.find_by_name("ESCITALOPRAM 10 mg")
fluoxetine_20 = Drug.find_by_name("FLUOXETINE 20 mg")
paroxetine_20 = Drug.find_by_name("PAROXETINE 20 mg")
sertraline_25 = Drug.find_by_name("SERTRALINE 25 mg")
sertraline_50 = Drug.find_by_name("SERTRALINE 50 mg")
venlafaxine_37 = Drug.find_by_name("VENLAFAXINE LP 37,5 mg")
venlafaxine_75 = Drug.find_by_name("VENLAFAXINE LP 75 mg")
doliprane_1000 = Drug.find_by_name("DOLIPRANE 1000 mg, comprimé")

stock_mirtazapine_1 = Stock.create!(quantity: 0, pharma: pharma_1 , drug: mirtazapine)
stock_mirtazapine_2 = Stock.create!(quantity: 0, pharma: pharma_2 , drug: mirtazapine)
stock_mirtazapine_3 = Stock.create!(quantity: 0, pharma: pharma_3 , drug: mirtazapine)
stock_mirtazapine_4 = Stock.create!(quantity: 0, pharma: pharma_4 , drug: mirtazapine)
stock_mirtazapine_5 = Stock.create!(quantity: 0, pharma: pharma_5 , drug: mirtazapine)
stock_mirtazapine_6 = Stock.create!(quantity: 0, pharma: pharma_6 , drug: mirtazapine)
stock_mirtazapine_7 = Stock.create!(quantity: 0, pharma: pharma_7 , drug: mirtazapine)
stock_mirtazapine_8 = Stock.create!(quantity: 0, pharma: pharma_8 , drug: mirtazapine)
stock_mirtazapine_9 = Stock.create!(quantity: 0, pharma: pharma_9 , drug: mirtazapine)
stock_mirtazapine_10 = Stock.create!(quantity: 5, pharma: pharma_10 , drug: mirtazapine)
stock_mirtazapine_11 = Stock.create!(quantity: 8, pharma: pharma_11 , drug: mirtazapine)
stock_mirtazapine_12 = Stock.create!(quantity: 6, pharma: pharma_12 , drug: mirtazapine)
stock_mirtazapine_13 = Stock.create!(quantity: 4, pharma: pharma_13 , drug: mirtazapine)
stock_mirtazapine_14 = Stock.create!(quantity: 10, pharma: pharma_14 , drug: mirtazapine)
stock_mirtazapine_15 = Stock.create!(quantity: 7, pharma: pharma_15 , drug: mirtazapine)
stock_mirtazapine_16 = Stock.create!(quantity: 5, pharma: pharma_16 , drug: mirtazapine)
stock_mirtazapine_17 = Stock.create!(quantity: 4, pharma: pharma_17 , drug: mirtazapine)
stock_mirtazapine_18 = Stock.create!(quantity: 15, pharma: pharma_18 , drug: mirtazapine)
stock_mirtazapine_19 = Stock.create!(quantity: 9, pharma: pharma_19 , drug: mirtazapine)
stock_mirtazapine_20 = Stock.create!(quantity: 2, pharma: pharma_20 , drug: mirtazapine)
stock_mirtazapine_21 = Stock.create!(quantity: 1, pharma: pharma_21 , drug: mirtazapine)
stock_mirtazapine_22 = Stock.create!(quantity: 10, pharma: pharma_22 , drug: mirtazapine)
stock_mirtazapine_23 = Stock.create!(quantity: 20, pharma: pharma_23 , drug: mirtazapine)
stock_mirtazapine_24 = Stock.create!(quantity: 7, pharma: pharma_24 , drug: mirtazapine)
stock_mirtazapine_25 = Stock.create!(quantity: 13, pharma: pharma_25 , drug: mirtazapine)
stock_mirtazapine_26 = Stock.create!(quantity: 8, pharma: pharma_26 , drug: mirtazapine)


stock_escitalopram_10 = Stock.create!(quantity: 6, pharma: pharma_1 , drug: escitalopram_10 )
stock_fluoxetine_20 = Stock.create!(quantity: 12, pharma: pharma_1 , drug: fluoxetine_20 )
stock_paroxetine_20 = Stock.create!(quantity: 20, pharma: pharma_1 , drug: paroxetine_20 )
stock_sertraline_25 = Stock.create!(quantity: 0, pharma: pharma_1 , drug: sertraline_25 )
stock_sertraline_50 = Stock.create!(quantity: 0, pharma: pharma_1 , drug: sertraline_50 )
stock_venlafaxine_37 = Stock.create!(quantity: 5, pharma: pharma_1 , drug: venlafaxine_37 )
stock_venlafaxine_75 = Stock.create!(quantity: 10, pharma: pharma_1 , drug: venlafaxine_75 )






puts "#{Stock.all}"

doctor_1 = Doctor.create!(full_name: "BOLTA Victor", rpps_number:"10004000856" , speciality: "Psychiatre")
doctor_2 = Doctor.create!(full_name: "TAIRI Walid", rpps_number:"10003231205" , speciality: "Généraliste")
doctor_3 = Doctor.create!(full_name: "RAHMANI Djamel", rpps_number:"10004000856" , speciality: "Radiologue")
doctor_4 = Doctor.create!(full_name: "PAULET Gilles", rpps_number:"10004000856" , speciality: "Généraliste")
doctor_5 = Doctor.create!(full_name: "DEVEZE Jean-Charles", rpps_number:"10004000856" , speciality: "Généraliste")
doctor_6 = Doctor.create!(full_name: "SALTEL Florence", rpps_number:"10004000856" , speciality: "Généraliste")
doctor_6 = Doctor.create!(full_name: "ALDEBERT Pierre", rpps_number:"10004000856" , speciality: "ORL")
doctor_7 = Doctor.create!(full_name: "DUMAS Mathilde", rpps_number:"10004000856" , speciality: "Généraliste")

puts "#{Doctor.all}"



patient_1 = Patient.create!(first_name: "Véronique", last_name: "DUBOIS", address: " 16 rue de Gaudelet", age: 37, city: " 75011 Paris", chronic_disease: "Dépression", doctor: doctor_1, pharma: pharma_1)
patient_2 = Patient.create!(first_name: "Victor", last_name: "BERGEAUD", address: "11 rue Vaucouleurs", age: 28, city: "75011 Paris", chronic_disease: "Aucune", doctor: doctor_2, pharma: pharma_1)
patient_3 = Patient.create!(first_name: "Michel", last_name: "DUPONT", address: "11 rue de Vaugirard", age: 55, city: "75006 Paris", chronic_disease: "Hypertension artérielle, Diabète", doctor: doctor_4, pharma: pharma_1)
patient_4 = Patient.create!(first_name: "Laurent", last_name: "DURAND", address: "11 rue de Vaugirard", age: 55, city: "75011 Paris", chronic_disease: "Hypertension artérielle", doctor: doctor_4, pharma: pharma_1)
patient_4 = Patient.create!(first_name: "Michelle", last_name: "LEFÈVRE", address: "11 rue de Vaugirard", age: 55, city: "75020 Paris", chronic_disease: "Polyarthrithe Rhumatoide", doctor: doctor_4, pharma: pharma_1)
patient_4 = Patient.create!(first_name: "Delphine", last_name: "ROUX", address: "11 rue de Vaugirard", age: 55, city: "75011 Paris", chronic_disease: "Sclerose en plaque", doctor: doctor_4, pharma: pharma_1)
patient_4 = Patient.create!(first_name: "Lucie", last_name: "MOREAU", address: "11 rue de Vaugirard", age: 55, city: "75011 Paris", chronic_disease: "Diabète", doctor: doctor_4, pharma: pharma_1)
patient_4 = Patient.create!(first_name: "Malia", last_name: "SANGARE", address: "11 rue de Vaugirard", age: 55, city: "75011 Paris", chronic_disease: "Schizophrénie", doctor: doctor_4, pharma: pharma_1)
patient_4 = Patient.create!(first_name: "Fadhila", last_name: "BOUNOUH", address: "11 rue de Vaugirard", age: 55, city: "75020 Paris", chronic_disease: "maladie d'Alzheimer", doctor: doctor_4, pharma: pharma_1)
patient_4 = Patient.create!(first_name: "Jeremie", last_name: "LEROY", address: "11 rue de Vaugirard", age: 55, city: "75006 Paris", chronic_disease: "Hypertension artérielle, Diabète", doctor: doctor_4, pharma: pharma_1)
patient_4 = Patient.create!(first_name: "Michel", last_name: "DUPUIS", address: "11 rue de Vaugirard", age: 55, city: "75011 Paris", chronic_disease: "Hypertension artérielle, Diabète", doctor: doctor_4, pharma: pharma_1)
patient_4 = Patient.create!(first_name: "Michel", last_name: "DUPONT", address: "11 rue de Vaugirard", age: 55, city: "75011 Paris", chronic_disease: "Hypertension artérielle, Diabète", doctor: doctor_4, pharma: pharma_1)
patient_4 = Patient.create!(first_name: "Michel", last_name: "DUPONT", address: "11 rue de Vaugirard", age: 55, city: "75011 Paris", chronic_disease: "Hypertension artérielle, Diabète", doctor: doctor_4, pharma: pharma_1)




puts "#{Patient.all}"

patient_drugs_1 = PatientDrug.create!(drug: doliprane_1000, patient: patient_1 , disease:"Depression")

puts "#{PatientDrug.all}"

chatroom_1 = Chatroom.create!(name: "Général")

puts "#{Chatroom.all}"



