create procedure Exame_Solicitados
as
begin
SELECT        dbo.medico.crm, dbo.medico.nome_medico, dbo.medico.especialidade, dbo.consulta.numero_consulta, dbo.pedido_exame.numero_pedido, dbo.pedido_exame.data_exame, dbo.exame.codigo, dbo.exame.especificacao
FROM            dbo.consulta INNER JOIN
                         dbo.medico ON dbo.consulta.fk_medico_crm = dbo.medico.crm INNER JOIN
                         dbo.pedido_exame ON dbo.consulta.numero_consulta = dbo.pedido_exame.fk_consulta_numero_consulta INNER JOIN
                         dbo.exame ON dbo.pedido_exame.fk_exame_codigo = dbo.exame.codigo
end


execute Exame_Solicitados