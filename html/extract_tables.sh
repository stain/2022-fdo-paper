#!/bin/sh
set -e
rm -f *tmp.html
pandoc --version > /dev/null || ( >&2 echo "Try installing pandoc 2.19.2 with citeproc" ; exit 1 )

for file in ../latex/table*tex ; do 
	table=`basename $file | sed s/.tex//`
	html=$table.tmp.html
	pandoc -M link-citations=true --columns=600 -i $file --bibliography ../latex/bibliography.bib --citeproc -o $html
	caption="$table: `grep '<caption>' table*.tmp.* | sed -E 's,</?[^>]*>,,g'`"
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
	echo Extracted $table.html from $file
done
