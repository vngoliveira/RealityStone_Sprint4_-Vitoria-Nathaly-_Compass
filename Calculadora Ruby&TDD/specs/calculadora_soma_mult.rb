require 'rspec'
require_relative '../src/logic_calculadora'

describe('Calculadora mista: soma e multiplicação') do

    calculadora = Calculadora.new

    it('Calcular a soma e multiplicação (n1+n2*n3+n4) de quatro números inteiros positivos') do
        expect(calculadora.soma_mult(12, 1, 23, 7)).to eq 42
    end

    it('Calcular a soma e multiplicação (n1+n2*n3+n4) de quatro números decimais positivos') do
        expect(calculadora.soma_mult(20.4, 12.3, 7.2, 1.9).round(2)).to eq 110.86
    end

    it('Calcular a soma e multiplicação (n1+n2*n3+n4) de quatro números inteiros negativos') do
        expect(calculadora.soma_mult(-7, -21, -8, -3)).to eq 158
    end

    it('Calcular a soma e multiplicação (n1+n2*n3+n4) de dois números negativos e dois positivos inteiros') do
        expect(calculadora.soma_mult(-9, -12, 23, 4)).to eq -281
    end
end