FLUX_DIR + "test.xml"
|open-file
|decode-xml
|handle-generic-xml
|fix( FLUX_DIR + "playground.fix" )
|encode-json(prettyPrinting="true")
| write(FLUX_DIR + "result.json")
;
