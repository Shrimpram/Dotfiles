let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
	    \ { 'r': '~/.config/zsh/.zshrc/' },
	    \ { 'u': '/mnt/c/Users/Shreeram Modi/Dropbox/Personal/Latest_URL.txt' },
	    \ '~/.config/nvim/plugins.vim',
	    \ '~/.config/nvim/remaps.vim',
	    \ '~/.config/nvim/settings.vim',
            \ ]


" Config which lists show up
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Files']            },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]


let g:startify_custom_header_quotes = [
      \ ['It is hard enough to remember my opinions, without also remembering my reasons for them!', '', '- Friedrich Nietzche'],
      \ ['There is nothing either good or bad, but thinking makes it so.', '', '- William Shakespeare'],
      \ ['A concept is a brick. It can be used to build a courthouse of reason. Or it can be thrown through the window.', '', '- Gilles Deleuze'],
      \ ['A serious and good philosophical work could be written consisting entirely of jokes.', '', '- Ludwig Wittgenstein'],
      \ ['The philosophers have only interpreted the world, in various ways. The point, however, is to change it.', '', '- Karl Marx'],
      \ ['The problem for us is not are our desires satisfied or not. The problem is how do we know what we desire.', '', '- Slavoj Zizek'],
      \ ['We are not rich by what we possess but by what we can do without.', '', '- Immanuel Kant'],
      \ ['You wouldn''t abandon ship in a storm just because you couldn''t control the winds.', '', '- Thomas More'],
      \ ['One of the greatest problems of our time is that many are schooled but few are educated', '', '- Thomas More'],
      \ ['Nobody owns anything but everyone is rich - for what greater wealth can there be than cheerfulness, peace of mind, and freedom from anxiety?', '', '- Thomas More'],
      \ ['And those who were seen dancing were thought to be insane by those who could not hear the music.', '', '- Friedrich Nietzche'],
      \ ['God is dead. God remains dead. And we have killed him. How shall we comfort ourselves, the murderers of all murderers?', '', '- Friedrich Nietzche'],
      \ ['The more you struggle to live, the less you live. Give up the notion that you must be sure of what you are doing. Instead, surrender to what is real within you, for that alone is sure....you are above everything distressing.', '', '- Baruch Spinoza'],
      \ ['No matter how thin you slice it, there will always be two sides.', '', '- Baruch Spinoza'],
      \ ['No matter how thin you slice it, there will always be two sides.', '', '- Baruch Spinoza'],
      \ ['The first person who, having enclosed a plot of land, took it into his head to say, "This is mine," and found people simple enough to believe him, was the true founder of civil society.', '', '- Jean-Jacques Rousseau'],
      \ ]
