" File Name: ledger.vim
" Maintainer: Felix Hanley
" Created: 2011-05-15
" Updated: 2011-05-15

if exists("b:did_indent")
	finish
endif
let b:did_indent = 1 

setlocal indentexpr=LedgerIndent()

if exists("*LedgerIndent")
	finish
endif

function LedgerIndent()
	if getline(v:lnum) =~ '^;'
		return 0
	endif
	let lnum = v:lnum - 1
	if getline(lnum) =~ '^\d\+' || indent(lnum) != 0
		return &sw 
	endif
	return 0
endfunction

" vim:sw=4
