create procedure Resumo_Pagamentos @nome_pac varchar(40)
as
begin
SELECT        dbo.paciente.nome_paciente, dbo.paciente.cpf, dbo.pedido_exame.valor_pagar, dbo.consulta.numero_consulta, dbo.pedido_exame.fk_consulta_numero_consulta, dbo.consulta.fk_paciente_cpf
FROM            dbo.consulta INNER JOIN
                         dbo.paciente ON dbo.consulta.fk_paciente_cpf = dbo.paciente.cpf INNER JOIN
                         dbo.pedido_exame ON dbo.consulta.numero_consulta = dbo.pedido_exame.fk_consulta_numero_consulta
end

execute Resumo_Pagamentos 'Leonardo Ribeiro'