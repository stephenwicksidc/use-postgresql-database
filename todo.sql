CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    details TEXT NULL,
    priority INTEGER NOT NULL DEFAULT '1',
    created_at TIMESTAMP NOT NULL,
    completed_at TIMESTAMP NULL
    );

INSERT INTO todos (id, title, details, priority, created_at) VALUES (1, 'Wash the car', 'Go to car wash and get it done.', 1,'6/26/17 11:15');
INSERT INTO todos (id, title, details, priority, created_at) VALUES (2, 'Do homework', 'Log onto Newline and get it done.', 1, '06/26/17 12:15');
INSERT INTO todos (id, title, details, priority, created_at) VALUES (3, 'Date Night', 'Find a restaurant to take the wife.', 1, '06/26/17 12:05');
INSERT INTO todos (id, title, details, priority, created_at) VALUES (4, 'Organize the garage', 'Start organizing the back wall.', 3, '06/26/17 10:15');
INSERT INTO todos (id, title, details, priority, created_at, completed_at) VALUES (5, 'Play with the cat', 'Play fetch for 15 minutes.', 1, '06/26/17 11:00', '06/28/2017 12:00' );

SELECT todos WHERE completed_at IS NOT NULL;

SELECT todos WHERE priority > 1;

UPDATE todos SET completed_at = 06/28/17 11:00 WHERE id = 4;

DELETE FROM todos WHERE completed_at IS NOT NULL;