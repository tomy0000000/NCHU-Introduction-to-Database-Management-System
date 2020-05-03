SELECT
  "students"."name"
FROM "students" NATURAL
JOIN "borrow",
  "books"
WHERE
  "students"."gender" = FALSE
  and "books"."publisher" = 'MIT'
  and EXTRACT(year
from "borrow"."date") = 2020
  and "students"."age" > 20;