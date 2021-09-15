create table tb_book (id_product int8 generated by default as identity, author varchar(255), country varchar(255), description varchar(100000), ean int8 not null, inventory int4 not null, isbn int8 not null, language varchar(255), pages int4 not null, price float8 not null, title varchar(255), year int4 not null, id_category int8, primary key (id_product));
create table tb_category (id_category int8 generated by default as identity, classification int4 not null, format varchar(255), genre varchar(255), publisher varchar(255), primary key (id_category));
create table tb_user (id_client int8 generated by default as identity, address varchar(255), cep varchar(255), city varchar(255), complement varchar(255), cpf varchar(255), district varchar(255), email varchar(255), name varchar(255), number varchar(255), password varchar(255), phone varchar(255), state varchar(255), type_user varchar(255), primary key (id_client));
alter table if exists tb_book add constraint FKmbqo3cu37b894hxab4ue8y6k foreign key (id_category) references tb_category;
