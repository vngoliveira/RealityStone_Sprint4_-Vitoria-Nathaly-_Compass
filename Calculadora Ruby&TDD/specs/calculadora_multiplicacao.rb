require 'rspec'
require_relative '../src/logic_calculadora'

describe('Calculadora de multiplicação') do

    calculadora = Calculadora.new

    it('Calcular a multiplicação de dois números inteiros positivos') do
        expect(calculadora.mult(3, 7)).to eq 21
    end

    it('Calcular a multiplicação de dois números decimais positivos') do
        expect(calculadora.mult(74.3, 81.23)).to eq 6035.389
    end

    it('Calcular a multiplicação de dois números inteiros negativos') do
        expect(calculadora.mult(-27, -12)).to eq 324
    end

    it('Calcular a multiplicação de um número negativo e outro positivo inteiros') do
        expect(calculadora.mult(-23, 41)).to eq -943
    end

    it('Calcular a multiplicação de um número inteiro positivo com o 0') do
        expect(calculadora.mult(12, 0)).to eq 0
    end
end