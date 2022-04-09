create table if not exists	Genres(
	id serial primary key,
	name varchar(20) not null
);


create table if not exists	Musicians(
	id serial primary key,
	name varchar(20) not null,
	genre_id integer references Genres (id)
);


create table if not exists	Albums(
	id serial primary key,
	name varchar(20) not null,
	year smallint not null,
	musician_id integer references Musicians (id)
);

create table if not exists	Tracks(
	id serial primary key,
	name varchar(20) not null,
	duration int not null
	check (duration > 0),
	album_id integer references Albums (id)
);

--create table if not exists	Tracks()