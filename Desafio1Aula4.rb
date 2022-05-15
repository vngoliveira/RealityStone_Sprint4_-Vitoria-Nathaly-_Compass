puts "Exercício collection tipo Array potência:"
puts ""
potencia = []
puts "Digite três valores:"
puts ""
3.times do
    potencia.push(gets.chomp.to_i)
end
puts "#{potencia}"

potencia2 = potencia.map do |n|
    n**2
end
puts ""
puts "Resultado das potências:"
puts "#{potencia2}"