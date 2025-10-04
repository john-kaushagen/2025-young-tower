# .latexmkrc --- make local builds behave like Overleaf

# Use pdflatex for compilation
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error %O %S';

# Use biber for bibliography
$bibtex_use = 2;
$biber = 'biber %O %S';
 
# Run biber automatically when needed
$bibtex_use_biber = 1;

# Ensure that latexmk runs enough passes
$max_repeat = 5;

# Clean up extra files on 'latexmk -c'
@default_files_to_clean = qw(
  *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.out *.run.xml *.synctex.gz
);

# Optional: open PDF automatically after successful build
$success_cmd = "open %D";
