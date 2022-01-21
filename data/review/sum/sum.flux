infile = FLUX_DIR + "unsorted_arrays.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "sum.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;
