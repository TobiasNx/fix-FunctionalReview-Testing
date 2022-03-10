"https://mediathek.hhu.de/sitemap?list=videos" // FLUX_DIR + "hhu-sitemap.xml"
| oersi.SitemapReader(limit="100")
| open-http
| decode-html(attrValsAsSubfields="&p.class&a.class&div.class&span.class")
| fix(FLUX_DIR + "vacuum.fix")
| flatten
|	stream-to-triples
| count-triples(countBy="PREDICATE")
| sort-triples(By="SUBJECT")
| template("${o}\t${s}")
| write(FLUX_DIR + "hhustructure.txt")
;
