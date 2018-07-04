require 'test_helper'

class PupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pup = pups(:one)
  end

  test "should get index" do
    get pups_url
    assert_response :success
  end

  test "should get new" do
    get new_pup_url
    assert_response :success
  end

  test "should create pup" do
    assert_difference('Pup.count') do
      post pups_url, params: { pup: { age: @pup.age, alturacernelha: @pup.alturacernelha, breed: @pup.breed, corpelo: @pup.corpelo, genre: @pup.genre, length: @pup.length, mothername: @pup.mothername, name: @pup.name, namefather: @pup.namefather, pedigree: @pup.pedigree, rg: @pup.rg, temperament: @pup.temperament, tipopelo: @pup.tipopelo, vaccine: @pup.vaccine, weigth: @pup.weigth } }
    end

    assert_redirected_to pup_url(Pup.last)
  end

  test "should show pup" do
    get pup_url(@pup)
    assert_response :success
  end

  test "should get edit" do
    get edit_pup_url(@pup)
    assert_response :success
  end

  test "should update pup" do
    patch pup_url(@pup), params: { pup: { age: @pup.age, alturacernelha: @pup.alturacernelha, breed: @pup.breed, corpelo: @pup.corpelo, genre: @pup.genre, length: @pup.length, mothername: @pup.mothername, name: @pup.name, namefather: @pup.namefather, pedigree: @pup.pedigree, rg: @pup.rg, temperament: @pup.temperament, tipopelo: @pup.tipopelo, vaccine: @pup.vaccine, weigth: @pup.weigth } }
    assert_redirected_to pup_url(@pup)
  end

  test "should destroy pup" do
    assert_difference('Pup.count', -1) do
      delete pup_url(@pup)
    end

    assert_redirected_to pups_url
  end
end
