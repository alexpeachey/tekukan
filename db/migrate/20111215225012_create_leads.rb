class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
