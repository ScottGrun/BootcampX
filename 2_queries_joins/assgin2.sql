SELECT SUM(assginment_submissions.duration) as total_duration
FROM assginment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';

