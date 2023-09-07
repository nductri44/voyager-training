require './address'
require './user'

user1 = User.new('cameron_diaz@gmail.com', 'password', 'Cameron', 'Diaz')
# user1.create_account
# user1.update_account

address1 = Address.new('TP.HCM', 'Q12, CVPM Quang Trung')
address1.print_info(user1)
