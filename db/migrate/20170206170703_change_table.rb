class ChangeTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :business_types, :type, :name
  end
end
