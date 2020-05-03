SELECT
  "R"."B",
  "R"."C",
  "D"
FROM "R",
  "S"
WHERE
  "R"."B" = "S"."B"
  AND "R"."C" = "S"."C";