infile = FLUX_DIR + "sample.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "join_field.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;
