FLUX_DIR + "records.json"
|open-file
| as-records
| decode-json
| fix(FLUX_DIR + "conditionalWildcard.fix")
| encode-json(prettyPrinting="True")
| write(FLUX_DIR + "result.json")
;
