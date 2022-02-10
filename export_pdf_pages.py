#!/usr/bin/env python3

from pathlib import Path

from PyPDF2 import PdfFileReader

for p in Path( '.' ).rglob( '*.pdf' ):
	with open(p, 'rb') as pdf_file:
		pdf_reader = PdfFileReader(pdf_file)
		print(str(p) + ";" + f"{pdf_reader.numPages}")
