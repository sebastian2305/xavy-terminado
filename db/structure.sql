CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "venues" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "description" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "phone" varchar);
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE IF NOT EXISTS "active_storage_blobs" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "key" varchar NOT NULL, "filename" varchar NOT NULL, "content_type" varchar, "metadata" text, "byte_size" bigint NOT NULL, "checksum" varchar NOT NULL, "created_at" datetime NOT NULL);
CREATE UNIQUE INDEX "index_active_storage_blobs_on_key" ON "active_storage_blobs" ("key");
CREATE TABLE IF NOT EXISTS "active_storage_attachments" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar NOT NULL, "record_type" varchar NOT NULL, "record_id" integer NOT NULL, "blob_id" integer NOT NULL, "created_at" datetime NOT NULL);
CREATE INDEX "index_active_storage_attachments_on_blob_id" ON "active_storage_attachments" ("blob_id");
CREATE UNIQUE INDEX "index_active_storage_attachments_uniqueness" ON "active_storage_attachments" ("record_type", "record_id", "name", "blob_id");
CREATE TABLE IF NOT EXISTS "categories"
(
    id integer PRIMARY KEY AUTOINCREMENT,
    name varchar NOT NULL,
    description text
);
CREATE UNIQUE INDEX Category_id_uindex ON "categories" (id);
CREATE TABLE IF NOT EXISTS "activities"
(
    id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
    venue_id integer,
    name varchar,
    schedule text,
    created_at datetime NOT NULL,
    updated_at datetime NOT NULL,
    description text,
    difficulty text,
    category_id integer,
    CONSTRAINT fk_rails_9212f52d93 FOREIGN KEY (venue_id) REFERENCES venues (id),
    CONSTRAINT activities_categories_id_fk FOREIGN KEY (category_id) REFERENCES categories (id)
);
CREATE INDEX index_activities_on_venue_id ON "activities" (venue_id);
INSERT INTO "schema_migrations" (version) VALUES
('20180921165710'),
('20180921170442'),
('20180921192550'),
('20180921204239'),
('20180921211200');


