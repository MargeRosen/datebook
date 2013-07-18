class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :event
      t.text :description
      t.text :location
      t.datetime :date

      t.timestamps
    end
  end
end
