require 'test_helper'

class ShootsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shoot = shoots(:one)
  end

  test "should get index" do
    get shoots_url
    assert_response :success
  end

  test "should get new" do
    get new_shoot_url
    assert_response :success
  end

  test "should create shoot" do
    assert_difference('Shoot.count') do
       post shoots_url, params: { shoot: { slug: "#{@shoot.slug} 2", assignment_description: @shoot.assignment_description, start: @shoot.start, end: @shoot.end, location: @shoot.location, contact_name: @shoot.contact_name, contact_phone_number: @shoot.contact_phone_number, deadline: @shoot.deadline } }
    end

    assert_redirected_to shoot_url(Shoot.last)
  end

  test "should show shoot" do
    get shoot_url(@shoot)
    assert_response :success
  end

  test "should get edit" do
    get edit_shoot_url(@shoot)
    assert_response :success
  end

  test "should update shoot" do
    patch shoot_url(@shoot), params: { shoot: {slug: @shoot.slug, assignment_description: @shoot.assignment_description, start: @shoot.start, end: @shoot.end, location: @shoot.location, contact_name: @shoot.contact_name, contact_phone_number: @shoot.contact_phone_number, deadline: @shoot.deadline } }
    assert_redirected_to shoot_url(@shoot)
  end

  test "should destroy shoot" do
    assert_difference('Shoot.count', -1) do
      delete shoot_url(@shoot)
    end

    assert_redirected_to shoots_url
  end
end
