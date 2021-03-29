function GetFirstWordOnLine()  
     let save_pos = getpos(".")
     normal ^
     let w = expand("<cword>") 
     call setpos(".", save_pos)
     return w
endfunction

function PlayJot()
    let stamp = GetFirstWordOnLine()
    let file = stamp . ".ws852.mp3"
    execute "!beep4stamp " . stamp
    " execute "!vjot-play-name " . file . " &"
    " silent execute "!vjot-play-name " . file . " &"
    " silent execute "!safe-afplay " . file . " &"
    " #silent execute "!./vjot.play " . file . " &"
endfunction

map  ,,v      :call PlayJot()<CR>:redraw!<CR>
imap ,,v <ESC>:call PlayJot()<CR>:redraw!<CR>i
