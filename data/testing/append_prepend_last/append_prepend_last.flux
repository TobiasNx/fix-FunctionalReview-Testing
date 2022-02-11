infile = FLUX_DIR + "test.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "append_prepend_last.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;
