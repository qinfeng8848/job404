class AddWageLowerBoundToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs,:wage_lower_bound,:integer
    remove_column :jobs,:wage_lowper_bound
  end
end
