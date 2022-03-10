FLUX_DIR + "pipe_test.json"
|open-file
| as-records
| decode-json
|fix( FLUX_DIR + "pipe.fix" )
|encode-json(prettyPrinting="true")
| write(FLUX_DIR + "pipe_result.json")
;
