set nocompatible

let configs = [
\  "general",
\  "plugins",
\  "plugin_configs",
\]

for file in configs
    let x = expand("~/.vim/vimrc/".file.".vim")
    if filereadable(x)
        execute 'source' x
    endif
endfor
