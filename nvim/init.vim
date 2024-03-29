function! SourceIFExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction
command! -nargs=1 SourceIF call SourceIFExists(<f-args>)

lua require 'plug-config.00-plugins'
SourceIF ~/.config/nvim/general/settings.vim
SourceIF ~/.config/nvim/keys/mappings.vim
lua require 'themes.envtheme'
lua require 'plug-config.n-tree'
lua require 'plug-config.bufferline'
lua require 'plug-config.lualine'
lua require 'plug-config.telescope'
lua require 'plug-config.n-notify'
lua require 'lsp-config.n-cmp'
lua require 'lsp-config.n-lsp-init'
lua require 'plug-config.n-autopairs'
lua require 'plug-config.treesitter'
lua require 'plug-config.comment'
lua require 'plug-config.n-colorizer'
lua require 'plug-config.gitsigns'
lua require 'plug-config.n-fugitive'
lua require 'plug-config.n-neogit'
lua require 'plug-config.toggleterm'

lua require 'plug-config.undotree'
lua require 'plug-config.quick-scope'
lua require 'plug-config.vim-sneak'
lua require 'plug-config.vim-math'
lua require 'plug-config.vim-markdown'
lua require 'plug-config.dragvisuals'
lua require 'plug-config.expand-region'
lua require 'plug-config.zen-mode'
lua require 'plug-config.startify'
lua require 'plug-config.vimtex'
lua require 'plug-config.which-key'

" SourceIF $HOME/.config/nvim/plug-config/firenvim.vim

lua require 'my-plugins.load-local-config'
lua require 'my-plugins.autosave-session'
" SourceIF $HOME/.config/nvim/local.vim
colorscheme maple_dark
