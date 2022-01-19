infile = FLUX_DIR + "animals_complex.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "index.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;
