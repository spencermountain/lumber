#graciously lifted from https://github.com/Marak/colors.js/blob/master/colors.js

if exports
  styles = {
    #styles
    'bold'    : ['\x1B[1m',  '\x1B[22m'],
    'italic'  : ['\x1B[3m',  '\x1B[23m'],
    'underline' : ['\x1B[4m',  '\x1B[24m'],
    'inverse'   : ['\x1B[7m',  '\x1B[27m'],
    'strikethrough' : ['\x1B[9m',  '\x1B[29m'],
    #text colors
    #grayscale
    'white'   : ['\x1B[37m', '\x1B[39m'],
    'grey'    : ['\x1B[90m', '\x1B[39m'],
    'black'   : ['\x1B[30m', '\x1B[39m'],
    #colors
    'blue'    : ['\x1B[34m', '\x1B[39m'],
    'cyan'    : ['\x1B[36m', '\x1B[39m'],
    'green'   : ['\x1B[32m', '\x1B[39m'],
    'magenta'   : ['\x1B[35m', '\x1B[39m'],
    'red'     : ['\x1B[31m', '\x1B[39m'],
    'yellow'  : ['\x1B[33m', '\x1B[39m'],
    #background colors
    #grayscale
    'whiteBG'   : ['\x1B[47m', '\x1B[49m'],
    'greyBG'    : ['\x1B[49;5;8m', '\x1B[49m'],
    'blackBG'   : ['\x1B[40m', '\x1B[49m'],
    #colors
    'blueBG'    : ['\x1B[44m', '\x1B[49m'],
    'cyanBG'    : ['\x1B[46m', '\x1B[49m'],
    'greenBG'   : ['\x1B[42m', '\x1B[49m'],
    'magentaBG'   : ['\x1B[45m', '\x1B[49m'],
    'redBG'     : ['\x1B[41m', '\x1B[49m'],
    'yellowBG'  : ['\x1B[43m', '\x1B[49m']
    }

else
  styles = {
    #styles
    'bold'    : ['<b>',  '</b>'],
    'italic'  : ['<i>',  '</i>'],
    'underline' : ['<u>',  '</u>'],
    'inverse'   : ['<span style="background-color:black;color:white;">',  '</span>'],
    'strikethrough' : ['<del>',  '</del>'],
    #text colors
    #grayscale
    'white'   : ['<span style="color:white;">',   '</span>'],
    'grey'    : ['<span style="color:gray;">',  '</span>'],
    'black'   : ['<span style="color:black;">',   '</span>'],
    #colors
    'blue'    : ['<span style="color:blue;">',  '</span>'],
    'cyan'    : ['<span style="color:cyan;">',  '</span>'],
    'green'   : ['<span style="color:green;">',   '</span>'],
    'magenta'   : ['<span style="color:magenta;">', '</span>'],
    'red'     : ['<span style="color:red;">',   '</span>'],
    'yellow'  : ['<span style="color:yellow;">',  '</span>'],
    #background colors
    #grayscale
    'whiteBG'   : ['<span style="background-color:white;">',   '</span>'],
    'greyBG'    : ['<span style="background-color:gray;">',  '</span>'],
    'blackBG'   : ['<span style="background-color:black;">',   '</span>'],
    #colors
    'blueBG'    : ['<span style="background-color:blue;">',  '</span>'],
    'cyanBG'    : ['<span style="background-color:cyan;">',  '</span>'],
    'greenBG'   : ['<span style="background-color:green;">',   '</span>'],
    'magentaBG'   : ['<span style="background-color:magenta;">', '</span>'],
    'redBG'     : ['<span style="background-color:red;">',   '</span>'],
    'yellowBG'  : ['<span style="background-color:yellow;">',  '</span>']
    };

module.exports= styles