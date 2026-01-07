CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    registration_id INT NOT NULL,
    check_in_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    status ENUM('present', 'absent') DEFAULT 'present',

    FOREIGN KEY (registration_id)
        REFERENCES registrations(registration_id)
        ON DELETE CASCADE,

    UNIQUE (registration_id)
);