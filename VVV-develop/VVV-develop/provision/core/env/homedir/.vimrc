" The .vimrc file lets you customize your vim environment.  Some of the most annoying
" vim behaviors have been remedied by the included configs.  Feel free to modify on
" your own - check out brandwaffle's .vimrc file for some good ideas.
" https://github.com/brandwaffle/dotfiles/blob/master/.vimrc

" For when you forget to sudo.. Really Write the file.
    cmap w!! w !sudo tee % >/dev/null

    " Stupid shift key fixes
    if !exists('g:spf13_no_keyfixes')
        if has("user_commands")
            command! -bang -nargs=* -complete=file E e<bang> <args>
            command! -bang -nargs=* -complete=file W w<bang> <args>
            command! -bang -nargs=* -complete=file Wq wq<bang> <args>
            command! -bang -nargs=* -complete=file WQ wq<bang> <args>
            command! -bang Wa wa<bang>
            command! -bang WA wa<bang>
            command! -bang Q q<bang>
            command! -bang QA qa<bang>
            command! -bang Qa qa<bang>
        endif

        cmap Tabe tabe
    endif
