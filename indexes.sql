DROP INDEX purchase_date_index on sales;
DROP INDEX cpf_index on clients;
DROP INDEX cnpj_index on clients;
DROP INDEX full_name_index on clients;


create index purchase_date_index on sales (purchase_date); 
create index cpf_index on clients(cpf);
create index cnpj_index on clients(cnpj);
create index full_name_index on clients(full_name);