DELETE FROM users;
DELETE FROM properties;
DELETE FROM reservations;
DELETE FROM property_reviews;

INSERT INTO users(name, email, password) VALUES ('Denis', 'denis@mail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users(name, email, password) VALUES ('Paul', 'paul@mail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users(name, email, password) VALUES ('Sylvain', 'sylvain@mail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties(owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) VALUES (1, 'Nipa hut', 'description', 'https://miro.medium.com/max/6048/1*deabuCBGMTDJMp1IhpTeiA.jpeg', 'https://miro.medium.com/max/6048/1*deabuCBGMTDJMp1IhpTeiA.jpeg', 50, 1, 1, 1, 'Philippines', 'Middle of nowhere', 'Angat', 'Bulacan', 6006, TRUE);
INSERT INTO properties(owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) VALUES (2, 'Foyer Éclaircie', 'description', 'https://static.wixstatic.com/media/c4007e_347cdcbcf0d049828e84a223d45e4ed7~mv2_d_2793_3019_s_4_2.jpg/v1/fill/w_648,h_529,al_c,q_80,usm_0.66_1.00_0.01/eclaircie2.webp', 'https://static.wixstatic.com/media/c4007e_347cdcbcf0d049828e84a223d45e4ed7~mv2_d_2793_3019_s_4_2.jpg/v1/fill/w_648,h_529,al_c,q_80,usm_0.66_1.00_0.01/eclaircie2.webp', 100, 0, 2, 1, 'Canada', 'St-Catherine', 'Québec', 'Québec', 'G1K1M4', TRUE);
INSERT INTO properties(owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) VALUES (3, 'Foyer le Croissant', 'description', 'https://static.wixstatic.com/media/c4007e_a16e0c3269d649519102ca75ff78c04a~mv2_d_2729_3542_s_4_2.jpg/v1/fill/w_573,h_651,al_c,q_85,usm_0.66_1.00_0.01/croissant2.webp', 'https://static.wixstatic.com/media/c4007e_a16e0c3269d649519102ca75ff78c04a~mv2_d_2729_3542_s_4_2.jpg/v1/fill/w_573,h_651,al_c,q_85,usm_0.66_1.00_0.01/croissant2.webp', 100, 10, 1, 1, 'Canada', 'St-Sauveau', 'Québec', 'Québec', 'G1S4S1', TRUE);

INSERT INTO reservations(start_date, end_date, property_id, guest_id) VALUES ('2018-10-11', '2020-10-11', 1, 2);
INSERT INTO reservations(start_date, end_date, property_id, guest_id) VALUES ('2019-01-01', '2022-01-01', 2, 3);
INSERT INTO reservations(start_date, end_date, property_id, guest_id) VALUES ('2019-01-01', '2030-01-01', 3, 1);

INSERT INTO property_reviews(guest_id, property_id, reservation_id, rating, message) VALUES (2, 1, 1, 3, 'message');
INSERT INTO property_reviews(guest_id, property_id, reservation_id, rating, message) VALUES(3, 2, 2, 5, 'message');
INSERT INTO property_reviews(guest_id, property_id, reservation_id, rating, message) VALUES (1, 3, 3, 5, 'message');