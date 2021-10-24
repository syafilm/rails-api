class GuestsService
  def initialize(params)
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @phone = params[:phone]
    @email = params[:email]
    @status = params[:status].to_i
    @localized_description = params[:localized_description]
    @number_of_adults = params[:number_of_adults]
    @number_of_children = params[:number_of_children]
    @number_of_infants = params[:number_of_infants]
  end

  def perform_create
    Guest.new(
      first_name: @first_name,
      last_name: @last_name,
      phone: @phone,
      email: @email,
      status: @status,
      localized_description: @localized_description,
      number_of_adults: @number_of_adults,
      number_of_children: @number_of_children,
      number_of_infants: @number_of_infants,
    )
  end

  def object_create(guest)
    guest.first_name = @first_name if @first_name.present?
    guest.last_name = @last_name if @last_name.present?
    guest.phone = @phone if @phone.present?
    guest.email = @email if @email.present?
    guest.status = @status if @status.present?
    guest.localized_description = @localized_description if @localized_description.present?
    guest.number_of_adults = @number_of_adults if @number_of_adults.present?
    guest.number_of_children = @number_of_children if @number_of_children.present?
    guest.number_of_infants = @number_of_infants if @number_of_infants.present?
    guest
  end  
end
