SELECT
  *
FROM "students" NATURAL
JOIN "borrow",
  "books"
WHERE
  "students"."gender" = TRUE
  and "books"."publisher" = 'MIT'
  and EXTRACT(year
from "borrow"."date") = 2020;