infile = FLUX_DIR + "animals_records.json";

infile
| open-file
| as-lines
| decode-json
| fix(FLUX_DIR + "simpleCopyWithWildcard.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result_test2.json")
;