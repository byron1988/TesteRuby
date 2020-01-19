require "test/unit"
require_relative './jogo_arremesso'

class PartidaTest < Test::Unit::TestCase
  def test_posso_ver_quantidade_pulos_jogador_um
    partida = Partida.new("Egio", "Jaco", [4, 2], [2, 5], [0, 3])
    assert_equal 4+2+0, partida.pulos_jogador_um, "partida.pulos_jogador_um deve retornar um natural 6"
  end

  def test_posso_ver_quantidade_pulos_jogador_dois
    partida = Partida.new("Egio", "Jaco", [4, 2], [2, 5], [0, 3])
    assert_equal 2+5+3, partida.pulos_jogador_dois, "partida.pulos_jogador_dois deve retornar 10"
  end

  def test_jogador_um_vitorioso_na_partida
    mensagem_erro = "partida.jogador_vitorioso_na_patida deve ser o jogador com maior quantidade de pulos"
    partida = Partida.new("Egio", "Jaco", [4, 2], [2, 5], [5, 3])
    assert_equal "Egio", partida.jogador_vitorioso_na_partida, mensagem_erro
  end

  def test_jogador_dois_vitorioso_na_partida
    mensagem_erro = "partida.jogador_vitorioso_na_patida deve ser o jogador com maior quantidade de pulos"
    partida = Partida.new("Egio", "Jaco", [4, 2], [2, 5], [0, 3])
    assert_equal "Jaco", partida.jogador_vitorioso_na_partida, mensagem_erro
  end

  def test_pulos_do_jogador_na_jogada_um_for_maior_que_10
    partida = Partida.new("Egio", "Jaco", [4, 11], [2, 5], [0, 3])
    assert_equal 21, partida.pulos_jogador_dois, "partida.pulos_jogador_dois deve retornar 21"
  end
  
  def test_pulos_do_jogador_na_jogada_dois_for_maior_que_10
    partida = Partida.new("Egio", "Jaco", [4, 5], [2, 11], [0, 3])
    assert_equal 21, partida.pulos_jogador_dois, "partida.pulos_jogador_dois deve retornar 21"
  end 

  def test_pulos_do_jogador_na_jogada_tres_for_maior_que_10
    partida = Partida.new("Egio", "Jaco", [4, 5], [2, 3], [0, 11])
    assert_equal 21, partida.pulos_jogador_dois, "partida.pulos_jogador_dois deve retornar 21"
  end

  def test_pulos_do_jogador_na_jogada_um_dois_tres_for_maior_que_10
    partida = Partida.new("Egio", "Jaco", [4, 11], [2, 11], [0, 11])
    assert_equal 39, partida.pulos_jogador_dois, "partida.pulos_jogador_dois deve retornar 21"
  end
end