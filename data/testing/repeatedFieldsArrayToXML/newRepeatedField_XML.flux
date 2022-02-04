FLUX_DIR + "test.json"
|open-file
| as-records
| decode-json
|fix( FLUX_DIR + "newRepeatedField.fix" )
| encode-xml
| write(FLUX_DIR + "result.xml")
;