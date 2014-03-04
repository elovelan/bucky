class CreateKickers < ActiveRecord::Migration
  def change
    create_table :kickers do |t|
      t.string :contact_email
      t.string :contact_phone
      t.date :dob
      t.string :graduation_year
      t.string :mug_shot_url
      t.text :bio
      t.decimal :gpa
      t.integer :sat_score
      t.integer :act_score
      t.integer :college_credit_count
      t.decimal :height_inches
      t.integer :weight_pounds
      t.decimal :forty_yd_dash
      t.integer :bench_press
      t.decimal :vertical_jump
      t.integer :leg_press

      t.timestamps
    end
  end
end
