INSERT INTO "user" (username, password, email, photo_url, created_at, updated_at)
    VALUES ('gbahamondez', '', 'gonzalo@becual.com', 'https://avatars1.githubusercontent.com/u/22915623?v=3&u=90fac9caad3e9f1133fdc7594f993e2aa356f2dd&s=400', current_timestamp, current_timestamp);

INSERT INTO "user" (username, password, email, photo_url, created_at, updated_at)
VALUES ('smaldonado', '', 'sebastian@becual.com', 'https://avatars1.githubusercontent.com/u/22915623?v=3&u=90fac9caad3e9f1133fdc7594f993e2aa356f2dd&s=400', current_timestamp, current_timestamp);

INSERT INTO "user" (username, password, email, photo_url, created_at, updated_at)
VALUES ('chenriquez', '', 'camilo@becual.com', 'https://avatars1.githubusercontent.com/u/22915623?v=3&u=90fac9caad3e9f1133fdc7594f993e2aa356f2dd&s=400', current_timestamp, current_timestamp);

INSERT INTO "user" (username, password, email, photo_url, created_at, updated_at)
VALUES ('dcantos', '', 'diego.cantos@becual.com', 'https://avatars1.githubusercontent.com/u/22915623?v=3&u=90fac9caad3e9f1133fdc7594f993e2aa356f2dd&s=400', current_timestamp, current_timestamp);



INSERT INTO public.category (name, created_at, updated_at) VALUES ('Historical Character', '2016-11-26 16:45:24.112313', '2016-11-26 16:45:24.112313');
INSERT INTO public.category (name, created_at, updated_at) VALUES ('Massive Event', '2016-11-26 16:45:27.011492', '2016-11-26 16:45:27.011492');
INSERT INTO public.category (name, created_at, updated_at) VALUES ('Natural Disaster', '2016-11-26 16:45:28.201555', '2016-11-26 16:45:28.201555');
INSERT INTO public.category (name, created_at, updated_at) VALUES ('Relevant', '2016-11-26 16:45:28.671275', '2016-11-26 16:45:28.671275');


INSERT INTO public.media_type (name, created_at, updated_at) VALUES ('image', '2016-11-26 16:37:12.561646', '2016-11-26 16:37:12.561646');
INSERT INTO public.media_type (name, created_at, updated_at) VALUES ('video', '2016-11-26 16:37:13.021693', '2016-11-26 16:37:13.021693');
INSERT INTO public.media_type (name, created_at, updated_at) VALUES ('audio', '2016-11-26 16:37:13.441732', '2016-11-26 16:37:13.441732');


INSERT INTO public.tag (name, created_at, updated_at) VALUES ('Politics', '2016-11-26 16:42:47.994405', '2016-11-26 16:42:47.994405');
INSERT INTO public.tag (name, created_at, updated_at) VALUES ('Social', '2016-11-26 16:42:48.463862', '2016-11-26 16:42:48.463862');
INSERT INTO public.tag (name, created_at, updated_at) VALUES ('Event', '2016-11-26 16:42:49.253918', '2016-11-26 16:42:49.253918');


INSERT INTO public.historical_event (lat, long, name, event_date, user_id, large_description, short_description, created_at, updated_at) VALUES ('-33.4344017', '-70.6366897', 'EventLoop', '2016-11-26 17:07:28.344284', 1, 'Eventloop es una iniciativa internacional, non-profit, realizada por y para developers! Una hackatón centrada en solucionar problemas usando BigData y Data Visualization, Open Data, JS y NodeJS!
Queremos abrir espacios para la comunidad, con entorno que promuevan el desarrollo tecnológico y el crecimiento profesional, por eso hacemos un llamado abierto a todos quienes quieran sumarse a EventLoop 2016 siendo speaker en un track abierto a la comunidad.', 'Hackathon EventLoop 2016', '2016-11-26 17:07:28.344284', '2016-11-26 17:07:28.344284');

INSERT INTO public.historical_event (lat, long, name, event_date, user_id, large_description, short_description, created_at, updated_at) VALUES ('23.1135930', '-82.3665960', 'Muerte de fidel castro', '2016-11-26 17:23:06.788400', 2, 'Fidel Castro ha muerto. A los 90 años de edad, el líder histórico de la revolución cubana, ha fallecido esta noche en La Habana. Su hermano, el presidente Raúl Castro, lo ha comunicado en un mensaje de televisión. "Con profundo dolor comparezco para informarle a nuestro pueblo, a los amigos de nuestra América y del mundo que hoy, 25 de noviembre del 2016, a las 10.29 horas de la noche falleció el comandante en jefe de la revolución cubana Fidel Castro Ruz", ha dicho emocionado el mandatario.', 'Muere Fidel Castro', '2016-11-26 17:23:06.788400', '2016-11-26 17:23:06.788400');

INSERT INTO public.historical_event (lat, long, name, event_date, user_id, large_description, short_description, created_at, updated_at) VALUES ('-33.434678', '-70.635780', 'Muere perro de Lipigas', '2016-11-26 17:27:23.028429', 3, 'Conocidos por todos como el "Perro Lipigas", su verdadero nombre era Spike y este viernes 18 de marzo, la famosa mascota de la marca falleció.
"Hoy tenemos el corazón partido. Nuestro querido perrito se ha ido al cielo después de tantos años juntos. Gracias por tu cariño y alegría infinita ¡Te extrañaremos por siempre!", comentaron a través de Facebook y Twitter oficiales.', 'Muere el perro de Lipigas', '2016-11-26 17:27:23.028429', '2016-11-26 17:27:23.028429');

INSERT INTO public.historical_event (lat, long, name, event_date, user_id, large_description, short_description, created_at, updated_at) VALUES ('-33.4386090', '-70.6354410', 'Paro de funcionarios publicos', '2016-11-26 17:33:35.508100', 4, 'La Mesa del Sector Público (MSP) anunció una paralización de 48 horas de sus actividades, esto luego de no llegar a un acuerdo con el Gobierno por el reajuste salarial para 2017.
La movilización durará este jueves y viernes, según lo informado por la presidenta de la CUT, Bárbara Figueroa, una de las integrantes de la mesa que negocia con los ministros de Hacienda, Rodrigo Valdés, y del Trabajo, Ximena Rincón.', 'Paro de funcionarios publicos', '2016-11-26 17:33:35.508100', '2016-11-26 17:33:35.508100');

INSERT INTO public.historical_event (lat, long, name, event_date, user_id, large_description, short_description, created_at, updated_at) VALUES ('40.815042', '-74.073630', 'Chile campeon de america', '2016-11-26 17:35:39.953306', 1, '
Al igual que el año 2015, la "Roja" alcanzó el título de Copa América por definición a penales frente a Argentina. En 2015 Alexis Sánchez fue el encargado de patear el penal definitivo y esta vez la responsabilidad recayó en el "Gato" Silva.', 'Chile gana copa america', '2016-11-26 17:35:39.953306', '2016-11-26 17:35:39.953306');




INSERT INTO point_of_view (historical_event_id, user_id, content, title, lat, long, created_at, updated_at)
  VALUES (1, 1, 'Un evento espectacular digno de unos paraguasos', 'Muy buen evento', '-33.444737', '-70.640569', current_timestamp, current_timestamp);

INSERT INTO point_of_view (historical_event_id, user_id, content, title, lat, long, created_at, updated_at)
VALUES (1, 2, 'Estupendo todo pero falto el copete para el Ballmer Peak', 'Estupendo Todo!', '-33.441671', '-70.661560', current_timestamp, current_timestamp);

INSERT INTO point_of_view (historical_event_id, user_id, content, title, lat, long, created_at, updated_at)
VALUES (1, 3, 'Todo bien pero faltaron las promotoras, pero = bien los promotores', 'Todo bien pero ..!', '-33.436650', '-70.672708', current_timestamp, current_timestamp);

INSERT INTO point_of_view (historical_event_id, user_id, content, title, lat, long, created_at, updated_at)
VALUES (1, 4, 'Como todo buen evento partimos sin WIFI', 'Watio el WIFI', '-33.445190', '-70.640094', current_timestamp, current_timestamp);


