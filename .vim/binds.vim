function! s:CustomizeYcmLocationWindow()
  " Move the window to the top of the screen.
  wincmd K
  " Set the window height to 5.
  5wincmd _
  " Switch back to working window.
  wincmd p
endfunction

" 🎯 Easy Align
      xmap     ga     <Plug>(LiveEasyAlign)
      nmap     ga     <Plug>(LiveEasyAlign)
      nmap <Leader>al gaip<Space><Cr><Space>
      nmap <Leader>ar gaip<Space><Cr><Cr><Space>
      nmap <Leader>ac gaip<Space><Cr><Cr><Cr><Space>
      nmap <Leader>aa gaip<Space><Cr><Space>gaip2<Space><Cr><Cr><Space>


" ✏️  Editing
    nnoremap    <S-Tab>    <<
     noremap <silent><c-l> :nohls<cr><c-l>
    vnoremap     <Tab>     >><Esc>gv
    vnoremap    <S-Tab>    <<<Esc>gv
    inoremap      <>       <><Left>
    inoremap      ()       ()<Left>
    inoremap      {}       {}<Left>
    inoremap      []       []<Left>
    inoremap      ""       ""<Left>
    inoremap      ''       ''<Left>
    inoremap      ``       ``<Left>
    nnoremap       Y       y$
        nmap      >>       <Nop>
        nmap      <<       <Nop>
        vmap      >>       <Nop>
        vmap      <<       <Nop>nnoremap <Tab> >>
        xmap       /       I//<Esc>
        xmap       ?       ^2x<Tab>
        nmap <leader><tab> <plug>(fzf-maps-n)
        xmap <leader><tab> <plug>(fzf-maps-x)
        omap <leader><tab> <plug>(fzf-maps-o)
         map     <C-O>     :Files<CR>
         map     <C-M>     :Tags<CR>
         map     <C-M>     :YcmCompleter GetDoc<CR>
         map    <Enter>    :YcmCompleter GoToImprecise<CR>
         map   <A-Enter>   :YcmCompleter FixIt<CR>
         map     <F6>      :YcmCompleter RefactorRename<CR>


" 🏃 Movement
      nmap   <A-h>    :bp<CR>
      nmap   <A-l>    :bn<CR>
   noremap     H      ^

" 🖥️ Compiling & Debuggig
      nmap <F10> : !make<CR>

autocmd User YcmLocationOpened call s:CustomizeYcmLocationWindow()

