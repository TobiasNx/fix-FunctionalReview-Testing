infile = FLUX_DIR + "animals.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "putMap.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "test2_result.json")
;