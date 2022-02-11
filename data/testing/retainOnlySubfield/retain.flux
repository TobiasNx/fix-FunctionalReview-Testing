infile = FLUX_DIR + "test.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "retain.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;
