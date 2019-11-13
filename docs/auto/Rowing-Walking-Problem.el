(TeX-add-style-hook
 "Rowing-Walking-Problem"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt" "letterpaper")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "preamble")
   (LaTeX-add-labels
    "fig:1"))
 :latex)

