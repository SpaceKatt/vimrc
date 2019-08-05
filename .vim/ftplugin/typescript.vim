let b:ale_fixers = ['prettier', 'eslint']
let b:ale_linters = ['prettier', 'eslint']

" https://github.com/w0rp/ale/blob/master/doc/ale-typescript.txt
"let g:ale_typescript_tslint_use_global = 1

"set formatprg=prettier\ --stdin

" Binary path to your flow, defaults to your $PATH flow
let g:deoplete#sources#flow#flow_bin = 'flow'

set tabstop=4
set shiftwidth=4
"set tabstop=2
"set shiftwidth=2

command! TWOSTEP :set tabstop=2 | set shiftwidth=2

let g:tagbar_type_typescript = {
    \ 'ctagsbin' : 'tstags',
    \ 'ctagsargs' : '-f-',
    \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:function:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'I:import:0:1',
    \ 'i:interface:0:1',
    \ 'C:class:0:1',
    \ 'm:method:0:1',
    \ 'p:property:0:1',
    \ 'v:variable:0:1',
    \ 'c:const:0:1',
    \ ],
    \ 'sort' : 0
    \ }
