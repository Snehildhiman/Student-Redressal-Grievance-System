// server.js
const express = require('express');
const mysql = require('mysql2');
const app = express();

// Middleware to read form data and JSON
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// 1. Connect to your MySQL Database
// Find this section in server.js
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root', // This is usually 'root' in Workbench
    password: 'Mokshi@2016', // <-- Type your actual password inside these quotes!
    database: 'snehil_project' 
});

db.connect((err) => {
    if (err) throw err;
    console.log('Connected to MySQL Database!');
});

// 2. Handle the Form Submission (Client-Server Model)
app.post('/submit_complaint', (req, res) => {
    // Grab data from the HTML form
    const { category, dept_id, description } = req.body;
    
    // Default values
    const status = 'Pending';
    const date = new Date().toISOString().slice(0, 10); // Today's date (YYYY-MM-DD)
    const student_id = 1; // Hardcoded for this example
    const complaint_id = Math.floor(Math.random() * 9000) + 1000; // Generate random ID

    // 3. SQL Query to insert the grievance
    const sql = `INSERT INTO complaint (complaint_id, description, date, status, category, student_id, dept_id) 
                 VALUES (?, ?, ?, ?, ?, ?, ?)`;
    
    db.query(sql, [complaint_id, description, date, status, category, student_id, dept_id], (err, result) => {
        if (err) {
            console.error(err);
            res.send("Error submitting grievance.");
        } else {
            res.send(`<h3>Grievance submitted successfully!</h3><p>Your Complaint ID is: ${complaint_id}</p>`);
        }
    });
});

// Start the server
app.listen(3000, () => {
    console.log('Server running on http://localhost:3000');
});