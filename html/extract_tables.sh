#!/bin/sh
set -e
rm -f *tmp.html ro-crate-metadata.json.extra
pandoc --version > /dev/null || ( >&2 echo "Try installing pandoc 2.19.2 with citeproc" ; exit 1 )

for file in ../latex/table*tex ; do 
	table=`basename $file | sed s/.tex//`
	html=$table.tmp.html
	pandoc -M link-citations=true --columns=2000 -i $file --bibliography ../latex/bibliography.bib --citeproc -o $html
	desc="`grep '<caption>' table*.tmp.* | sed -E 's,</?[^>]*>,,g'`"
	title=`echo $table | sed "s/^table/Table /"`
	caption="$title: $desc"
	if grep -q endfirsthead $file; then 
		# Remove double caption
		sed -i '/<tbody/,/tr>/d' $html
	fi
	cat prefix $html suffix |\
		sed 's/#tbl:fair-data-maturity-model/table5.html/g' |\
		sed 's/\[tbl:fair-data-maturity-model\]/Table 5/g' |\
		sed 's/#tbl:fdo-web-middleware/table4.html/g' |\
		sed 's/\[tbl:fdo-web-middleware\]/Table 4/g' |\
		sed "s/{title}/$caption/"   > $table.html
	# Add CSS and charset
	cat prefix $html suffix | sed "s/{title}/$caption/" > $table.html
	rm $html
	echo "  {\n    \"@id\": \"$table.html\",\n    \"@type\": \"File\",\n    \"name\": \"$title\",\n    \"description\": \"$desc\",\n    \"encodingFormat\": [\n      \"text/html\",\n      { \"@id\": \"https://www.nationalarchives.gov.uk/PRONOM/fmt/471\" }\n    ]\n  }," >> ro-crate-metadata.json.extra
	echo Extracted $table.html from $file
done
