const { Pool } = require('pg');
//const chort_name = process.argv.slice(2)[0];


const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT teachers.name as teacher, students.name as student, assignments.name as assignment,  (completed_at-started_at) as duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;

`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
}).catch(err => console.error('query error', err.stack));


