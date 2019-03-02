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
       post shoots_url, params: { shoot: { slug: 'TestAssignment', assignment_description: 'A description here', start: '01-02-19 7', end: '01-02-19 13', location: 'The courthouse', contact_name: 'Bob Jones', contact_phone_number: '810-999-7543', deadline: '01-02-19 15'  } }
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
    patch shoot_url(@shoot), params: { shoot: { slug: 'TestUpdateAssignment', assignment_description: 'A description here', start: '01-02-19 7', end: '01-02-19 13', location: 'The courthouse', contact_name: 'Bob Jones', contact_phone_number: '810-999-7543', deadline: '01-02-19 15' } }
    assert_redirected_to shoot_url(@shoot)
  end

  test "should destroy shoot" do
    assert_difference('Shoot.count', -1) do
      delete shoot_url(@shoot)
    end

    assert_redirected_to shoots_url
  end
end
