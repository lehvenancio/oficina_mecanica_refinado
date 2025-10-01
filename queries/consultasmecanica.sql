select * from vehicle;
select * from carpart;
select * from service;

select firstname, lasttname, clientstatus, model, vehicleyear, plate from person as pessoa
inner join vehicle as veiculo on (pessoa.idperson = veiculo.idperson)
inner join client as cliente on (pessoa.idperson = cliente.idperson)
where clientstatus = 'gold';

select serviceorder.idserviceorder, sum(serviceitens.totalservice + partitens.parttotal) as total_geral from serviceorder
inner join serviceitens on serviceorder.idserviceorder = serviceitens.idserviceorder
inner join partitens on serviceorder.idserviceorder = partitens.idserviceorder
group by serviceorder.idserviceorder;

select serviceorder.idserviceorder, SUM(serviceitens.totalservice) as total_servico from serviceorder
inner join  serviceitens on serviceorder.idserviceorder = serviceitens.idserviceorder
group by  serviceorder.idserviceorder
having sum(serviceitens.totalservice) > 200;