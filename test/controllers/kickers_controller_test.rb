require 'test_helper'

class KickersControllerTest < ActionController::TestCase
  setup do
    @kicker = kickers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kickers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kicker" do
    assert_difference('Kicker.count') do
      post :create, kicker: { act_score: @kicker.act_score, bench_press: @kicker.bench_press, bio: @kicker.bio, college_credit_count: @kicker.college_credit_count, contact_email: @kicker.contact_email, contact_phone: @kicker.contact_phone, dob: @kicker.dob, forty_yd_dash: @kicker.forty_yd_dash, gpa: @kicker.gpa, graduation_year: @kicker.graduation_year, height_inches: @kicker.height_inches, leg_press: @kicker.leg_press, mug_shot_url: @kicker.mug_shot_url, sat_score: @kicker.sat_score, vertical_jump: @kicker.vertical_jump, weight_pounds: @kicker.weight_pounds }
    end

    assert_redirected_to kicker_path(assigns(:kicker))
  end

  test "should show kicker" do
    get :show, id: @kicker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kicker
    assert_response :success
  end

  test "should update kicker" do
    patch :update, id: @kicker, kicker: { act_score: @kicker.act_score, bench_press: @kicker.bench_press, bio: @kicker.bio, college_credit_count: @kicker.college_credit_count, contact_email: @kicker.contact_email, contact_phone: @kicker.contact_phone, dob: @kicker.dob, forty_yd_dash: @kicker.forty_yd_dash, gpa: @kicker.gpa, graduation_year: @kicker.graduation_year, height_inches: @kicker.height_inches, leg_press: @kicker.leg_press, mug_shot_url: @kicker.mug_shot_url, sat_score: @kicker.sat_score, vertical_jump: @kicker.vertical_jump, weight_pounds: @kicker.weight_pounds }
    assert_redirected_to kicker_path(assigns(:kicker))
  end

  test "should destroy kicker" do
    assert_difference('Kicker.count', -1) do
      delete :destroy, id: @kicker
    end

    assert_redirected_to kickers_path
  end
end
