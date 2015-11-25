" Vim syntax file
" Language: Towel
" Maintainer: Marnix Massar
" Latest Revision: 14 November 2015

if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "towel"

hi def link twNumber 	Constant
hi def link twString	Constant
hi def link twComment 	Comment
hi def link twShebang	Comment
hi def link twOperator	Operator
hi def link twSpecial	Function
hi def link twBracketO	SpecialChar
hi def link twBracketC	SpecialChar

" Operators
syn match twOperator /[^a-zA-Z0-9 ]\+/

" Brackets
syn match twBracketO /\[/
syn match twBracketC /\]/

" Special commands
" (not all are implemented yet)
syn keyword twSpecial end dump import break

" Numbers and strings
syn match twNumber /[0-9]\+/
syn region twString start='"' end='"'

" Comments and shebangs
syn match twComment /\/\/.*$/
syn match twShebang /#\!.*$/

