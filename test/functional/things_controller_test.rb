require 'test_helper'

class ThingsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Thing.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Thing.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to things_url
  end
  
  def test_edit
    get :edit, :id => Thing.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Thing.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Thing.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Thing.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Thing.first
    assert_redirected_to things_url
  end
end
