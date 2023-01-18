CREATE TABLE users
(
    id            SERIAL PRIMARY KEY,
    name          VARCHAR(255) NOT NULL,
    username      VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL
);

CREATE TABLE todo_list
(
    id          SERIAL       NOT NULL PRIMARY KEY,
    title       varchar(255) NOT NULL,
    description varchar(255)
);

CREATE TABLE users_lists
(
    id      SERIAL                                          NOT NULL PRIMARY KEY unique,
    user_id int references users (id) ON DELETE CASCADE     NOT NULL,
    list_id int references todo_list (id) ON DELETE CASCADE NOT NULL
);

CREATE TABLE todo_items(
    id          SERIAL       NOT NULL PRIMARY KEY,
    title       varchar(255) NOT NULL,
    description varchar(255),
    done        boolean      NOT NULL
);


CREATE TABLE lists_items
(
    id      SERIAL                                          NOT NULL PRIMARY KEY unique ,
    user_id int references users (id) ON DELETE CASCADE     NOT NULL,
    list_id int references todo_list (id) ON DELETE CASCADE NOT NULL
);
