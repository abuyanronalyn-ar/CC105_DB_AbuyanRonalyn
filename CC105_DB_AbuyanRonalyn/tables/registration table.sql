CREATE TABLE registrations (
    registration_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    participant_id INT NOT NULL,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (event_id) 
        REFERENCES events(event_id) 
        ON DELETE CASCADE,

    FOREIGN KEY (participant_id) 
        REFERENCES participants(participant_id) 
        ON DELETE CASCADE,

    UNIQUE (event_id, participant_id)
);