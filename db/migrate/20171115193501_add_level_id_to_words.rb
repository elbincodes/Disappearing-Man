class AddLevelIdToWords < ActiveRecord::Migration[5.1]
  def change
    add_column :words, :level_id, :integer
  end
end
