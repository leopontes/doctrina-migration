if object_id('dbo.fn_syslocaldate', 'fn') is not null
	drop function dbo.fn_syslocaldate;
go

/**
	data: 04/01/2024
	resp: leonardo lopes
	descrição: criação de function para obter data/hora atual deseconsiderando o locale do servidor
*/
 
go

create function dbo.fn_syslocaldate()
    returns datetime
    begin
        return (select sysdatetimeoffset() at time zone 'e. south america standard time' as dataatual) 
    end 
go    

grant execute on fn_syslocaldate to app_doctrina; 

go