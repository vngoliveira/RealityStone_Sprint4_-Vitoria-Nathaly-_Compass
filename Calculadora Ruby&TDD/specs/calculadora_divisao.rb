require 'rspec'
require_relative '../src/logic_calculadora'

describe('Calculadora de divisão') do

    calculadora = Calculadora.new

    it('Calcular a divisão de dois números inteiros positivos') do
        expect(calculadora.div(9, 5)).to eq 1.8
    end

    it('Calcular a divisão de dois números decimais positivos') do
        expect(calculadora.div(21.6, 13.3).round(1)).to eq 1.6
    end

    it('Calcular a divisão de dois números inteiros negativos') do
        expect(calculadora.div(-7, -3).round(1)).to eq 2.3
    end

    it('Calcular a divisão de um número negativo e outro positivo inteiros') do
        expect(calculadora.div(-12, 4)).to eq -3
    end

    it('Calcular a divisão de um número inteiro positivo com o 0') do
        expect(calculadora.div(14, 0)).to eq "Impossível dividir qualquer número por 0!"
    end
end