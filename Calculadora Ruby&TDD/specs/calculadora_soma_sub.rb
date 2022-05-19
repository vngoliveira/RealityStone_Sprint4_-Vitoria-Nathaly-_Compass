require 'rspec'
require_relative '../src/logic_calculadora'

describe('Calculadora mista: soma e subtração') do

    calculadora = Calculadora.new

    it('Calcular a soma e subtração (n1+n2-n3+n4) de quatro números inteiros positivos') do
        expect(calculadora.soma_sub(12, 1, 23, 7)).to eq -3
    end

    it('Calcular a soma e subtração (n1+n2-n3+n4) de quatro números decimais positivos') do
        expect(calculadora.soma_sub(20.4, 12.3, 7.2, 1.9).round(1)).to eq 27.4
    end

    it('Calcular a soma e subtração (n1+n2-n3+n4) de quatro números inteiros negativos') do
        expect(calculadora.soma_sub(-7, -21, -8, -3)).to eq -23
    end

    it('Calcular a soma e subtração (n1+n2-n3+n4) de dois números negativos e dois positivos inteiros') do
        expect(calculadora.soma_sub(-9, -12, 23, 4)).to eq -40
    end
end