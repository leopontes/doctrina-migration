if object_id('vw_exemplo', 'v') is not null
    drop view vw_exemplo
go

create view vw_exemplo as
	select 1 as id, 'Leonardo Lopes' as nome union
	select 2 as id, 'Jose das Couves' as nome union
	select 3 as id, 'Dona Florinda' as nome union
	select 4 as id, 'Sr Madruga' as nome union
	select 5 as id, 'Gabriel Barbosa' as nome union
	select 6 as id, 'Arraxca' as nome
go
grant select on vw_exemplo to app_doctrina;
