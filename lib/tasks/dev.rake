namespace :dev do
    desc "Configura o ambiente de desenvolvimento"
    task setup: :environment do
      puts "Resetando o banco de dados..."
  
      %x(rails db:drop db:create db:migrate)
    
  
      puts "Cadastrando Fruits..."
      100.times do |i|
        Fruit.create!(
          name: Faker::Food.fruits,
          carbohydrates: Faker::Number.number(digits: 3),
          protein: Faker::Number.number(digits: 3),
          fat: Faker::Number.decimal(l_digits: 2, r_digits: 2)
        )
      end
  
      puts "Fruits cadastrados com sucesso!"
  
    end
end