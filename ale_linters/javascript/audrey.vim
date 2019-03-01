" Author: Radi <rad.iyadurai@gmail.com>
" Description: Audrey LSP client

call ale#Set('audrey_executable', 'audrey-ls')

call ale#linter#Define('javascript', {
\   'name': 'audrey',
\   'lsp': 'stdio',
\   'language': 'javascript',
\   'executable': {b -> ale#Var(b, 'audrey_executable')},
\   'command': '%e',
\   'project_root': function('ale#handlers#tsserver#GetProjectRoot'),
\   'initialization_options': {},
\})
