infile = FLUX_DIR + "animals.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "appendSingleField.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;