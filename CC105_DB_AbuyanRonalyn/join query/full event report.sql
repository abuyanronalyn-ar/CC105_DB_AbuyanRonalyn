SELECT 
    e.event_name,
    p.full_name,
    pay.amount,
    pay.payment_status,
    a.status AS attendance_status
FROM registrations r
JOIN events e ON r.event_id = e.event_id
JOIN participants p ON r.participant_id = p.participant_id
LEFT JOIN payments pay ON r.registration_id = pay.registration_id
LEFT JOIN attendance a ON r.registration_id = a.registration_id;
