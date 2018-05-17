create schema api;
create role web_anon nologin;

grant web_anon to postgres;
grant usage on schema api to web_anon;

create table api.todos (
  id   serial primary key,
  done boolean not null default false,
  task text    not null,
  due  timestamptz
);
