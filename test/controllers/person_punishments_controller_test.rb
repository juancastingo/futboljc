require 'test_helper'

class PersonPunishmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_punishment = person_punishments(:one)
  end

  test "should get index" do
    get person_punishments_url
    assert_response :success
  end

  test "should get new" do
    get new_person_punishment_url
    assert_response :success
  end

  test "should create person_punishment" do
    assert_difference('PersonPunishment.count') do
      post person_punishments_url, params: { person_punishment: { person_id: @person_punishment.person_id, punishment_id: @person_punishment.punishment_id } }
    end

    assert_redirected_to person_punishment_url(PersonPunishment.last)
  end

  test "should show person_punishment" do
    get person_punishment_url(@person_punishment)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_punishment_url(@person_punishment)
    assert_response :success
  end

  test "should update person_punishment" do
    patch person_punishment_url(@person_punishment), params: { person_punishment: { person_id: @person_punishment.person_id, punishment_id: @person_punishment.punishment_id } }
    assert_redirected_to person_punishment_url(@person_punishment)
  end

  test "should destroy person_punishment" do
    assert_difference('PersonPunishment.count', -1) do
      delete person_punishment_url(@person_punishment)
    end

    assert_redirected_to person_punishments_url
  end
end
