class GuestSerializer < ActiveModel::Serializer
  attributes :reservation_code,
             :start_date,
             :end_date,
             :nights,
             :guests,
             :adults,
             :children,
             :infants,
             :status,
             :guest,
             :currency,
             :payout_price,
             :security_price,
             :total_price

  def reservation_code
    object.reservation.code
  end

  def start_date
    object.reservation.start_date
  end

  def end_date
    object.reservation.end_date
  end

  def nights
    object.reservation.nights
  end

  def guests
    object.number_of_adults + object.number_of_children + object.number_of_infants
  end

  def adults
    object.number_of_adults
  end

  def children
    object.number_of_children
  end
  
  def infants
    object.number_of_infants
  end

  def guests
    {
      first_name: object.first_name,
      last_name: object.last_name,
      phone: object.phone,
      email: object.email
    }
  end

  def currency
    object.reservation.host_currency
  end

  def payout_price
    object.reservation.expected_payout_amount
  end

  def security_price
    object.reservation.listing_security_price_accurate
  end

  def total_price
    object.reservation.total_paid_amount_accurate
  end
  
end
