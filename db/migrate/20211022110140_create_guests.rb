class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.string      :first_name,    null: false, default: ""
      t.string      :last_name,    null: false, default: ""
      t.text        :phone
      t.string      :email,    null: false, default: ""
      t.integer     :status,  :default => 0
      t.text        :localized_description
      t.integer     :number_of_adults
      t.integer     :number_of_children
      t.integer     :number_of_infants
      t.timestamps
    end

    add_index :guests, :email,    unique: true
  end
end
