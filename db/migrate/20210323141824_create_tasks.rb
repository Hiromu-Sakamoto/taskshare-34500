class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string     :title,           null: false
      t.text       :matter,          null: false
      t.integer    :status_id,       null: false
      t.date       :scheduled_date,  null: false
      t.date       :completion_date
      t.integer    :progress_id,     null: false
      t.integer    :flag_id,         null: false
      t.text       :supplement
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
