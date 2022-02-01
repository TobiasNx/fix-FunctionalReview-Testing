default infile = FLUX_DIR + "alma.xml";


infile
| open-file
| decode-xml
| handle-marcxml
| fix(FLUX_DIR + "vacuum.fix")
| flatten
|	stream-to-triples
| count-triples(countBy="PREDICATE")
| sort-triples(By="SUBJECT")
| template("${o}\t${s}")
| write(FLUX_DIR + "structure.txt")
;

