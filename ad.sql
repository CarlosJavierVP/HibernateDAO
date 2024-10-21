create database ad;
use ad;

create table games
(
    id          int auto_increment
        primary key,
    title       varchar(80) default '0' null,
    platform    varchar(80) default '0' null,
    year        int                     null,
    description text                    null,
    user_id     int                     null
);

create table User
(
    id       int auto_increment
        primary key,
    email    varchar(255) null,
    password varchar(255) null,
    is_admin tinyint(1)   null
);

INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (1, 'The Legend of Zelda: Breath of the Wild', 'Nintendo Switch', 2017, 'A revolutionary open-world game set in the kingdom of Hyrule.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (2, 'Red Dead Redemption 2', 'PlayStation 4', 2018, 'An epic tale of life in America at the dawn of the modern age.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (3, 'The Witcher 3: Wild Hunt', 'PC', 2015, 'A story-driven open world RPG set in a visually stunning fantasy universe full of meaningful choices.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (4, 'Goddess of War', 'PlayStation 4', 2018, 'The story of Kratos and his son in the realm of Norse mythology.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (5, 'Cyberpunk 2077', 'PC', 2020, 'An open-world, action-adventure RPG set in the megalopolis of Night City.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (6, 'Super Mario Odyssey', 'Nintendo Switch', 2017, 'Mario embarks on a new journey through various worlds to rescue Princess Peach.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (7, 'Minecraft', 'PC', 2011, 'A sandbox game where players can build anything they imagine.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (8, 'Grand Theft Auto V', 'PlayStation 4', 2013, 'An action-adventure game set in the open-world environment of Los Santos.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (9, 'Horizon Zero Dawn', 'PlayStation 4', 2017, 'A young hunter fights for survival in a world overrun by machines.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (11, 'Final Fantasy VII Remake', 'PlayStation 4', 2020, 'A re-imagining of the classic 1997 RPG.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (12, 'Sekiro: Shadows Die Twice', 'PC', 2019, 'A samurai action game set in Sengoku-era Japan.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (13, 'Dark Souls III', 'PlayStation 4', 2016, 'A dark fantasy action-RPG with punishing difficulty.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (14, 'The Last of Us Part II', 'PlayStation 4', 2020, 'Ellie embarks on a brutal journey of revenge.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (15, 'Fortnite', 'PC', 2017, 'A battle royale game where 100 players fight to be the last one standing.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (16, 'Among Us', 'PC', 2018, 'A multiplayer game of teamwork and betrayal set in space.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (17, 'Overwatch', 'PC', 2016, 'A team-based multiplayer first-person shooter.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (18, 'Animal Crossing: New Horizons', 'Nintendo Switch', 2020, 'A life-simulation game where players develop a deserted island.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (19, 'Resident Evil Village', 'PlayStation 5', 2021, 'A survival horror game following Ethan Winters in a mysterious village.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (20, 'Doom Eternal', 'PC', 2020, 'A fast-paced first-person shooter against hordes of demons.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (21, 'Bloodborne', 'PlayStation 4', 2015, 'A dark, gothic action RPG set in the city of Yharnam.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (22, 'Monster Hunter: World', 'PC', 2018, 'An action RPG where players hunt massive creatures in a living, breathing ecosystem.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (23, 'Celeste', 'PC', 2018, 'A platformer about climbing a mountain and battling inner demons.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (24, 'Stardew Valley', 'PC', 2016, 'A farming simulation game where players restore a rundown farm.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (25, 'Halo Infinite', 'Xbox Series X', 2021, 'The next chapter in the iconic first-person shooter series.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (26, 'Manic Miner', 'ZX Spectrum', 1983, 'Un icónico juego de plataformas con 20 niveles llenos de desafíos.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (27, 'Jet Set Willy', 'ZX Spectrum', 1984, 'La secuela de Manic Miner, con un enfoque en exploración no lineal en una gran mansión.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (28, 'Elite', 'BBC Micro', 1984, 'Uno de los primeros juegos de simulación espacial en un entorno de mundo abierto.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (29, 'Lemmings', 'Amiga', 1991, 'Un juego de puzzles donde los jugadores deben guiar a pequeños seres hacia la salida.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (30, 'The Great Giana Sisters', 'Commodore 64', 1987, 'Un juego de plataformas que fue una alternativa a Super Mario Bros. en microordenadores.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (31, 'Bubble Bobble', 'Commodore 64', 1986, 'Un juego de plataformas en el que los jugadores controlan dragones que lanzan burbujas.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (32, 'Impossible Mission', 'Commodore 64', 1984, 'Un juego de acción y plataformas donde los jugadores deben desactivar una bomba dentro de un tiempo limitado.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (33, 'Chuckie Egg', 'ZX Spectrum', 1983, 'Un juego de plataformas donde el jugador debe recoger huevos en distintos niveles.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (34, 'Saboteur', 'ZX Spectrum', 1985, 'Un juego de acción en el que el jugador es un ninja que debe infiltrarse en instalaciones enemigas.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (35, 'The Secret of Monkey Island', 'Amiga', 1990, 'Una aventura gráfica de point-and-click donde el jugador sigue las desventuras del joven pirata Guybrush Threepwood.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (36, 'Boulder Dash', 'Commodore 64', 1984, 'Un juego de puzzle y acción donde el jugador debe recolectar gemas evitando obstáculos y rocas.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (37, 'Zork', 'MS-DOS', 1980, 'Uno de los primeros juegos de aventuras de texto, donde el jugador explora un mundo subterráneo.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (38, 'R-Type', 'Amiga', 1987, 'Un shoot \'em up de desplazamiento lateral con enemigos y jefes complejos.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (39, 'Prince of Persia', 'Amiga', 1989, 'Un clásico juego de plataformas con gráficos fluidos y niveles desafiantes.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (40, 'Ghosts \'n Goblins', 'Commodore 64', 1985, 'Un juego de plataformas en el que Sir Arthur debe salvar a una princesa luchando contra hordas de monstruos.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (41, 'Commando', 'Commodore 64', 1985, 'Un juego de acción donde el jugador controla a un soldado en una misión de combate.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (42, 'Green Beret', 'Amstrad CPC', 1986, 'Un juego de acción y plataformas basado en la infiltración militar.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (43, 'Gauntlet', 'Amiga', 1985, 'Un juego de acción multijugador donde los jugadores exploran mazmorras llenas de enemigos.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (44, 'Dungeon Master', 'Atari ST', 1987, 'Un RPG de mazmorras en tiempo real con elementos de exploración y combate.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (45, 'The Sentinel', 'BBC Micro', 1986, 'Un innovador juego de estrategia y puzles en 3D donde los jugadores deben superar al centinela.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (46, 'Spy Hunter', 'Commodore 64', 1983, 'Un juego de acción de conducción con una perspectiva de arriba hacia abajo.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (47, 'Rick Dangerous', 'Amiga', 1989, 'Un juego de plataformas y acción donde el jugador explora peligrosos templos y ruinas.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (48, 'Knight Lore', 'ZX Spectrum', 1984, 'Un innovador juego de plataformas isométrico con elementos de aventura.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (49, 'Mercenary', 'Commodore 64', 1985, 'Un juego de exploración y combate en 3D donde los jugadores exploran planetas alienígenas.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (50, 'Paradroid', 'Commodore 64', 1985, 'Un innovador juego de acción donde el jugador controla robots en una nave espacial.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (51, 'Monty on the Run', 'Commodore 64', 1985, 'Un clásico juego de plataformas donde Monty debe escapar de las autoridades.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (52, 'Archon', 'Commodore 64', 1983, 'Una combinación de ajedrez y combate en tiempo real.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (53, 'Winter Games', 'Commodore 64', 1985, 'Un juego deportivo basado en las Olimpiadas de Invierno con múltiples eventos.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (54, 'The Last Ninja', 'Commodore 64', 1987, 'Un juego de acción y aventuras donde el jugador controla a un ninja en misiones peligrosas.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (55, 'Pirates!', 'Commodore 64', 1987, 'Un juego de simulación y aventuras donde los jugadores viven la vida de un pirata.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (56, 'Bomb Jack', 'ZX Spectrum', 1984, 'Un juego de plataformas donde el jugador debe recoger bombas dispersas en varios niveles.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (57, 'Paperboy', 'Commodore 64', 1985, 'Un juego de simulación donde el jugador asume el papel de un repartidor de periódicos en bicicleta.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (58, 'Cannon Fodder', 'Amiga', 1993, 'Un juego de estrategia en tiempo real donde los jugadores controlan soldados en misiones de combate.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (59, 'Wizball', 'Commodore 64', 1987, 'Un innovador juego de acción donde el jugador controla una bola mágica en un mundo en decadencia.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (60, 'Barbarian: The Ultimate Warrior', 'Amstrad CPC', 1987, 'Un juego de lucha uno contra uno donde los jugadores controlan a un bárbaro.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (61, 'Out Run', 'Amiga', 1986, 'Un juego de carreras con gráficos coloridos y música icónica.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (62, 'Xenon 2: Megablast', 'Amiga', 1989, 'Un juego de disparos de desplazamiento vertical con gráficos detallados y una banda sonora de ritmo rápido.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (63, 'Nebulus', 'Amiga', 1987, 'Un juego de plataformas en 3D donde el jugador debe escalar una torre evitando enemigos.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (64, 'Another World', 'Amiga', 1991, 'Un innovador juego de aventuras y plataformas con gráficos cinemáticos.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (66, 'Speedball 2: Brutal Deluxe', 'Amiga', 1990, 'Un futurista juego de deportes lleno de acción y brutalidad.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (67, 'Alien Breed', 'Amiga', 1991, 'Un juego de disparos de arriba hacia abajo con temática de ciencia ficción.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (68, 'Leisure Suit Larry in the Land of the Lounge Lizards', 'MS-DOS', 1987, 'Un juego de aventuras cómico centrado en el protagonista Larry Laffer.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (69, 'Cuthbert Goes Walkabout', 'Dragon 32', 1983, 'Un juego de acción donde el jugador debe completar laberintos desafiantes.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (70, 'Bruce Lee', 'Commodore 64', 1984, 'Un juego de plataformas y acción donde el jugador controla al famoso artista marcial.', 3);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (71, 'Turrican', 'Amiga', 1990, 'Un juego de disparos de desplazamiento lateral con gráficos avanzados y niveles masivos.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (72, 'Shadow of the Beast', 'Amiga', 1989, 'Un juego de acción y plataformas conocido por sus gráficos impresionantes y dificultad elevada.', 1);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (73, 'Head over Heels', 'Amstrad CPC', 1987, 'Un juego de plataformas isométrico con dos personajes que deben cooperar para superar los desafíos.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (74, 'Ranarama', 'ZX Spectrum', 1987, 'Un juego de acción y exploración en el que el jugador controla a un hechicero rana.', 2);
INSERT INTO ad.games (id, title, platform, year, description, user_id) VALUES (81, 'Assassin\'s Creed Valhalla', 'PlayStation 5', 2022, 'A Viking epic, telling the story of Eivor as they explore England during the Dark Ages.', 2);