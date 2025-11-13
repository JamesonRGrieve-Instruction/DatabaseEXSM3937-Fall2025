-- database: ./temp.db
CREATE TABLE IF NOT EXISTS
    user (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT);

CREATE TABLE IF NOT EXISTS
    preferred_food (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        food TEXT,
        FOREIGN KEY (user_id) REFERENCES user (id)
    );

INSERT INTO
    user (name)
VALUES
    ('Alice'),
    ('Malcolm'),
    ('Kelly');

INSERT INTO
    preferred_food (user_id, food)
VALUES
    ('1', 'Pizza'),
    ('2', 'Burger'),
    ('2', 'Steak'),
    ('2', 'Minestroni');

SELECT
    *
FROM
    user
    LEFT JOIN preferred_food ON user.id = preferred_food.user_id;
