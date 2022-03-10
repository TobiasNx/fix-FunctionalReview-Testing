"https://getinfo.tib.eu/oai/intern/repository/tib"
| open-oaipmh(metadataPrefix="datacite", setSpec="kmo-av", datefrom="2022-02-01")
| decode-xml
| handle-generic-xml(emitNamespace="true")
| fix(FLUX_DIR + "vacuum.fix")
| flatten
|	stream-to-triples
| count-triples(countBy="PREDICATE")
| sort-triples(By="SUBJECT")
| template("${o}\t${s}")
| write(FLUX_DIR + "tibavstructure.txt")
;
