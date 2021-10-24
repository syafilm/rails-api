module Api
  module V1
    class BooksController < Api::V1::BaseController

      def update
        type = book_params[:type]
        reservation_id = book_params[:reservation_id]
        guest_id = book_params[:guest_id]
        if type == 'reservation'
          reservation = Reservation.find_by(id: reservation_id)
          @reservation = ReservationsService.new(book_params).object_create(reservation)
          if @reservation.save
            render json: @reservation
          end
        end

        if type == 'guest'
          guest = Guest.find_by(id: guest_id)
          @guest = GuestsService.new(book_params).object_create(guest)
          if @guest.save
            render json: @guest
          end
        end
      end

      private

        def book_params
          params.require(:book).permit(
            :first_name,
            :last_name,
            :phone,
            :email,
            :status,
            :localized_description,
            :number_of_adults,
            :number_of_children,
            :number_of_infants,
            :code,
            :start_date,
            :end_date,
            :expected_payout_amount, 
            :listing_security_price_accurate,
            :host_currency,
            :nights,
            :total_paid_amount_accurate,
            :type,
            :reservation_id,
            :guest_id
          )
        end
      end

    end
end