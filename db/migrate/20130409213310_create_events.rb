class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :show_time

      t.timestamps
    end
  end
end
