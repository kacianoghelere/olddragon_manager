require 'test_helper'

class CharacterClassEvolutionsControllerTest < ActionController::TestCase
  setup do
    @character_class_evolution = character_class_evolutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_class_evolutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_class_evolution" do
    assert_difference('CharacterClassEvolution.count') do
      post :create, character_class_evolution: { attack_base2: @character_class_evolution.attack_base2, attack_base: @character_class_evolution.attack_base, character_class_id: @character_class_evolution.character_class_id, exp: @character_class_evolution.exp, level: @character_class_evolution.level, life_amount: @character_class_evolution.life_amount, plus_life: @character_class_evolution.plus_life, protection_mod: @character_class_evolution.protection_mod }
    end

    assert_redirected_to character_class_evolution_path(assigns(:character_class_evolution))
  end

  test "should show character_class_evolution" do
    get :show, id: @character_class_evolution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_class_evolution
    assert_response :success
  end

  test "should update character_class_evolution" do
    patch :update, id: @character_class_evolution, character_class_evolution: { attack_base2: @character_class_evolution.attack_base2, attack_base: @character_class_evolution.attack_base, character_class_id: @character_class_evolution.character_class_id, exp: @character_class_evolution.exp, level: @character_class_evolution.level, life_amount: @character_class_evolution.life_amount, plus_life: @character_class_evolution.plus_life, protection_mod: @character_class_evolution.protection_mod }
    assert_redirected_to character_class_evolution_path(assigns(:character_class_evolution))
  end

  test "should destroy character_class_evolution" do
    assert_difference('CharacterClassEvolution.count', -1) do
      delete :destroy, id: @character_class_evolution
    end

    assert_redirected_to character_class_evolutions_path
  end
end
