create procedure Historico_Pagamentos
as
begin

  SELECT        dbo.paciente.cpf, dbo.paciente.nome_paciente, dbo.consulta.numero_consulta, dbo.consulta.data_consulta, dbo.pedido_exame.data_exame, dbo.pedido_exame.valor_pagar
  FROM            dbo.consulta INNER JOIN
                         dbo.paciente ON dbo.consulta.fk_paciente_cpf = dbo.paciente.cpf INNER JOIN
                         dbo.pedido_exame ON dbo.consulta.numero_consulta = dbo.pedido_exame.fk_consulta_numero_consulta
end

execute Historico_Pagamentos