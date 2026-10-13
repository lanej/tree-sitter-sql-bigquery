; BigQuery keyword and partition function captures.
["NOT_NULL" "CLUSTER_BY" "MONTH"] @keyword
"DATE_TRUNC" @function.builtin

; Complete the keyword captures omitted by the upstream query.
[
  "ALL_PRIVILEGES"
  "ANY"
  "ASSERT"
  "BEGIN"
  "BREAK"
  "BY_TARGET"
  "CALL"
  "CASCADE"
  "CLONE"
  "COLLATE"
  "COLUMN"
  "CONSTRAINT"
  "CONTINUE"
  "COPY"
  "CROSS_JOIN"
  "CUBE"
  "CURRENT_ROW"
  "DAY"
  "DECLARE"
  "DEFAULT"
  "DEFAULT_COLLATE"
  "DELETE"
  "DISTINCT_FROM"
  "DO"
  "DROP_CONSTRAINT"
  "DROP_DEFAULT"
  "DROP_NOT_NULL"
  "DROP_PRIMARY_KEY"
  "ELSEIF"
  "END_FOR"
  "END_IF"
  "END_LOOP"
  "END_REPEAT"
  "END_WHILE"
  "ENFORCED"
  "EXCEPTION_WHEN_ERROR_THEN"
  "EXCEPT_DISTINCT"
  "EXCLUDE_NULLS"
  "EXECUTE_IMMEDIATE"
  "EXISTS"
  "EXPORT_DATA"
  "EXTERNAL_TABLE"
  "FILES"
  "FOREIGN_KEY"
  "FORMAT"
  "FUNCTION"
  "GRANT"
  "GROUPING_SETS"
  "HOUR"
  "IF"
  "IGNORE"
  "INCLUDE_NULLS"
  "INOUT"
  "INSERT"
  "INTERSECT_DISTINCT"
  "ITERATE"
  "JSON"
  "LANGUAGE"
  "LEAVE"
  "LOAD_DATA"
  "LOOP"
  "MATERIALIZED_VIEW"
  "MODEL"
  "NOT_ENFORCED"
  "NULLS"
  "NULLS_FIRST"
  "NULLS_LAST"
  "OFFSET"
  "OUT"
  "OVERWRITE"
  "PARTITION_COLUMNS"
  "PERCENT"
  "PIVOT"
  "PRIMARY_KEY"
  "PROCEDURE"
  "RAISE"
  "REFERENCES"
  "REMOTE_WITH_CONNECTION"
  "RENAME"
  "RENAME_TO"
  "REPEAT"
  "REPLACE"
  "REPLICA"
  "RESTRICT"
  "RETURN"
  "RETURNS"
  "REVOKE"
  "ROW"
  "SAFE_CAST"
  "SET_DATA_TYPE"
  "SET_DEFAULT"
  "SNAPSHOST_TABLE"
  "SNAPSHOT_TABLE"
  "SOME"
  "TABLESAMPLE_SYSTEM"
  "TABLE_FUNCTION"
  "TEMP"
  "TEMPORARY"
  "TRANSFORM"
  "TRUNCATE_TABLE"
  "UNBOUNDED"
  "UNBOUNDED_FOLLOWING"
  "UNBOUNDED_PRECEDING"
  "UNION_ALL"
  "UNION_DISTINCT"
  "UNPIVOT"
  "UNTIL"
  "UPDATE"
  "UPDATE_SET"
  "USING_MESSAGE"
  "VALUE"
  "VALUES"
  "WHEN_MATCHED"
  "WHEN_NOT_MATCHED"
  "WHEN_NOT_MATCHED_BY_SOURCE"
  "WHILE"
  "WITH_AGGREGATION_THRESHOLD"
  "WITH_CONNECTION"
  "WITH_DIFFERENTIAL_PRIVACY"
  "WITH_OFFSET"
  "YEAR"
  "_PARTITIONTIME"
  "_TABLE_SUFFIX"
] @keyword
(keyword_current_row) @keyword
(keyword_if_exists) @keyword
(keyword_if_not_exists) @keyword
(keyword_replace) @keyword
(keyword_temporary) @keyword
(keyword_unbounded_following) @keyword
(keyword_unbounded_preceding) @keyword
["DATETIME_TRUNC" "GENERATE_ARRAY" "MAX" "MIN" "RANGE_BUCKET" "TIMESTAMP_TRUNC"] @function.builtin


; constant
["NULL" "TRUE" "FALSE"] @constant
(string) @string
(number) @number
(comment) @comment

; types
(struct) @type.builtin
(array) @type.builtin
(interval) @type.builtin
(type_identifier) @type.builtin
(system_variable) @variable.system

(type) @type.builtin
(column_type) @type.builtin
(identifier) @variable

(option_item key: (identifier) @variable.parameter)

(as_alias alias_name: (identifier) @property)
[";" "."] @punctuation.delimiter

; functions
(function_call function: (identifier) @function)
((argument (identifier) @variable.parameter))

(call_statement routine_name: (identifier) @function)

"_PARTITIONDATE" @variable.builtin
((identifier) @variable.builtin
 (#match? @variable.builtin "^_[pP][aA][rR][tT][iI][tT][iI][oO][nN][tT][iI][mM][eE]$"))
((identifier) @variable.builtin
 (#match? @variable.builtin "^_[tT][aA][bB][lL][eE]_[sS][uU][fF][fF][iI][xX]$"))

[
  "DATE"
  "TIME"
  "DATETIME"
  "TIMESTAMP"

  "NUMERIC"
  "BIGNUMERIC"
  "DECIMAL"
  "BIGDECIMAL"

  "INTERVAL"
] @type.builtin

; operators
[
  "-"
  "*"
  "/"
  "^"
  "+"
  "<"
  "="
  "!="
  ">"
  ">>"
  "<<"
  "||"
  "~"
] @operator


; keywords
[
  "ALL"
  "AND"
  "AS"
  "ASC"
  "BETWEEN"
  "CASE"
  "CAST"
  "CREATE"
  "SCHEMA"
  "ADD"
  "DROP"
  "ALTER"
  "TABLE"
  "VIEW"
  "DESC"
  "DISTINCT"
  "ELSE"
  "END"
  "EXCEPT"
  "FALSE"
  "FOLLOWING"
  "FOR"
  "FOR_SYSTEM_TIME_AS_OF"
  "FROM"
  "FULL"
  "HAVING"
  "IF_EXISTS"
  "IF_NOT_EXISTS"
  "IN"
  "INNER"
  "INTERVAL"
  "INTO"
  "IS"
  "JOIN"
  "LEFT"
  "LIKE"
  "LIMIT"
  "MERGE"
  "NOT"
  "NULL"
  "ON"
  "OPTIONS"
  "OR"
  "OR_REPLACE"
  "OUTER"
  "OVER"
  "PARTITION_BY"
  "PRECEDING"
  "QUALIFY"
  "RANGE"
  "RIGHT"
  "ROLLUP"
  "ROWS"
  "SELECT"
  "SET"
  "TABLE"
  "THEN"
  "TO"
  "TRUE"
  "UNNEST"
  "USING"
  "WHEN"
  "WHERE"
  "GROUP_BY"
  "ORDER_BY"
  "WINDOW"
  "WITH"
] @keyword

; Relation names.
(_ table_name: (identifier) @module)
(_ source_table_name: (identifier) @module)
(_ referenced_table_name: (identifier) @module)
(_ new_table_name: (identifier) @module)
(cte alias_name: (identifier) @module)
(from_item (as_alias alias_name: (identifier) @module))


["ARRAY" "STRUCT"] @type.builtin
