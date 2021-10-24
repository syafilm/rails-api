# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

guest = Guest.create(
  first_name: "Wayne",
  last_name: "Woodbridge",
  phone: 639123456789,
  email: "wayne_woodbridge@bnb.com",
  status: 0,
  localized_description: "4 guests",
  number_of_adults: 2, 
  number_of_children: 2, 
  number_of_infants: 0,
)


reservation = Reservation.create(
  code: "XXX12345678",
  start_date: "2021-03-12", 
  end_date: "2021-03-16", 
  expected_payout_amount: 3800.00, 
  listing_security_price_accurate: 500.00, 
  host_currency: "AUD",
  nights: 4,
  total_paid_amount_accurate: 4300.00, 
  guest_id: guest.id
)