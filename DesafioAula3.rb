puts "Exercício calculadora Ruby:"
puts ""
loop do 

    puts "Escolha uma das opções abaixo: \n
    1 - Multiplicar\n
    2 - Dividir\n
    3 - Somar\n
    4 - Subtrair\n
    0 - Sair\n"
    calc = gets.chomp.to_i
    puts ""

    if calc !=0

        puts "Digite um número:\n"
        n1 = gets.chomp.to_i
        puts ""
        puts "Digite outro número:\n"
        n2 = gets.chomp.to_i
        puts ""

        case calc
        when 1
            puts "Multiplicação = #{n1*n2}"
            puts ""
        when 2
            puts "Divisão = #{n1/n2}"
            puts ""
        when 3
            puts "Adição = #{n1+n2}"
            puts ""
        when 4 
            puts "Subtração = #{n1-n2}"
            puts ""
        else
            puts "Opção inválida! Tente novamente!"
            puts ""
        end
    else
        break
    end
end
