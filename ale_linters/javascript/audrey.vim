" Author: Radi <rad.iyadurai@gmail.com>
" Description: Audrey LSP client

call ale#linter#Define('javascript', {
\   'name': 'audrey',
\   'lsp': 'socket',
\   'address': '127.0.0.1:8123',
\   'language': 'javascript',
\   'project_root': function('ale#handlers#tsserver#GetProjectRoot'),
\})
