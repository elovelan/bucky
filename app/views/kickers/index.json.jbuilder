json.array!(@kickers) do |kicker|
  json.extract! kicker, :id, :contact_email, :contact_phone, :dob, :graduation_year, :mug_shot_url, :bio, :gpa, :sat_score, :act_score, :college_credit_count, :height_inches, :weight_pounds, :forty_yd_dash, :bench_press, :vertical_jump, :leg_press
  json.url kicker_url(kicker, format: :json)
end
