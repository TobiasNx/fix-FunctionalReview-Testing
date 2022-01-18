infile = FLUX_DIR + "sample-repeatedFields.xml";

infile
| open-file
| decode-xml
| handle-generic-xml
| fix(FLUX_DIR + "join_field_xml.fix")
| encode-xml
| write(FLUX_DIR + "result.xml")
;
