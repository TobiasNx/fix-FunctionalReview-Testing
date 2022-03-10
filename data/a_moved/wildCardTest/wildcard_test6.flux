infile = FLUX_DIR + "animals_complex.json";

infile
| open-file
| as-records
| decode-json
| fix(FLUX_DIR + "appendWithAsteriksWildcardAtTheEnd.fix")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result_test6.json")
;