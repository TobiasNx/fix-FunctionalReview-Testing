infile = FLUX_DIR + "animals_complex.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "split_field_2.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result_2.json")
;
