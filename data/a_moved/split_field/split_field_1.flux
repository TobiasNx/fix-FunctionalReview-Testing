infile = FLUX_DIR + "animals_complex.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "split_field_1.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result_1.json")
;
