class Calculadora

    def soma(n1, n2)
        n1+n2
    end

    def sub(n1, n2)
        n1-n2
    end

    def mult(n1, n2)
        n1*n2
    end

    def div(n1, n2)
        if(n2 != 0)
            n1/n2
        else
            "Impossível dividir qualquer número por 0!"
        end
    end
end