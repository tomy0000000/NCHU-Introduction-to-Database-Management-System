CREATE TABLE "books" (
  "isbn" NUMERIC(13, 0),
  "title" varchar(32) NOT NULL,
  "authors" varchar(32),
  "publisher" varchar(32),
  PRIMARY KEY ("isbn")
);
CREATE TABLE "students" (
  "stuno" varchar(8),
  "name" varchar(32) NOT NULL,
  "gender" bool,
  "age" NUMERIC(3, 0),
  PRIMARY KEY ("stuno")
);
CREATE TABLE "borrow" (
  "stuno" varchar(8),
  "isbn" NUMERIC(13, 0),
  "date" DATE,
  PRIMARY KEY ("stuno", "isbn")
);