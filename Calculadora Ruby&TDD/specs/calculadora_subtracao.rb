require 'rspec'
require_relative '../src/logic_calculadora'

describe('Calculadora de subtração') do

    calculadora = Calculadora.new

    it('Calcular a subtração entre dois números inteiros')do
        expect(calculadora.sub(12, 7)).to eq 5
    end
    
end