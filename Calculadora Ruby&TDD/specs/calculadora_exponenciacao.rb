require 'rspec'
require_relative '../src/logic_calculadora'

describe('Calculadora de exponenciação') do

    calculadora = Calculadora.new

    it('Calcular a exponenciação de um número inteiro positivo') do
        expect(calculadora.exp(8, 7)).to eq 2097152
    end

    it('Calcular a exponenciação de um número decimal positivo') do
        expect(calculadora.exp(5.4, 3).round(3)).to eq 157.464
    end

    it('Calcular a exponenciação de um número inteiro negativo') do
        expect(calculadora.exp(-4, 2)).to eq 16
    end

    it('Calcular a exponenciação de um número decimal negativo') do
        expect(calculadora.exp(-11.7, 3).round(3)).to eq -1601.613
    end

    it('Calcular a exponenciação de um número inteiro positivo com expoente decimal negativo') do
        expect(calculadora.exp(4, -3.4).round(5)).to eq 0.00897
    end
end