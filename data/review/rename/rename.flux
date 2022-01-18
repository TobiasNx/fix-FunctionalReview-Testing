infile = FLUX_DIR + "animalsObjects.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "rename.fix")
| encode-json(prettyPrinting="true")
| print
;