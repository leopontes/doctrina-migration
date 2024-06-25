if object_id('proc_exemplo', 'p') is not null
    drop procedure proc_exemplo
go

create procedure [dbo].[proc_exemplo] @param_1 int, @param_2 int
		as
		begin
			select'Exemplo de procedure' as msg,  @param_1 as param_1, @param_2 as param_2
		end

go

grant exec on proc_exemplo to app_doctrina;

execute proc_exemplo @param_1 = 20, @param_2 = 88