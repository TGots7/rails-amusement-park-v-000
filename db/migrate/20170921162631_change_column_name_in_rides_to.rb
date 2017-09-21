class ChangeColumnNameInRidesTo < ActiveRecord::Migration
  def change
    rename_column :rides, :atraction_id, :attraction_id
  end
end
