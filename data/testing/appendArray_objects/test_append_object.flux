infile = FLUX_DIR + "animalsObjects.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "test_append_object.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result_object.json")
;