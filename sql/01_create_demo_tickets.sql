DROP TABLE IF EXISTS tickets;

CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    opened_at TIMESTAMP,
    closed_at TIMESTAMP,
    priority VARCHAR(10),
    category VARCHAR(50),
    subcategory VARCHAR(50),
    sla_met BOOLEAN,
    customer_id INT,
    status VARCHAR(20),
    assigned_group VARCHAR(50)
);

INSERT INTO tickets (opened_at, closed_at, priority, category, subcategory, sla_met, customer_id, status, assigned_group) VALUES
('2024-04-01 08:30', '2024-04-01 12:15', 'High', 'Hardware', 'Laptop', true, 501, 'Closed', 'Workplace Support'),
('2024-04-01 09:00', '2024-04-01 11:45', 'Medium', 'Software', 'Office Suite', true, 502, 'Closed', 'Application Support'),
('2024-04-01 10:15', NULL, 'High', 'Network', 'WiFi', false, 503, 'In Progress', 'Network Team'),
('2024-04-02 07:45', '2024-04-02 14:20', 'Low', 'Access', 'VPN', true, 504, 'Closed', 'Access Management'),
('2024-04-02 08:00', '2024-04-03 09:30', 'High', 'Hardware', 'Monitor', false, 505, 'Closed', 'Workplace Support'),
('2024-04-02 11:10', '2024-04-02 12:30', 'Medium', 'Software', 'Email', true, 506, 'Closed', 'Application Support');