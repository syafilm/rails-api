class ReservationsService
  def initialize(params)
    @code = params[:code]
    @start_date = params[:start_date]
    @end_date = params[:end_date]
    @expected_payout_amount = params[:expected_payout_amount]
    @listing_security_price_accurate = params[:listing_security_price_accurate]
    @host_currency = params[:host_currency]
    @nights = params[:nights]
    @total_paid_amount_accurate = params[:total_paid_amount_accurate]
    @guest_id = params[:guest_id]
  end

  def perform_create
    Reservation.new(
      code: @code,
      start_date: @start_date, 
      end_date: @end_date, 
      expected_payout_amount: @expected_payout_amount, 
      listing_security_price_accurate: @listing_security_price_accurate, 
      host_currency: @host_currency, 
      nights: @nights, 
      total_paid_amount_accurate: @total_paid_amount_accurate, 
      guest_id: @guest_id,
    )
  end

  def object_create(reservation)
    reservation.code = @code if @code.present?
    reservation.start_date = @start_date if @start_date.present?
    reservation.end_date = @end_date if @end_date.present?
    reservation.expected_payout_amount = @expected_payout_amount if @expected_payout_amount.present?
    reservation.listing_security_price_accurate = @listing_security_price_accurate if @listing_security_price_accurate.present?
    reservation.host_currency = @host_currency if @host_currency.present?
    reservation.nights = @nights if @nights.present?
    reservation.total_paid_amount_accurate = @total_paid_amount_accurate if @total_paid_amount_accurate.present?
    reservation.guest_id = @guest_id if @guest_id.present?
    reservation
  end  
end
