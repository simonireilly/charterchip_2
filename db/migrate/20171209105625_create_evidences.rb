class CreateEvidences < ActiveRecord::Migration[5.1]
  def change
    create_table :evidences do |t|
      t.string :competency
      t.integer :level
      t.string :title
      t.string :summary
      t.boolean :complete
      t.text :report
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
