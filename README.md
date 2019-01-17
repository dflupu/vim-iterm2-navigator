## Vim+iterm2 Seamless Navigation Plugin

Use Ctrl+j, Ctrl+k, Ctrl+l, Ctrl+h to seamlessly navigate between your split Vim panes and split iTerm2 panes while editing.
This plugin is for developers using cli-mode Vim (not MacVim) inside an iTerm2 window, dealing with lots of split panes.

Requires karabiner-elements

#### To Install:

Add this repo to your plugins.

    Plug 'dflupu/vim-iterm2-navigator'
    :PlugInstall

    cp ./binds.karabiner.json ~/.config/karabiner/assets/complex_modifications
    # enable binds in karabiner

    # bind ctrl cmd hjkl in iterm2 to select split by direction
