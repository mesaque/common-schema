-- 4096 rows, 1000 rows per split step
SET @s := '
  split(test_cs.test_split)
  {
    select $split_min, $split_max;
  }
  ';
call run(@s);

