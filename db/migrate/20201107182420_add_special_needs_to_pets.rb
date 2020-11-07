class AddSpecialNeedsToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :special_needs, :boolean
  end
end
