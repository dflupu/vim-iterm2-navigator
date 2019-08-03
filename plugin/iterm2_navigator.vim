command! -nargs=* SwitchWindow call SwitchWindow (<f-args>)

noremap <C-s-h> <Esc>:silent SwitchWindow h<CR>
noremap <C-s-l> <Esc>:silent SwitchWindow l<CR>
noremap <C-s-j> <Esc>:silent SwitchWindow j<CR>
noremap <C-s-k> <Esc>:silent SwitchWindow k<CR>

let s:path = fnamemodify(expand('<sfile>:p'), ':h')

function! SwitchWindow(key)
  let oldwindow = winnr()

  if a:key == 'l'
    wincmd l
  elseif a:key == 'k'
    wincmd k
  elseif a:key == 'j'
    wincmd j
  elseif a:key == 'h'
    wincmd h
  endif

  if oldwindow == winnr()
      call system('osascript ' . s:path . '/../applescript/forward_to_term ' . a:key)
  endif
endfunction
