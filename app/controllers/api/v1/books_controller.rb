module Api
  module V1
    class BooksController < Api::V1::BaseController

      def update
        type = params['type']
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
            :type
          )
        end
      end

    end
end