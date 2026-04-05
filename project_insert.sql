use snehil_project;

insert into student values
(1, 'Rahul Sharma', 'rahul@gmail.com', '9876543210', 'BTech', 2),
(2, 'Priya Singh', 'priya@gmail.com', '8765432109', 'BBA', 1),
(3, 'Amit Kumar', 'amit@gmail.com', '7654565108', 'BTech', 3);

insert into department values
(10, 'IT Department', 'Block A'),
(20, 'Library', 'Block B'),
(30, 'Administration', 'Main Building');

insert into administrator values
(100, 'Admin One', 'admin1@gmail.com'),
(101, 'Admin Two', 'admin2@gmail.com');

insert into complaint values
(101, 'WiFi not working', '2026-04-01', 'Pending', 'Technical', null, null, 1, 10, 100),
(102, 'Books not available', '2026-04-02', 'Pending', 'Academic', null, null, 2, 20, 101),
(103, 'Fee issue', '2026-04-03', 'Pending', 'Administrative', null, null, 3, 30, 100);


insert into attachment values
(1, 'wifi_issue.jpg', 101),
(1, 'books_issue.pdf', 102),
(1, 'fee_issue.png', 103);

select * from student;
select * from complaint;