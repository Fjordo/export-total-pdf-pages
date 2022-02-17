# foreach file returned by the find command prints the name and the page number
# for file in `find . -type f -iname '*.pdf'`; do echo pdfinfo "$file" | grep Pages | awk '{printf $2}'; "$file;"; done

# Make sure globstar is enabled and is ignoring case
shopt -s nocaseglob
for file in **/*.pdf; do # Whitespace-safe and recursive
	[[ ! -e $file ]] && continue
	pdfinfo "$file" | grep Pages | awk '{print $2}'
	# echo ";$file"
done

