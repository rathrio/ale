" Author: Radi <rad.iyadurai@gmail.com>
" Description: Audrey LSP client

call ale#Set('audrey_executable', 'audrey-ls')

call ale#linter#Define('ruby', {
\   'name': 'audrey',
\   'lsp': 'stdio',
\   'language': 'ruby',
\   'executable': {b -> ale#Var(b, 'audrey_executable')},
\   'command': '%e',
\   'project_root': function('ale#ruby#FindProjectRoot'),
\   'initialization_options': {},
\})
