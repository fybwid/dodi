# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Create User - START"
User.destroy_all
p "Destroy all user"
user = User.create! :email => 'konseptor_sekjen@dodi.com', :password => 'Konseptor Sekjen', :password_confirmation => 'Konseptor Sekjen'
p "Create Konseptor Sekjen"
user = User.create! :email => 'kasie_sekjen@dodi.com', :password => 'Kasie Sekjen', :password_confirmation => 'Kasie Sekjen'
p "Create Kasie Sekjen"
user = User.create! :email => 'ktu@dodi.com', :password => 'KTU Sekjen', :password_confirmation => 'KTU Sekjen'
p "Create KTU Sekjen"
user = User.create! :email => 'kepala@dodi.com', :password => 'Kepala Sekjen', :password_confirmation => 'Kepala Sekjen'
p "Create Kepala Kantor"
p "Create User - END"

