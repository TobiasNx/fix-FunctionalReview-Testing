infile = FLUX_DIR + "keywords.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "flatten.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;
