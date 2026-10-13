SELECT *, IF(TRUE, 1, 0) AS selected
--        ^ function
FROM events
FOR SYSTEM_TIME AS OF CURRENT_TIMESTAMP();
-- <- keyword
--                    ^ function

SELECT
  _PARTITIONTIME,
-- ^ variable.builtin
  _TABLE_SUFFIX,
-- ^ variable.builtin
  _pArTiTiOnTiMe,
-- ^ variable.builtin
  _TaBlE_sUfFiX
-- ^ variable.builtin
FROM events;

CREATE TABLE deliveries (cohort_date DATE NOT NULL, carrier STRING)
--                                        ^ keyword
PARTITION BY DATE_TRUNC(cohort_date, MONTH)
--           ^ function.builtin
--                                   ^ keyword
CLUSTER BY carrier
-- <- keyword
OPTIONS(require_partition_filter = TRUE);
-- <- keyword
