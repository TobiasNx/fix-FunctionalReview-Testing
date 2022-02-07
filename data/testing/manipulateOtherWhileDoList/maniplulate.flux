infile = FLUX_DIR + "names.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "manipulate.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;
