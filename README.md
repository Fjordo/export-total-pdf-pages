# export-total-pdf-pages
Simple Shell script which export a CSV containing all pdf under a folder with their page number

## prerequisites ##
uses pdfinfo cli command. Install it from poppler-utils package under Centos like OS: `yum install poppler-utils`

## usage ##

execute the script and redirect the output to a file: `sh export-total-pdf-pages.sh >> total.txt`
