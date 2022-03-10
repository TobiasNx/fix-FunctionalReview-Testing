infile = FLUX_DIR + "sample.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "filter.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;
