infile = FLUX_DIR + "animals.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "appendWithBracketWildcard.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result_test5.json")
;