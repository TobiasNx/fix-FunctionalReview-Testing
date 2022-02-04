FLUX_DIR + "test.json"
|open-file
| as-records
| decode-json
|fix( FLUX_DIR + "newRepeatedField.fix" )
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;