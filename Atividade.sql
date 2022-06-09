select salario from empregado
where salario = (select min(salario) from empregado) or salario = (select max(salario) from empregado);

select avg(salario) from empregado;

select sum(salario) from empregado;
 
select count(nome) from empregado
where sexo = 'F';



