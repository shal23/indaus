class CreateEnquirers < ActiveRecord::Migration
  def change
    create_table :enquirers do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
