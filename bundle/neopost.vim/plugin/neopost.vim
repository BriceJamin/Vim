function! Extract_NVM_log_for(mxnumber)
  echom "========================="
	echom "Searching for " . a:mxnumber . "..."
  let line_found = search(a:mxnumber, "c")
                                      "c:accept match at cursor position;
  if line_found == 0
    echom "Not found. Stop."
    return 1
  else
    echom "Found."
  endif
  "?- New TCP\<CR>mb/- close socket\<CR>mc:'b,'c w! tag\<CR>"
  echom "Add marker b for current position."
  :normal! mb
  echom "Searching for beginning of log..."
  let line_found = search("^ request  :", "b") "b:backward;
  if line_found == 0
    echom "Not found. Stop."
    return 1
  else
    echom "Found."
  endif
  echom "Add marker a for current position and return to marker b."
  execute "normal! 2kma'b"
                  "2 lines up
                  "Add marker a, beginning
                  "And return to marker b, middle
  echom "Search for RESPONSE HERE"
  let line_found = search("^ RESPONSE HERE")
  if line_found == 0
    echom "Not found. Stop."
    return 1
  else
    echom "Found."
  endif
  echom "Add marker c for current position."
  execute "normal! mc"
  echom "Search for real end"
  let line_found = search("^ =")
  if line_found == 0
    echom "Not found. Stop."
    return 1
  else
    echom "Found."
  endif
  echom "Add marker d for current position."
  execute "normal! md"
	echom "Extract log from a to d and save it in new file."  
	execute "'a,'d w!" . a:mxnumber
  echom "========================="
endfunction
