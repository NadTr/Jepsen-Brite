-- Adminer 4.7.1 PostgreSQL dump


DROP TABLE IF EXISTS "events" CASCADE;
DROP SEQUENCE IF EXISTS events_id_seq;
CREATE SEQUENCE events_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."events" (
    "id" bigint DEFAULT nextval('events_id_seq') NOT NULL,
    "event_title" character varying(255) NOT NULL,
    "event_time" timestamp(0) NOT NULL,
    "event_description" text NOT NULL,
    "event_city" character varying(255) NOT NULL,
    "event_location" text NOT NULL,
    "event_image" text NOT NULL,
    "event_author" integer NOT NULL,
    "reminder" date,
    "reminder_sent" boolean,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "events_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "events_event_author_foreign" FOREIGN KEY (event_author) REFERENCES users(id) ON DELETE CASCADE NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "events" ("id", "event_title", "event_time", "event_description", "event_city", "event_location", "event_image", "event_author", "reminder", "reminder_sent", "created_at", "updated_at") VALUES
(2,	'Marathon Harry Potter',	'2019-04-27 12:30:00',	'Venez vous replonger dans l''ambiance des films, du 1 jusqu''au 8 en un week-end de folie!!!
Petit cadeau pour ceux qui viendront déguisés!
Bièreaubeurre, chocogrenouilles et dragées surprises de Bertie Crochue seront au rendez-vous!',	'Liège',	'La Sauvenière, place Xavier Neujean 14',	'https://res.cloudinary.com/jerrick/image/upload/f_auto,fl_progressive,q_auto,c_fit,w_1100/xu4g5hyyvlhzoorzjpq5',	2,	NULL,	'0',	'2019-04-10 19:38:33',	'2019-04-10 19:38:33'),
(3,	'Soirée dégustation de thé',	'2019-04-18 19:00:00',	'Vous ne savez pas la différence entre le thé noir, le thé vert et le Oolong.
Vous avez envie de passer une soirée sympa et de découvrir tout ça.
Alors venez  nous rencontrer ce jeudi soir, et repartez avec suffisamment d''informations pour épater la galerie à votre prochain dîner en famille.',	'Liège',	'Palais des thés, rue du pot d''Or',	'https://macoiffeuseafro.com/blog/wp-content/uploads/2018/06/th%C3%A9-bienfaits-1-620x420.jpg',	2,	NULL,	'0',	'2019-04-10 19:45:12',	'2019-04-10 19:45:12'),
(4,	'Soirée jeux de société coopératifs',	'2019-03-30 18:30:00',	'Marre de cette société de compétition, envie de découvrir les jeux pour passer un bon moment sans exacerber les mauvais perdant qui est en vous?
Venez nous rejoindre ce samedi soir, pour une soirée découverte.',	'Namur',	'Rue Godefroid, 53',	'https://www.terra-ludi.fr/wp-content/uploads/Andor_Materiel_FR.jpg',	2,	NULL,	'0',	'2019-04-10 19:57:11',	'2019-04-10 19:57:11'),
(5,	'Liège pour le climat',	'2019-03-31 11:00:00',	'On est plus chauds, plus chauds, plus chauds que le climat!!!
Rejoignez les liégeois ce dimanche pour la marche décentralisée.',	'Liège',	'Gare des Guillemins',	'https://scontent.fbru1-1.fna.fbcdn.net/v/t1.0-9/53110904_315580132349347_6294646482096095232_n.jpg?_nc_cat=101&_nc_ht=scontent.fbru1-1.fna&oh=2c31b8d3f8fea46a38815208eaf0dc86&oe=5D3D5D6C',	2,	NULL,	'0',	'2019-04-10 20:00:22',	'2019-04-10 20:00:22'),
(18,	'Mais où est donc passé Ornicar?',	'2020-06-28 13:54:00',	'Conférence sur notre belle langue française, et toutes ses absurdités.',	'Seraing',	'Rue de la Colline, 143',	'https://www.saint-leonard.fr/wp-content/uploads/2016/01/SCRABBLE.jpg',	2,	NULL,	'0',	'2019-04-10 21:18:52',	'2019-04-10 21:18:52'),
(7,	'Conférence sur les escargots',	'2019-05-22 20:30:00',	'Pétillez de curiosité pour nos amis gastéropodes et venez découvrir tout ce qu''il y a à savoir sur les fabuleux escargots de wallonie.',	'Mons',	'Rue de la Tannerie, 13',	'https://www.rustica.fr//images/058017a-1438867027-l750-h512.jpg',	2,	NULL,	'0',	'2019-04-10 20:23:28',	'2019-04-10 20:23:28'),
(8,	'Soirée à thème: à la recherche des trous noirs',	'2019-05-15 22:00:00',	'Bienvenue à toi, cher astronome en herbe.
Joins toi à nous le 15 mai prochain pour une soirée tout ce qu''il y a de plus particulière. Au programme: dégustation de champignons hallucinogènes et pérégrinations nocturnes au son du biniou à la recherche du trou noir révélé récemment par nos amis scientifiques.  Il ne devrait pas être trop difficile à trouver!',	'Flavigny-sur-Ozerain',	'Rue des sardines, 23, côte d''or',	'https://cdn.radiofrance.fr/s3/cruiser-production/2019/04/140b7bf2-7bb2-4a1c-8742-f1e288521f22/640_blackholeshadowm87april112017creditstheehtcollaborationokok.jpg',	1,	NULL,	'0',	'2019-04-10 20:44:47',	'2019-04-10 20:44:47'),
(9,	'Visite guidée',	'2019-06-15 13:45:00',	'Tour de la ville et visite de la citadelle, remplie d''anecdotes historiques méconnues.
Petit détour par les souterrains.',	'Namur',	'Citadelle de Namur',	'https://media-cdn.tripadvisor.com/media/photo-s/12/e4/ad/1c/la-citadelle-de-namur.jpg',	2,	NULL,	'0',	'2019-04-10 20:46:06',	'2019-04-10 20:46:06'),
(10,	'Étranges escales: Berlin',	'2019-04-27 08:00:00',	'Partons explorer les curiosités de Berlin !',	'Berlin',	'Rue du Square 21',	'https://www.berlin-welcomecard.de/sites/default/files/styles/stage_desktop_20x/public/berlin-welcomecard_hero_2880__1.jpg?itok=fgbQwjEO&timestamp=1528123533',	6,	NULL,	'0',	'2019-04-10 20:47:22',	'2019-04-10 20:47:22'),
(11,	'L''heure est grave : conférence',	'2019-04-03 14:30:00',	'Toute notre société part en cacahuète, il est temps de faire quelque chose! Venez découvrir la conférence de Magnus Smith, grand défenseur de notre planète!',	'Bruxelles',	'Rue du Centre 75',	'https://cdn.vox-cdn.com/uploads/chorus_image/image/51731623/apocalypsecover.0.jpg',	6,	NULL,	'0',	'2019-04-10 20:50:02',	'2019-04-10 20:50:02'),
(12,	'Rencontre-débat tire-bouschtroumpf ou schtroumpf-bouchon?',	'2019-04-13 21:27:00',	'/!\ Personnalités importantes présentes !',	'Bruxelles',	'Impasse de la tête de boeuf,  6',	'http://cdn-gulli.ladmedia.fr/var/jeunesse/storage/images/tiji/heros/les-schtroumpfs/images/agace/24215658-1-fre-FR/Agace.jpg',	2,	NULL,	'0',	'2019-04-10 20:53:57',	'2019-04-10 20:53:57'),
(13,	'Projection: Train to Busan',	'2019-04-26 22:30:00',	'Venez découvrir ce chef-d''oeuvre du cinéma Coréen lors d''une projection en plein air, dans une ancienne gare! Effet frisson garantit!',	'Mons',	'Rue de la Gare',	'https://www.ouest-france.fr/leditiondusoir/data/9543/NextGenData/Image-1024-1024-2149620.jpg',	6,	NULL,	'0',	'2019-04-10 20:54:32',	'2019-04-10 20:54:32'),
(14,	'Speed Run: Mario Odyssey',	'2019-04-13 10:00:00',	'En live, un joueur réputé mais dont nous tairons le nom, viendra finir Mario Odyssey en un seul essai et le plus rapidement possible. Venez découvrir cette performance de dingue et encourager ce joueur!',	'Liège',	'Pôle Image',	'https://media.giphy.com/media/l1IY5CmYbirEsXWPm/giphy.gif',	6,	NULL,	'0',	'2019-04-10 20:58:59',	'2019-04-10 20:58:59'),
(6,	'Promenade dans la réserve du Haut-Geer',	'2019-04-20 10:00:00',	'A la recherche du gorge bleue et de la marouette ponctuée. Prenez vos jumelles!',	'Hollogne-Sur-Geer',	'Rue du Centre',	'https://fr.cdn.v5.futura-sciences.com/buildsv6/images/largeoriginal/f/8/0/f80ad3469b_50035507_bluethroat-by-daniel-bastaja.jpg',	5,	NULL,	'0',	'2019-04-10 20:03:35',	'2019-04-10 20:59:31'),
(15,	'Soirée disco',	'2019-04-06 21:30:00',	'Ressortez vos plus beaux pantalons pat d''ef, et venez vous déhanchez sur le dance-floor!',	'Wavre',	'Rue du Poilu, 78',	'https://partyflock.nl/images/party2/359234_612x408_485428/Greatest-Hits-Disco-Party.jpg',	2,	NULL,	'0',	'2019-04-10 21:00:08',	'2019-04-10 21:00:08'),
(17,	'Concours du plus gros mangeur de gauffres',	'2019-04-20 11:15:00',	'Miam!
Le gagnant repart avec un t-shirt XXL!',	'Liège',	'Place Saint-Lambert',	'http://jpkrier.be/wp-content/uploads/2014/11/Gaufre_liege.jpg',	2,	NULL,	'0',	'2019-04-10 21:11:56',	'2019-04-10 21:11:56'),
(1,	'Balade en forêt',	'2019-04-14 10:30:00',	'Venez vous baladez et découvrir ce qui se cache dans nos belles forêts ardennaises. Apprenez à différencier les arbres et à trouver les traces du passage des petits animaux.',	'Vielsalm',	'forêt domaniale du « Grand Bois »',	'https://o3.llb.be/image/thumb/59958744cd70d65d256e92fb.jpg',	2,	NULL,	'0',	'2019-04-10 19:28:19',	'2019-04-10 21:22:39'),
(19,	'Il est pas frais mon poisson?',	'2019-04-01 00:00:00',	'Profitez de cette journée pour montrer à vos proches votre inventivité en termes de blagues et farces!',	'Partout',	'Le monde!!!',	'https://i.pinimg.com/originals/40/fe/bc/40febc99db82dd6c980e8248e4fae0d1.jpg',	2,	NULL,	'0',	'2019-04-10 21:38:33',	'2019-04-10 21:38:33'),
(20,	'Chasse aux oeufs',	'2019-04-19 13:30:00',	'Fouillez chaque recoins en quêtes de délicieux chocolats',	'Liège',	'Pole image, rue de Mulhouse, 36',	'https://www.geoado.com/wp-content/uploads/2014/04/oeufs-paques.jpg',	2,	NULL,	'0',	'2019-04-10 21:40:51',	'2019-04-10 21:40:51'),
(16,	'Concert événement trio de cornemuses',	'2019-04-10 20:10:00',	'Détendez vos oreilles, et profitez.

Tenue écossaise exigée (kilt obligatoire!!!)',	'Verviers',	'Spirit of 66',	'http://footage.framepool.com/shotimg/qf/311513641-highland-band-culture-ecossaise-kilt-joueur-de-cornemuse.jpg',	2,	NULL,	'0',	'2019-04-10 21:08:39',	'2019-04-11 07:18:09'),
(21,	'Soirée jeux de société',	'2019-04-12 17:15:00',	'Venez essayer plein de jeux! Et perdre dignement',	'Liège',	'Becode',	'http://loisirs.leolagrange.info/saint-max-jericho-centre-social/wp-content/uploads/sites/6/2019/01/Ca4pture-580x333.jpg',	7,	NULL,	'0',	'2019-04-11 10:20:19',	'2019-04-11 10:20:53');

DROP TABLE IF EXISTS "migrations";
DROP SEQUENCE IF EXISTS migrations_id_seq;
CREATE SEQUENCE migrations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."migrations" (
    "id" integer DEFAULT nextval('migrations_id_seq') NOT NULL,
    "migration" character varying(255) NOT NULL,
    "batch" integer NOT NULL,
    CONSTRAINT "migrations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "migrations" ("id", "migration", "batch") VALUES
(16,	'2014_10_12_000000_create_users_table',	1),
(17,	'2014_10_12_100000_create_password_resets_table',	1),
(18,	'2019_03_27_131617_create_events_table',	1),
(19,	'2019_03_27_134758_create_attendees_table',	1),
(20,	'2019_03_27_203153_add_confirmation_token_to_users',	1);

DROP TABLE IF EXISTS "password_resets";
CREATE TABLE "public"."password_resets" (
    "email" character varying(255) NOT NULL,
    "token" character varying(255) NOT NULL,
    "created_at" timestamp(0)
) WITH (oids = false);

CREATE INDEX "password_resets_email_index" ON "public"."password_resets" USING btree ("email");


DROP TABLE IF EXISTS "users" CASCADE;
DROP SEQUENCE IF EXISTS users_id_seq;
CREATE SEQUENCE users_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."users" (
    "id" bigint DEFAULT nextval('users_id_seq') NOT NULL,
    "name" character varying(255) NOT NULL,
    "email" character varying(255) NOT NULL,
    "email_verified_at" timestamp(0),
    "password" character varying(255) NOT NULL,
    "avatar" character varying(255),
    "remember_token" character varying(100),
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    "confirmation_token" character varying(255),
    CONSTRAINT "users_email_unique" UNIQUE ("email"),
    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "users" ("id", "name", "email", "email_verified_at", "password", "avatar", "remember_token", "created_at", "updated_at", "confirmation_token") VALUES
(1,	'Simon',	'simon.fraipont@gmail.com',	NULL,	'$2y$10$WQ3ES7dw6IBSJLreYevCIed5nSMbRVQJ6Ig83/HDB63AusfUfx/BW',	'https://cdn.shopify.com/s/files/1/0360/5713/products/Oddballz_-_Blobfish_1024x1024.jpg?v=1480948484',	NULL,	'2019-04-10 18:38:39',	'2019-04-10 18:38:39',	'$2y$10$.PAsGN4n7pDdBI6s4yaQNebstzTMTctxL12ahEozbbWM2rKAzbqay'),
(2,	'Nadine',	'trauflernadine@gmail.com',	NULL,	'$2y$10$JpvdNx8SRxDPF.t18sF9T.BVP3C3n3plM8iwlupC6yq1LutCx/6Gi',	'https://cfvod.kaltura.com/p/1745101/sp/174510100/thumbnail/entry_id/1_xls5s6sx/version/100011/width/600/height/400',	NULL,	'2019-04-10 19:18:57',	'2019-04-10 19:18:57',	'$2y$10$.JtgLwNXP4PTM0jJQ9E6JuEdWcxcJcy56UGIVJ67M3oGaZojKll.'),
(3,	'Sam',	'samuelfdegueldre@gmail.com',	NULL,	'$2y$10$s/6FPDhHG/4A.XBhVIWvfu754J5qv6U4Zm3lF1N/Ycs0PJ.pfBEve',	'https://contattafiles.s3.us-west-1.amazonaws.com/tnt14094/avatars/users/rY0z4Xx2luP4foq/1679960-140x140.png?v=20190215112848',	NULL,	'2019-04-10 19:48:04',	'2019-04-10 19:48:04',	'$2y$10$SpAf.sRTeAvzKnjHKK11puT1EG7eex8BuaAmCszwOJIJ3GMDm70cq'),
(5,	'Momo',	'momarnette@gmail.com',	NULL,	'$2y$10$p7sDKcQDYTKfaNB2w0OAq.438YY7/FwkM/mOTbl3bke06HFsyGw5O',	'http://www.yorkmix.com/wp-content/uploads/2014/11/drummers-animal.jpg',	NULL,	'2019-04-10 20:01:56',	'2019-04-10 20:01:56',	'$2y$10$bM6CRR4ofq80DPCEIU7ljOt2xulf0sx41VM9ER0.ngCYbQKLEr5m'),
(4,	'Brak',	'bralchristophefrancis@gmail.com',	NULL,	'$2y$10$osfgWymNDO4xxQlDnW0sz.HM6eRHomDyqDkLRPb5dD9Quw7YHao9y',	NULL,	NULL,	'2019-04-10 19:52:23',	'2019-04-10 20:07:16',	NULL),
(6,	'Jeremy',	'scalajeremy@gmail.com',	NULL,	'$2y$10$w57soLxFH1Zv94Y3SGXShuQXyVYp6.GE2Fnc.jJuLlJx7OUoNQdH2',	'https://pm1.narvii.com/5677/19cde43e0d018b911f4fe2c234615d6470367b57_hq.jpg',	NULL,	'2019-04-10 20:45:01',	'2019-04-10 20:45:01',	'$2y$10$se7JAiMCKrwn5fqEdfVaM.hIHiPThCvHEKKdhSHPrHpKfcpDmNZi'),
(7,	'nicolas',	'nicolas@becode.org',	NULL,	'$2y$10$X6GCAwCQRf3LHflI8lsUk.o1LtQ42eTlfZiOqBk.VWSE7nDy4gGYq',	'https://i.pinimg.com/originals/28/7d/47/287d476e21403c4a0459102c404cc361.jpg',	NULL,	'2019-04-11 10:16:39',	'2019-04-11 10:16:39',	'$2y$10$O62mVSIveOI9bj0NQdipHOkQQuh3m6sCQ6nGJIqduxbCJYACIA.Ym');

DROP TABLE IF EXISTS "attendees";
CREATE TABLE "public"."attendees" (
    "event_id" integer NOT NULL,
    "user_id" integer NOT NULL,
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "attendees_event_id_foreign" FOREIGN KEY (event_id) REFERENCES events(id) ON DELETE CASCADE NOT DEFERRABLE,
    CONSTRAINT "attendees_user_id_foreign" FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "attendees" ("event_id", "user_id", "created_at", "updated_at") VALUES
(1,	2,	'2019-04-10 19:28:26',	'2019-04-10 19:28:26'),
(2,	3,	'2019-04-10 19:48:20',	'2019-04-10 19:48:20'),
(1,	3,	'2019-04-10 19:49:00',	'2019-04-10 19:49:00'),
(3,	2,	'2019-04-10 19:50:04',	'2019-04-10 19:50:04'),
(2,	2,	'2019-04-10 19:50:28',	'2019-04-10 19:50:28'),
(3,	3,	'2019-04-10 19:54:18',	'2019-04-10 19:54:18'),
(4,	2,	'2019-04-10 19:57:15',	'2019-04-10 19:57:15'),
(6,	5,	'2019-04-10 20:03:48',	'2019-04-10 20:03:48'),
(1,	5,	'2019-04-10 20:04:16',	'2019-04-10 20:04:16'),
(6,	2,	'2019-04-10 20:19:23',	'2019-04-10 20:19:23'),
(7,	2,	'2019-04-10 20:23:35',	'2019-04-10 20:23:35'),
(6,	1,	'2019-04-10 20:37:12',	'2019-04-10 20:37:12'),
(7,	3,	'2019-04-10 20:44:49',	'2019-04-10 20:44:49'),
(8,	1,	'2019-04-10 20:45:03',	'2019-04-10 20:45:03'),
(6,	6,	'2019-04-10 20:45:28',	'2019-04-10 20:45:28'),
(2,	6,	'2019-04-10 20:45:31',	'2019-04-10 20:45:31'),
(8,	6,	'2019-04-10 20:45:38',	'2019-04-10 20:45:38'),
(10,	6,	'2019-04-10 20:47:28',	'2019-04-10 20:47:28'),
(4,	6,	'2019-04-10 20:47:50',	'2019-04-10 20:47:50'),
(11,	6,	'2019-04-10 20:50:07',	'2019-04-10 20:50:07'),
(10,	2,	'2019-04-10 20:54:52',	'2019-04-10 20:54:52'),
(13,	2,	'2019-04-10 20:55:03',	'2019-04-10 20:55:03'),
(12,	2,	'2019-04-10 20:55:08',	'2019-04-10 20:55:08'),
(13,	6,	'2019-04-10 20:56:12',	'2019-04-10 20:56:12'),
(15,	2,	'2019-04-10 21:00:12',	'2019-04-10 21:00:12'),
(15,	6,	'2019-04-10 21:00:57',	'2019-04-10 21:00:57'),
(14,	2,	'2019-04-10 21:13:40',	'2019-04-10 21:13:40'),
(17,	6,	'2019-04-10 21:22:19',	'2019-04-10 21:22:19'),
(12,	1,	'2019-04-10 21:27:27',	'2019-04-10 21:27:27'),
(14,	1,	'2019-04-10 21:27:37',	'2019-04-10 21:27:37'),
(19,	2,	'2019-04-10 21:38:38',	'2019-04-10 21:38:38'),
(18,	6,	'2019-04-10 21:39:03',	'2019-04-10 21:39:03'),
(13,	3,	'2019-04-11 09:02:22',	'2019-04-11 09:02:22'),
(19,	3,	'2019-04-11 09:03:22',	'2019-04-11 09:03:22'),
(14,	7,	'2019-04-11 10:18:34',	'2019-04-11 10:18:34'),
(21,	7,	'2019-04-11 10:20:28',	'2019-04-11 10:20:28'),
(21,	6,	'2019-04-11 10:26:42',	'2019-04-11 10:26:42');

-- 2019-04-11 08:42:46.978782+00
