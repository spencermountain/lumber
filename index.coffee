util= require("util")
styles= require("./styles")

lumber= {}
config= {
  log:true,
  nice:true,
  debounce:true,
  h1:true,
  h2:true,
  h3:true,
  error:true,
  break:true,
  time:true,
  colours:true
  inspect:true
}

debounce = (func, threshold=400, execAsap=false) ->
  timeout = undefined
  debounced = ->
    delayed = ->
      func.apply obj, args  unless execAsap
      timeout = null
    obj = this
    args = arguments_
    if timeout
      clearTimeout timeout
    else func.apply obj, args  if execAsap
    timeout = setTimeout(delayed, threshold or 100)


lumber.config= (obj={})->
  for k,v of obj
    config[k]=v

lumber.hide= (arr)->
  arr.forEach (a)->
    config[a]=false

lumber.show= (arr)->
  for k,v of config
    config[k]=false
  arr.forEach (a)->
    config[a]=true

################

lumber.log= (msg)->
  if config.log
    console.log(msg)

lumber.indent= (msg)->
  if config.indent
    console.log("    #{msg}")

lumber.debounce= (msg="", t=400)->
  if config.debounce
    debounce( (->lumber.log(msg)), t, false)

lumber.nice= (msg)->
  if config.nice
    lumber.log(JSON.stringify(nice, null, 2))

lumber.inspect= (data=[], depth=2)->
  if config.inspect
    color= config.colours
    lumber.log ""
    lumber.log util.inspect(data, false, depth, color)
    lumber.log ""

lumber.h1= (msg)->
  if config.h1
    lumber.log " "
    lumber.green "==================="
    lumber.green "    #{msg}    "
    lumber.green "==================="
    lumber.log " "

lumber.h2= (msg)->
  if config.h2
    lumber.yellow " "
    lumber.yellow "==#{msg}==  "
    lumber.yellow " "

lumber.h3= (msg)->
  if config.h2
    lumber.yellow "--#{msg}--"

lumber.h4= (msg)->
  if config.h2
    console.log ""
    lumber.yellow "--#{msg}--"
    console.log ""

lumber.break= (msg)->
  if config.break
    lumber.log " "
    lumber.yellow " ~~~ "
    lumber.log " "

lumber.error= (msg)->
  if config.error
    lumber.red "@@@@"
    lumber.red "  #{msg}"
    lumber.red "@@@@"

lumber.red= (msg)->
  colour= styles.red
  if config.colours
    lumber.log [ colour[0], msg, colour[1] ].join("")
  else
    lumber.log msg

lumber.blue= (msg)->
  colour= styles.blue
  if config.colours
    lumber.log [ colour[0], msg, colour[1] ].join("")
  else
    lumber.log msg

lumber.green= (msg)->
  colour= styles.green
  if config.colours
    lumber.log [ colour[0], msg, colour[1] ].join("")
  else
    lumber.log msg

lumber.yellow= (msg)->
  colour= styles.yellow
  if config.colours
    lumber.log [ colour[0], msg, colour[1] ].join("")
  else
    lumber.log msg

times= {}
lumber.timer= (time=" ")->
    times[time]=new Date()

lumber.since= (time=" ")->
  if config.time
    t= 0
    if times[time]
      t= new Date() - times[time]
      lumber.log [ "    ", styles.blue[0], "#{time}: ", t, "ms", styles.blue[1] ].join("")




module.exports= lumber