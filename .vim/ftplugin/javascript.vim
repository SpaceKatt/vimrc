let b:ale_fixers = ['prettier', 'eslint']

let g:ale_javascript_eslint_use_global = 1

set formatprg=prettier\ --stdin

" Binary path to your flow, defaults to your $PATH flow
let g:deoplete#sources#flow#flow_bin = 'flow'

set tabstop=2
set shiftwidth=2
