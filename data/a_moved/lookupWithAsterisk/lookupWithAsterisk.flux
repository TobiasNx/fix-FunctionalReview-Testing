FLUX_DIR + "animals.json"
|open-file
|as-records
| decode-json
|fix( FLUX_DIR + "lookupWithAsterisk.fix" )
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;