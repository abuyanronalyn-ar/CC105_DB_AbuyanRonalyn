CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    registration_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_method ENUM('cash', 'gcash', 'paypal', 'credit_card', 'bank_transfer') NOT NULL,
    payment_status ENUM('pending', 'paid', 'failed', 'refunded') DEFAULT 'pending',
    reference_number VARCHAR(100),
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (registration_id)
        REFERENCES registrations(registration_id)
        ON DELETE CASCADE,

    UNIQUE (registration_id)
);