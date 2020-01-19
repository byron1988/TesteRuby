
class Partida
    def initialize(jogador_um, jogador_dois, jogada_um, jogada_dois, jogada_tres)
        @jogador_um = jogador_um
        @jogador_dois = jogador_dois
        @jogada_um = jogada_um
        @jogada_dois = jogada_dois
        @jogada_tres = jogada_tres
    end

    def pulos_jogador_um
        pulos_jogador 0
    end
    

    def pulos_jogador_dois
       pulos_jogador 1 
    end

    def pulos_jogador index
        acrescimo = 0
        if @jogada_um[index] > 10
            acrescimo += 2
        end
        if @jogada_dois[index] > 10
            acrescimo += 2
        end
        if @jogada_tres[index] > 10
            acrescimo += 2
        end
        @jogada_um[index] + @jogada_dois[index] + @jogada_tres[index] + acrescimo
    end

    def jogador_vitorioso_na_partida
        if  pulos_jogador_um < pulos_jogador_dois
            return @jogador_dois
        end
        return @jogador_um
    end


end

class Campeonato
    def self.gerar_classificao
        puts "Hello"
    end
end

Campeonato.gerar_classificao
