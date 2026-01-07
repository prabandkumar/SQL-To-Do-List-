-- Create database
CREATE DATABASE todo_list;
USE todo_list;

-- Create table
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(100) NOT NULL,
    status1 VARCHAR(20) DEFAULT 'Pending',
    created_at DATE);

-- Insert sample tasks
INSERT INTO tasks (task_name, created_at)
VALUES
('Learn SQL basics', CURDATE()),
('Practice queries', CURDATE()),
('Build To-Do List project', CURDATE());

-- View tasks
SELECT * FROM tasks;

-- Mark task as completed
UPDATE tasks SET status1 = 'Completed' WHERE id = 2;

-- Delete task
DELETE FROM tasks WHERE id = 3;
