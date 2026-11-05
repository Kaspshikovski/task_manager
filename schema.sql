CREATE TABLE categories (
    id integer generated always as identity PRIMARY KEY,
    name text not null
);

create table priorities (
    id integer generated always as identity PRIMARY KEY,
    code text not null unique,
    name text not null
);

CREATE TABLE statuses (
    id integer generated always as identity PRIMARY KEY,
    code text not null unique,
    name text not null
);

create table tasks (
    id integer generated always as identity PRIMARY KEY,
    title text not null,
    description text,
    category_id integer not null references categories(id),
    priority_id integer not null references priorities(id),
    status_id integer not null references statuses(id)
);