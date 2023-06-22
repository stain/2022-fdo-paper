#!/bin/sh
set -e
rm -f *tmp.html
pandoc --version > /dev/null || ( >&2 echo "Try installing pandoc 2.19.2 with citeproc" ; exit 1 )

for file in ../latex/table*tex ; do 
	table=`basename $file | sed s/.tex//`
	html=$table.tmp.html
	pandoc -M link-citations=true -M csl=https://s11.no/2021/house-rules/s11-citation-style.csl --columns=500 -i $file --bibliography ../latex/bibliography.bib --citeproc -o $html
	caption="$table: `grep '<caption>' table*.tmp.* | sed -E 's,</?[^>]*>,,g'`"
	if grep -q endfirsthead $file; then 
		# Remove double caption
		sed -i '/<tbody/,/tr>/d' $html
	fi
	cat prefix $html suffix |\
		# Add Cross-table references
		sed 's/#tbl:fair-data-maturity-model/table5.html/' |\
		sed 's/\[tbl:fair-data-maturity-model\]/Table 5/' |\
		sed 's/#tbl:fdo-web-middleware/table4.html/' |\
		sed 's/\[tbl:fdo-web-middleware\]/Table 4/' |\
		# Insert linebreak in reference
		sed 's,&lt;https://doi.org,<br />,' |\
		# Insert title
		sed "s/{title}/$caption/"   > $table.html
	# Add CSS and charset
	cat prefix $html suffix | sed "s/{title}/$caption/" > $table.html
	rm $html
	echo Extracted $table.html from $file
done
