" Startify

" Don't show [e] and [q] options
let g:startify_enable_special = 0

" Change directory when opening file using Startify
let g:startify_change_to_dir  = 1  " This is the default value

" Add bashrc and nvim config files
let g:startify_bookmarks = [
          \ {'c': '~/.config/zsh/.zshrc'},
          \ {'a': '~/.config/zsh/.zsh_aliases'},
          \ {'n': '~/.config/nvim/init.lua'}
          \ ]

" Change list order
let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   Recent Files']            },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
