class AddPhoneNumberToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :phone_number, :string
  end
end
