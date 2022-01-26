infile = FLUX_DIR + "unsorted_arrays.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "sort_field.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;
