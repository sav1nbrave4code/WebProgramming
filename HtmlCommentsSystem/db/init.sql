CREATE TABLE IF NOT EXISTS users
(
    id   SERIAL PRIMARY KEY,
    name TEXT   NOT NULL
);

CREATE TABLE IF NOT EXISTS comments
(
    id      SERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    message TEXT   NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
