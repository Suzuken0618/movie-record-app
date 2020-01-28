class AddServiceIdToRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :records, :service_id, :integer
  end
end
