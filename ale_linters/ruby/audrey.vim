" Author: Radi <rad.iyadurai@gmail.com>
" Description: Audrey LSP client

call ale#linter#Define('ruby', {
\   'name': 'audrey',
\   'lsp': 'socket',
\   'address': '127.0.0.1:8123',
\   'language': 'ruby',
\   'project_root': function('ale#ruby#FindProjectRoot'),
\})
