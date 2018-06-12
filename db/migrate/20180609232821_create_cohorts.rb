class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :start
      t.date :end
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end
  end
end
