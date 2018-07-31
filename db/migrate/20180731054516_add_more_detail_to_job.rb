class AddMoreDetailToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs,:wage_upper_bound,:integer
    add_column :jobs,:wage_lowper_bound,:integer
    add_column :jobs,:contact_email,:string
  end
end
