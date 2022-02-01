FLUX_DIR + "test.json"
|open-file
| as-records
| decode-json
| fix(FLUX_DIR + "vacuum.fix")
| encode-json(prettyPrinting="True")
| write(FLUX_DIR + "result.json")
;
