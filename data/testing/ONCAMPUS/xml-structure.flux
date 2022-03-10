"https://www.oncampus.de/sitemap.xml" // FLUX_DIR + "hhu-sitemap.xml"
| oersi.SitemapReader(limit="100")
| open-http
| decode-html(attrValsAsSubfields="&h3.class")
| fix(FLUX_DIR + "vacuum.fix")
| flatten
|	stream-to-triples
| count-triples(countBy="PREDICATE")
| sort-triples(By="SUBJECT")
| template("${o}\t${s}")
| write(FLUX_DIR + "onCampusstructure.txt")
;
