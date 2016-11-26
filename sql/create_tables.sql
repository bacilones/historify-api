CREATE TABLE "user" (
  id SERIAL,
  username VARCHAR(255),
  password VARCHAR(255),
  email VARCHAR(255),
  facebook_id VARCHAR(255),
  twitter_id VARCHAR(255),
  google_id VARCHAR(255),
  photo_url VARCHAR(255),
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  CONSTRAINT "user_pk" PRIMARY KEY ("id")
);



CREATE TABLE tag (
  id SERIAL,
  name VARCHAR(255),
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  CONSTRAINT "tag_pk" PRIMARY KEY ("id")
);


CREATE TABLE category (
  id SERIAL,
  name VARCHAR(255),
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  CONSTRAINT  "category_pk" PRIMARY KEY ("id")
);



CREATE TABLE media_type (
  id SERIAL,
  name VARCHAR(255),
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  CONSTRAINT  "media_type_pk" PRIMARY KEY ("id")
);



CREATE TABLE historical_event (
  id SERIAL,
  lat VARCHAR(200),
  long VARCHAR(200),
  name VARCHAR(1000),
  event_date TIMESTAMP,
  user_id INTEGER,
  large_description TEXT,
  short_description VARCHAR(255),
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  CONSTRAINT  "historical_event_pk" PRIMARY KEY ("id"),
  CONSTRAINT "fk_historical_event_user" FOREIGN KEY (user_id)  REFERENCES "user" (id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE point_of_view (
  id SERIAL,
  historical_event_id INTEGER,
  user_id INTEGER,
  content TEXT,
  title VARCHAR(255),
  lat VARCHAR(255),
  long VARCHAR(255),
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  CONSTRAINT  "point_of_view_pk" PRIMARY KEY ("id"),
  CONSTRAINT "fk_pov_historical_event" FOREIGN KEY (historical_event_id)  REFERENCES historical_event (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT "fk_pov_user" FOREIGN KEY (user_id)  REFERENCES "user" (id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE tag_pov(
  id SERIAL,
  tag_id INTEGER,
  pov_id INTEGER,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  CONSTRAINT "tag_pov_pk" PRIMARY KEY ("id"),
  CONSTRAINT "fk_tag_tag_pov" FOREIGN KEY (tag_id)  REFERENCES tag (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT "fk_tag_pov" FOREIGN KEY (pov_id)  REFERENCES point_of_view (id) ON DELETE CASCADE ON UPDATE CASCADE
);





CREATE TABLE category_historical_event (
  id SERIAL,
  historical_event_id INTEGER,
  category_id INTEGER,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  CONSTRAINT  "category_historical_event_pk" PRIMARY KEY ("id"),
  CONSTRAINT "fk_category_historical_event_category" FOREIGN KEY (category_id)  REFERENCES category (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT "fk_category_historical_event_he" FOREIGN KEY (historical_event_id)  REFERENCES historical_event (id) ON DELETE CASCADE ON UPDATE CASCADE
);






CREATE TABLE media(
  id SERIAL,
  pov_id INTEGER,
  historical_event_id INTEGER,
  media_type_id INTEGER,
  media_url VARCHAR(1000),
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  CONSTRAINT "media_pk" PRIMARY KEY ("id"),
  CONSTRAINT "fk_media_pov" FOREIGN KEY (pov_id)  REFERENCES point_of_view (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT "fk_media_he" FOREIGN KEY (historical_event_id)  REFERENCES historical_event (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT "fk_media_media_type" FOREIGN KEY (media_type_id)  REFERENCES media_type (id) ON DELETE CASCADE ON UPDATE CASCADE
);