(TeX-add-style-hook
 "ma261-rec-1"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt" "letterpaper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("preamble" "sans")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "preamble")
   (LaTeX-add-labels
    "sec:orgbe3074b"
    "sec:orge582558"
    "sec:org068df55"
    "sec:org97c786a"
    "sec:org52bce11"
    "sec:org8029e8d"
    "sec:org06c1682"))
 :latex)

