let g:startify_lists = [
         \ { 'type': 'files',     'header': ['   MRU']            },
         \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
         \ { 'type': 'sessions',  'header': ['   Sessions']       },
         \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
         \ { 'type': 'commands',  'header': ['   Commands']       },
         \ ]
let g:startify_custom_header = [
          \ ' _   _        _           _____                ',
          \ '| \ | |_    _(_)_ __ __  | ____|__ _ ___ _   _ ',
          \ '|  \| \ \  / | | ` _` _ \|  _| / _` / __| | | |',
          \ '| |\  |\ \/ /| | | | | | | |__| (_| \__ \ |_| |',
          \ '|_| \_| \__/ |_|_|_|_|_|_|_____\__,_|___/\__, |',
          \ '                                         |___/ ',
          \]
 autocmd User Startified setlocal cursorline

    let g:startify_enable_special      = 0
    let g:startify_files_number        = 8
    let g:startify_relative_path       = 1
    let g:startify_change_to_dir       = 1
    let g:startify_update_oldfiles     = 1
    let g:startify_session_autoload    = 1
    let g:startify_session_persistence = 1

    let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ 'bundle/.*/doc',
            \ '/data/repo/neovim/runtime/doc',
            \ '/Users/mhi/local/vim/share/vim/vim74/doc',
            \ ]

    let g:startify_bookmarks = [
            \ { 'c': '~/.config/nvim/init.vim' },
            \ ]

    let g:startify_custom_footer =
           \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

    hi StartifyBracket ctermfg=240
    hi StartifyFile    ctermfg=147
    hi StartifyFooter  ctermfg=240
    hi StartifyHeader  ctermfg=114
    hi StartifyNumber  ctermfg=215
    hi StartifyPath    ctermfg=245
    hi StartifySlash   ctermfg=240
    hi StartifySpecial ctermfg=240
