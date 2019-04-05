let b:ale_fixers = ['prettier', 'tslint']

" https://github.com/w0rp/ale/blob/master/doc/ale-typescript.txt
let g:ale_typescript_tslint_use_global = 1

set formatprg=prettier\ --stdin

" Binary path to your flow, defaults to your $PATH flow
let g:deoplete#sources#flow#flow_bin = 'flow'

set tabstop=2
set shiftwidth=2
