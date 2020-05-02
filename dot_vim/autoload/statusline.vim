""" inspired by https://shapeshed.com/vim-statuslines/

function! statusline#GitBranch()
	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! statusline#StatuslineGit()
	let l:branchname = statusline#GitBranch()
	return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction
