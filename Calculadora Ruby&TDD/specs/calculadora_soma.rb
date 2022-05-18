require 'rspec'
require_relative '../src/logic_calculadora'

describe('Calculadora de soma') do

    calculadora = Calculadora.new

    it('Calcular a soma de dois números inteiros') do
        expect(calculadora.soma(7, 9)).to eq 16
    end

    it('Calcular a soma de dois números decimal') do
        expect(calculadora.soma(27.1, 8.12)).to eq 35.22
    end

    it('Calcular a soma de dois números negativos') do
        expect(calculadora.soma(-73, -87)).to eq -160
    end

    it('Calcular a soma de um número negativo e outro positivo') do
        expect(calculadora.soma(-12, 24)).to eq 12
    end

    it('Calcular um número somado ao 0') do
        expect(calculadora.soma(20, 0)).to eq 20
    end
end