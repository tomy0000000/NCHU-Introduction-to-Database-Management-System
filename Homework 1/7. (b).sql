SELECT
  "students"."name",
  "books"."authors"
from "students",
  "books"
WHERE
  "students"."name" = "books"."authors";