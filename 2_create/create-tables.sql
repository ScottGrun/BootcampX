CREATE TABLE assignment
(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  content TEXT,
  day DATE,
  CHAPTER INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submission
(
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
)