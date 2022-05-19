require 'rspec'
require_relative '../src/logic_calculadora'

describe('Calculadora de subtração') do

    calculadora = Calculadora.new

    it('Calcular a subtração de dois números inteiros positivos')do
        expect(calculadora.sub(12, 7)).to eq 5
    end

    it('Calcular a subtração de dois números decimais positivos') do
        expect(calculadora.sub(67.98, 12.34)).to eq 55.64
    end

    it('Calcular a subtração de dois números inteiros negativos') do
        expect(calculadora.sub(-79, -54)).to eq -25
    end

    it('Calcular a subtração de um número negativo e outro positivo inteiros') do
        expect(calculadora.sub(-36, 23)).to eq -59
    end

    it('Calcular a subtração de um número inteiro positivo somado ao 0') do
        expect(calculadora.sub(90, 0)).to eq 90
    end
end