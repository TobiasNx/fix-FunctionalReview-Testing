infile = FLUX_DIR + "animals_complex.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "append.fix")
| encode-json(prettyPrinting="true")
| print
;
