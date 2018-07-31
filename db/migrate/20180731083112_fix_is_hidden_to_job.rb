class FixIsHiddenToJob < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs,:is_hidden
    add_column :jobs,:is_hidden, :boolean, default:false
  end
end
