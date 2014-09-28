require 'test_helper'

class DesignsControllerTest < ActionController::TestCase
  setup do
    @design = designs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create design" do
    assert_difference('Design.count') do
      post :create, design: { account_file: @design.account_file, account_id: @design.account_id, created_at: @design.created_at, design_id: @design.design_id, has_upload: @design.has_upload, postal_code: @design.postal_code, product_id: @design.product_id, save_method: @design.save_method, total_units: @design.total_units, updated_at: @design.updated_at }
    end

    assert_redirected_to design_path(assigns(:design))
  end

  test "should show design" do
    get :show, id: @design
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @design
    assert_response :success
  end

  test "should update design" do
    patch :update, id: @design, design: { account_file: @design.account_file, account_id: @design.account_id, created_at: @design.created_at, design_id: @design.design_id, has_upload: @design.has_upload, postal_code: @design.postal_code, product_id: @design.product_id, save_method: @design.save_method, total_units: @design.total_units, updated_at: @design.updated_at }
    assert_redirected_to design_path(assigns(:design))
  end

  test "should destroy design" do
    assert_difference('Design.count', -1) do
      delete :destroy, id: @design
    end

    assert_redirected_to designs_path
  end
end
