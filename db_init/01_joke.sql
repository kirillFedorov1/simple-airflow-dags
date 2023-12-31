create schema if not exists airflow_studies;

create table if not exists airflow_studies.stage_jokes (
    joke_id int unique,
    joke_type varchar(50),
    setup text,
    punchline text
);

create table if not exists airflow_studies.jokes (
    id serial primary key,
    joke_id int unique,
    joke_type varchar(50),
    setup text,
    punchline text,
    created_at timestamptz default current_timestamp
);