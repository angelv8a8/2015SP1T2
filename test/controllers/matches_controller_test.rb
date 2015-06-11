require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post :create, match: { empate?: @match.empate?, equipo_ganador: @match.equipo_ganador, equipo_local: @match.equipo_local, equipo_perdedor: @match.equipo_perdedor, equipo_visitante: @match.equipo_visitante, estadio: @match.estadio, estado: @match.estado, fase: @match.fase, grupo: @match.grupo, marcador_local: @match.marcador_local, marcador_visitante: @match.marcador_visitante, matchdate: @match.matchdate }
    end

    assert_redirected_to match_path(assigns(:match))
  end

  test "should show match" do
    get :show, id: @match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match
    assert_response :success
  end

  test "should update match" do
    patch :update, id: @match, match: { empate?: @match.empate?, equipo_ganador: @match.equipo_ganador, equipo_local: @match.equipo_local, equipo_perdedor: @match.equipo_perdedor, equipo_visitante: @match.equipo_visitante, estadio: @match.estadio, estado: @match.estado, fase: @match.fase, grupo: @match.grupo, marcador_local: @match.marcador_local, marcador_visitante: @match.marcador_visitante, matchdate: @match.matchdate }
    assert_redirected_to match_path(assigns(:match))
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete :destroy, id: @match
    end

    assert_redirected_to matches_path
  end
end
