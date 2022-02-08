FLUX_DIR + "wildcard_test.xml"
|open-file
|decode-xml
|handle-generic-xml
|fix( FLUX_DIR + "wildcard.fix" )
|encode-json(prettyPrinting="true")
| write(FLUX_DIR + "wildcard_result.json")
;
