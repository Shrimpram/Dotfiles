let g:quicktex_tex = {
    \' '    : "\<ESC>:call search('<+.*+>')\<CR>\"_c/+>/e\<CR>",
    \'ml'   : "$<+++>$ <++>",
    \'me'   : "\\[\<CR><+++>\<CR>\\]\<CR><++>",
    \'prf'  : "\\begin{proof}\<CR><+++>\<CR>\\end{proof}",
    \'ali'  : "\\begin{align}\<CR><+++>\<CR>\\end{align}",
    \'sec'  : "\\section{<+++>}\<CR><++>",
    \'ssec' : "\\subsection{<+++>}\<CR><++>",
    \'sssec': "\\subsubsection{<+++>}\<CR><++>",
    \'par'  : "\\paragraph{<+++>}\<CR><++>",
    \'cite' : "\\autocite[<++>]{<+++>}<++>",
    \'%%'   : "%[<<+++>>]\<CR><++>",
    \'\it'  : "\\textit{<+++>}<++>",
    \'"'    : "\\enquote{<+++>}<++>"
\}

let g:quicktex_math = {
    \' '    : "\<ESC>:call search('<+.*+>')\<CR>\"_c/+>/e\<CR>",
    \'eq'   : "= ",
    \'set'  : "\{ <+++> \} <++>",
    \'/'   : "\\frac{<+++>}{<++>} <++>",
    \'lim'  : "\\lim_{<+++>} \\to <++>",
    \'^'    : "^{<+++>}<++>",
    \'sq'   : "\\sqrt{<+++>}<++>",
    \'_'    : "_{<+++>}<++>",
    \'tn'   : "\\textnormal{<+++>}<++>",
    \'=>'   : "\\Rightarrow ",
    \'->'   : "\\rightarrow ",
    \'<='   : "\\Leftarrow ",
    \'<-'   : "\\leftarrow ",
\}
