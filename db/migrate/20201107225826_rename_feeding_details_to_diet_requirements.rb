class RenameFeedingDetailsToDietRequirements < ActiveRecord::Migration[6.0]
  def change
    rename_column :pets, :feeding_details, :diet_requirements
  end
end
