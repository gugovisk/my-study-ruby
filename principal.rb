require "./classes/conta_bancaria"
require "./classes/conta_com_taxa"

conta_gusta = ContaComTaxa.new("gusta", 100)
conta_gian = ContaBancaria.new("gian", 200)

conta_gusta.transferir(conta_gian, 50)

p "Conta gusta"
p conta_gusta.saldo
p "Conta gian"
p conta_gian.saldo

# Caso de teste de conta sem saldo

begin
    conta_gusta.transferir(conta_gian, 60) #falhar
rescue StandardError => meu_erro
    p "Não foi possível transferir: #{meu_erro.message} "
end


p "Conta gusta"
p conta_gusta.saldo
p "Conta gian"
p conta_gian.saldo