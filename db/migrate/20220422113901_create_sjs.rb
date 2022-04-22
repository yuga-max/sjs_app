class CreateSjs < ActiveRecord::Migration[6.1]
  def change
    create_table :sjs do |t|
      t.string :name
      t.string :title
      t.string :startday
      t.string :finishday

      t.timestamps
    end
  end
end
