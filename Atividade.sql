select empregado.nome as 'Nome do empregado',dependente.nome as 'Nome do dependente', dependente.relacao from dependente,empregado
where empregado.codEmp = dependente.codEmp and dependente.dataNasc like '%-05-%';

select departamento.nome
from departamento
join empregado
on departamento.codDepto = empregado.codDepto
where empregado.dataNasc like "%-10-%";

select departamento.nome, empregado.nome as gerente
from departamento
join empregado
on departamento.gerente = empregado.codEmp;


select empregado.nome
from empregado
join trabalhaem
on empregado.codemp = trabalhaem.codemp
join projeto
on trabalhaem.codProj = projeto.codProj
where projeto.titulo like "Transmo%";

select nome,salario from empregado
where salario = (select min(salario) from empregado) or salario = (select max(salario) from empregado);


