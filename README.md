I am NOT the creator of this setup. 
I followed typecraft's youtube guide and modified some parts of it like the main menu where you can find my per rabbit :D


HERE A LIST OF PLUGINS AND COMMANDS (the most frequent that I use):
### catppuccin.lua:
neovim theme

### alpha-lua:
dashboard

### treesitter.lua:
text highlight

### lsp-config.lua:
LanguageServerProtocol <br />
**LspInfo** tells us what LSPs are connected to our current buffer <br />
**shift + K** shows info about selected function <br />
**space + CA** shows code action <br />

### telescope.lua:
find file: **cntrl + P**
live grep: **space + F + G**

### neo-tree.lua:
show tree: **cntrl + N** <br />
close tree: **cntrl + M** <br />
create file/directory: **A (if done inside the tree)**

### none-ls (you find it as null-ls in the configuration):
it formats code <br />
(you have to import the language in the setup, than install the formatter with :Mason and at the end **SPACE + G + F** to format)

### nvim-cmp:
shows the snippet & completions selection's window

### luasnip
needed for snippets


Have fun!
