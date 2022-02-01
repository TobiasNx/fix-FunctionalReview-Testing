infile = FLUX_DIR + "animals.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "externalPutFilemap.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "test3_result.json")
;