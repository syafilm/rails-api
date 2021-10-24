class ReservationSerializer < ActiveModel::Serializer
  attributes  :code,
              :start_date,
              :end_date,
              :expected_payout_amount,
              :guest_details,
              :guest_email,
              :guest_first_name,
              :guest_last_name,
              :guest_phone_numbers,
              :listing_security_price_accurate,
              :host_currency,
              :nights,
              :number_of_guests,
              :status_type,
              :total_paid_amount_accurate

  def guest_details
    {
      localized_description: object.guest.localized_description,
      number_of_adults:  object.guest.number_of_adults,
      number_of_children:  object.guest.number_of_children,
      number_of_infants:  object.guest.number_of_infants
    }
  end

  def guest_email
    object.guest.email
  end

  def guest_first_name
    object.guest.first_name
  end

  def guest_last_name
    object.guest.last_name
  end

  def guest_phone_numbers
    object.guest.phone
  end

  def number_of_guests
    object.guest.number_of_adults + object.guest.number_of_children + object.guest.number_of_infants
  end

  def status_type
    object.guest.status
  end
  
end
