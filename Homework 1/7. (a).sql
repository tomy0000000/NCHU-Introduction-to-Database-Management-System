WITH max_borrow (value) AS (
  SELECT
    max("borrow_book")
  FROM (
      SELECT
        "stuno",
        count("isbn") AS "borrow_book"
      FROM "borrow"
      GROUP BY
        "stuno"
    ) "b"
)
SELECT
  "borrow_count"."stuno",
  "students"."name",
  max_borrow.value
FROM (
    SELECT
      "stuno",
      count("isbn")
    FROM "borrow"
    GROUP BY
      "stuno"
  ) AS borrow_count ("stuno", "borrow_book"),
  max_borrow,
  "students"
WHERE
  "students"."stuno" = "borrow_count"."stuno"
  AND "borrow_book" = "value";