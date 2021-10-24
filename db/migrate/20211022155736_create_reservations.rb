class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string            :code,    null: false, default: ""
      t.datetime          :start_date
      t.datetime          :end_date
      t.decimal           :expected_payout_amount, precision: 8, scale: 2
      t.decimal           :listing_security_price_accurate, precision: 8, scale: 2
      t.string            :host_currency, null: false, default: ""
      t.integer           :nights
      t.decimal           :total_paid_amount_accurate, precision: 8, scale: 2
      t.belongs_to        :guest
      t.timestamps
    end

    add_index :reservations, :code,    unique: true
  end
end
