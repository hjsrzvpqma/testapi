local action = function(msg, matches)
local url = HTTP.request('http://api.gpmod.ir/time/')
local jdat = json:decode(url)
local text = '🕒 ساعت '..jdat.FAtime..' \n📆 امروز '..jdat.FAdate..' میباشد.\n    —--\n🕒 '..jdat.ENtime..'\n📆 '..jdat.ENdate.. '
api.sendReply(msg,text,true)
end

local triggers = {
  "^[/!]([Tt][iI][Mm][Ee])$"
  }
return {
  action = action,
  triggers = triggers
}
