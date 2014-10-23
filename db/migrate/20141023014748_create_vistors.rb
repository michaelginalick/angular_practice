class CreateVistors < ActiveRecord::Migration
  def change
    create_table :vistors do |t|
      t.string :first_name
      t.string :last_name
      t.string :reason

      t.timestamps
    end
  end
end
