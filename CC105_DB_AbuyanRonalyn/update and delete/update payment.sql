UPDATE payments
SET payment_status = 'paid',
    reference_number = 'GCASH-UPDATED-006',
    payment_date = NOW()
WHERE registration_id = 3;
