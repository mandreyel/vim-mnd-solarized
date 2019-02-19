" ===============================================================
" Project: Mnd Solarized
" Repository: https://github.com/mandreyel/vim-mnd_solarized
" License: MIT
" ===============================================================

" solarized colors
let s:solarized_white = ['#93a1a1', '203']

let s:dk_green = ['#002b36', '00']
let s:md_green = ['#073642', '18']
let s:grey_green = ['#586e75', '19']
let s:rotten_green = ['#859900', '21']

let s:teal = ['#2aa198', '21']
let s:blue = ['#268bd2', '21']
let s:dk_blue_green = ['#218299', '114'] " darker: 22869e, even darker: 005970
let s:dk_blue_green = ['#207f96', '114'] " slightly lighter than above
let s:blue_green = ['#2592ad', '114']
"let s:l_blue_green = ['#1c6e82', '114']

"let s:dk_orange = ['#cb4b16', '21']
let s:orange = ['#b58900', '21']

let s:purple = ['#7379d1', '21'] " slightly brighter
let s:purple = ['#6c71c4', '21']
let s:magenta = ['#c43090', '21']
let s:dk_magenta = ['#ab2a7d', '21']
let s:dk_magenta = ['#a32877', '21'] " slightly darker
let s:pink = ['#c12f6e', '21']
let s:red_pink = ['#a6285e', '21']

let s:lighter_grey_green = ['#657b83', '08']
let s:grey = ['#839496', '20']

let s:white = ['#ffffff', '15']
let s:none = ['NONE', 'NONE']

let g:airline#themes#mnd_solarized#palette = {}

let s:normal_main = [s:dk_green[0], s:solarized_white[0], s:dk_green[1], s:solarized_white[1]]
let s:normal_right = [s:dk_green[0], s:grey_green[0], s:dk_green[1], s:grey_green[1]]
let s:normal_middle = [s:solarized_white[0], s:md_green[0], s:solarized_white[1], s:md_green[1]]
let g:airline#themes#mnd_solarized#palette.normal = airline#themes#generate_color_map(s:normal_main, s:normal_right, s:normal_middle)

let s:insert_main = [s:dk_green[0], s:dk_blue_green[0], s:dk_green[1], s:dk_blue_green[1]]
let s:insert_right = [s:dk_green[0], s:grey_green[0], s:dk_green[1], s:grey_green[1]]
let s:insert_middle = [s:solarized_white[0], s:md_green[0], s:solarized_white[1], s:md_green[1]]
let g:airline#themes#mnd_solarized#palette.insert = airline#themes#generate_color_map(s:insert_main, s:insert_right, s:insert_middle)

let s:replace_main = [s:dk_green[0], s:magenta[0], s:dk_green[1], s:magenta[1]]
let s:replace_right = [s:dk_green[0], s:grey_green[0], s:dk_green[1], s:grey_green[1]]
let s:replace_middle = [s:solarized_white[0], s:md_green[0], s:solarized_white[1], s:md_green[1]]
let g:airline#themes#mnd_solarized#palette.replace = airline#themes#generate_color_map(s:replace_main, s:replace_right, s:replace_middle)

let s:visual_main = [s:dk_green[0], s:purple[0], s:dk_green[1], s:purple[1]]
let s:visual_right = [s:dk_green[0], s:grey_green[0], s:dk_green[1], s:grey_green[1]]
let s:visual_middle = [s:solarized_white[0], s:md_green[0], s:solarized_white[1], s:md_green[1]]
let g:airline#themes#mnd_solarized#palette.visual = airline#themes#generate_color_map(s:visual_main, s:visual_right, s:visual_middle)

let s:inactive_main = [s:grey_green[0], s:md_green[0], s:grey_green[1], s:md_green[1]]
let s:inactive_right = [s:grey_green[0], s:md_green[0], s:grey_green[1], s:md_green[1]]
let s:inactive_middle = [s:grey_green[0], s:md_green[0], s:grey_green[1], s:md_green[1]]
let g:airline#themes#mnd_solarized#palette.inactive = airline#themes#generate_color_map(s:inactive_main, s:inactive_right, s:inactive_middle)

call airline#parts#define_accent('file', 'bold')
