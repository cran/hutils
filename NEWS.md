# hutils 0.8.0

* Added a `NEWS.md` file to track changes to the package.
* New functions
    - `%ein%` `%enotin%` avoid misspellings in filters
    - `AND`, `NEITHER`, `NOR`, `OR`, `nor`, `neither` logical aliases
    - `drop_colr` drop columns matching pattern
    - `ngrep` negate regular expression
    - `select_which` similar to `dplyr::select_if` 
    - `set_colsuborder` change the order of some columns without affecting the order of others
    - `weight2rows` convert a weighted `data.table` to an unweighted one by repeating rows by the weight
    - `coalesce` and `if_else`: lightweight versions of `dplyr::` equivalents
* Bug fixes:
    - `set_cols_first|last` now respects the order of the supplied columns
* Enhancements:
    - `mutate_other` now accepts a `mass` argument as another way to generate an 'Other' column.


