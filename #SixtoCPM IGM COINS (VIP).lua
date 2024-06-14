
local expiredDate = os.time{year=2025, month=6, day=20, hour=15, min=30, sec=0}
response = gg.makeRequest("http://worldtimeapi.org/api/timezone/Etc/UTC")
if response.date == nil then
gg.alert("Not connected to the internet. Please connect or grant internet permission.","")
print("Not connected to the internet. Please connect or grant internet permission.")
os.exit()
g.g()
else
dateNow = tonumber(string.sub(response.date, tonumber("1"), tonumber("10")))
end
if expiredDate < dateNow then
print("⚠️Your script has expired.\n👤Facebook: Sixto Cpm\n👤Telegram: @junjieshx")
gg.alert("Your script has expired. Please join the Telegram channel at @junjieshx.","")
os.exit()
a.a() h.h() c.c()
return
end
local currentTime = os.time()
local countdown = os.difftime(expiredDate, dateNow)
-- Function to convert seconds to days, hours, minutes, and seconds
local function formatCountdown(seconds)
    local days = math.floor(seconds / 86400)
    seconds = seconds % 86400
    local hours = math.floor(seconds / 3600)
    seconds = seconds % 3600
    local minutes = math.floor(seconds / 60)
    seconds = seconds % 60
    return days, hours, minutes, seconds
end
-- Get the countdown in days, hours, minutes, and seconds
local days, hours, minutes, seconds = formatCountdown(countdown)
gg.alert(string.format("🌟 Welcome, VIP! 🌟\n\n👤 Facebook: Sixto Cpm\n📡 Telegram Channel: Sixto Cpm\n📺 YouTube Channel: Sixto Cpm\n\nThank you for joining us! Enjoy your exclusive access and stay tuned for exciting updates! 🎉\n\n📝Script Until: %d days, %02d hours, %02d minutes, %02d seconds", days, hours, minutes, seconds))


DATA = 0

function SixtoHiase()
menu = gg.choice({
"🪙 [ 𝙲𝙾𝙸𝙽𝚂 ]",
"💵 [ 𝙼𝙾𝙽𝙴𝚈 ]",
"🪪 [ 𝙲𝙷𝙰𝙽𝙶𝙴 𝙸𝙳 ]",
"⚙️ [𝙸𝙽𝙽𝙴𝚁 / 𝙶𝙻𝙸𝚃𝙲𝙷]",
"🔓 [ 𝚄𝙽𝙻𝙾𝙲𝙺 𝙰𝙻𝙻 ]",
"📝 [ 𝚄𝙽𝙻𝙾𝙲𝙺 𝙰𝙻𝙻 𝙸𝙽𝙵𝙾 ]",
"𝙴 𝚇𝙸 𝚃"},nil,"🪙𝙲𝚘𝚒𝚗𝚜 / 𝙼𝚘𝚗𝚎𝚢\n📝𝙶𝚊𝚖𝚎: 𝙲𝚊𝚛 𝙿𝚊𝚛𝚔𝚒𝚗𝚐 𝙼𝚞𝚕𝚝𝚒𝚙𝚕𝚊𝚢𝚎𝚛 \n👤𝙵𝚊𝚌𝚎𝚋𝚘𝚘𝚔: 𝚂𝚒𝚡𝚝𝚘 𝙲𝚙𝚖")
if menu == 1 then
coinss()
end

if menu == 2 then
moneyy()
end

if menu == 3 then
IDS()
end

if menu == 4 then
M3()
end
if menu == 5 then
unl()
end

if menu == 6 then
INF()
end

if menu == 7 then
gg.clearResults()
gg.clearList()
print ("👤Facebook: Sixto Cpm\n👥 Telegram: Sixto Cpm\n🔺Youtube: Sixto Cpm")
os.exit()
H.T.T.T()
 end
 
if menu == nil then 
gg.toast("\nScript By Sixto Cpm")end
NDD = -1
end
function INF()
gg.alert("Info Unlock:\n\n[✓] UNLOCK HOUSE 3\n[✓] UNLOCK DAMAGE ENGINE \n[✓] UNLOCK ENDLESS FUEL \n[✓] UNLOCK SMOKE \n[✓] UNLOCK ALL HORN \n[✓] UNLOCK ALL MAGS (COINS/PREM)\n[✓] UNLOCK W16\n[✓] UNLOCK ALL CAR\n[✓] UNLOCK ALL EMOTES\n[✓] 30K COINS / 50M IGM\n","")
end
function IDS()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-557874663135438880Q;-2999674699471779853Q;-3386280309969452096Q;-788429825D;-117433355D;-6267466977023602700Q::21", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("-788429825;-117433355", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-763363296;-698416192", gg.TYPE_DWORD)
gg.alert("﻿🪪𝙻𝚘𝚐 𝚘𝚞𝚝 𝚘𝚏 𝚢𝚘𝚞𝚛 𝚊𝚌𝚌𝚘𝚞𝚗𝚝 𝚊𝚗𝚍 𝚕𝚘𝚐 𝚒𝚗 𝚊𝚐𝚊𝚒𝚗.","")
end 

function sleep(toast)
  gg.setVisible(false)
  repeat
    if ltime == nil or toast and os.time() - ltime > 1 then
      gg.toast(toast)
      ltime = os.time()
    end
  until gg.isVisible()
  gg.setVisible(false)
end

function valueFromClass(class, offset, tryHard, valueType)
  local x64 = gg.getTargetInfo().x64
  local offst, tanker = tryHard and 25 or 0, x64 and -16 or -8
  local metadata = gg.getRangesList("global-metadata.dat")[1]
  local x1, x2 = {}, {}
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC)
  gg.searchNumber(":" .. class, 1, nil, gg.SIGN_EQUAL, metadata.start, metadata["end"])
  gg.searchPointer(offst)
  do
    do
      for i, i in ipairs(gg.getResults(gg.getResultsCount())) do
        table.insert(x1, {
          address = i.address + tanker,
          flags = i.flags
        })
      end
    end
  end
  gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
  gg.loadResults(x1)
  gg.searchPointer(offst)
  gg.searchPointer(offst)
  do
    do
      for i, i in pairs(gg.getResults(gg.getResultsCount())) do
        table.insert(x2, {
          address = i.value + offset,
          flags = valueType
        })
      end
    end
  end
  gg.loadResults(x2)
end

function searchMethod(Method)
  local x64 = gg.getTargetInfo().x64
  local libil2cpp, metadata = gg.getRangesList("libil2cpp.so")[x64 and 2 or 1], gg.getRangesList("global-metadata.dat")[1]
  local off1, typ = x64 and -16 or -8, x64 and 32 or 4
  local Mlist = {}
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC)
  gg.searchNumber(":" .. Method, 1, nil, gg.SIGN_EQUAL, metadata.start, metadata["end"])
  gg.searchPointer(0, typ)
  local xpoint = gg.getResults(gg.getResultsCount())
  gg.clearResults()
  do
    do
      for i, i in pairs(xpoint) do
        i.address, i.flags = i.address + off1, typ
      end
    end
  end
  do
    do
      for i, i in pairs(gg.getValues(xpoint)) do
        xadd = tonumber(x64 and i.value or "0x" .. string.sub(tostring(string.format("%X", tonumber(i.value))), -8, -1))
        if xadd > libil2cpp.start and xadd < libil2cpp["end"] then
          table.insert(Mlist, {
            address = xadd,
            flags = 4
          })
        end
      end
    end
  end
  return #Mlist > 0 and Mlist or false
end

function XInt(Xr, Value)
  local x64 = gg.getTargetInfo().x64
  local x1, x2 = "", ""
  local Check, Get, Hex, Edit = {}, {}, {}, {}
  local allocpage = gg.allocatePage(7)
  local Value, Xend = Value % 2147483647, x64 and "hC0035FD6" or "h1EFF2FE1"
  local INTX, AP = gg.getValues({{address = allocpage, flags = 4}}), gg.getValues({{address = allocpage, flags = 2},{address = allocpage + 2,flags = 2},{address = allocpage + 4,flags = 2},{address = allocpage + 6,flags = 2}})
  INTX[1].value, INTX[1].freeze = Value, true
  gg.addListItems(INTX)
  gg.removeListItems(INTX)
  Check = gg.getValues(INTX)[1].value
  Get = gg.getValues(AP)
  if Check ~= Value or tostring(Check) == "inf" or tostring(Check) == "NaN" then
  return false
  end
  if x64 then
    do
      do
        for i, i in ipairs(Get) do
          table.insert(Hex, string.format((i.value < 0 and "-" or "") .. "0x%X", i.value < 0 and i.value * -1 or i.value))
        end
      end
    end
    x1, x2 = "~A8 MOV W0, #" .. tostring(Hex[1]), "~A8 MOVK W0, #" .. tostring(Hex[2]) .. ", LSL #16"
    if tonumber(Hex[1]) == -1 then
      x1 = "~A8 MOV W0, #0xFFFF"
    end
    if tostring(Hex[1]) == "0x0" then
      x1 = "h00008052"
    end
    if tostring(Hex[2]) == "0x0" then
      x2 = "h0000A072"
    end
  else
    x1, x2 = "~A MOVW R0, #" .. Get[1].value + (Get[1].value < 0 and 65536 or 0), "~A MOVT R0, #" .. Get[2].value + (Get[2].value < 0 and 65536 or 0)
  end
  do
    do
      for i, i in pairs(Xr) do
        table.insert(Edit, {
          address = i.address,
          value = x1,
          freeze = true,
          flags = 4
        })
        table.insert(Edit, {
          address = i.address + 4,
          value = x2,
          freeze = true,
          flags = 4
        })
        table.insert(Edit, {
          address = i.address + 8,
          value = Xend,
          freeze = true,
          flags = 4
        })
      end
    end
  end
  gg.addListItems(Edit)
  gg.removeListItems(Edit)
end

function AEdit(value)
  local Xt = gg.getResults(gg.getResultsCount())
  do
    do
      for i, i in pairs(Xt) do
        i.value, i.freeze = value, true
      end
    end
  end
  gg.addListItems(Xt)
  gg.clearList()
end

function offsetResults(offset, valueType)
  valueType = valueType and valueType:find("[DFEWBQX]") and ({
    D = gg.TYPE_DWORD,
    F = gg.TYPE_FLOAT,
    E = gg.TYPE_DOUBLE,
    W = gg.TYPE_WORD,
    B = gg.TYPE_BYTE,
    Q = gg.TYPE_QWORD,
    X = gg.TYPE_XOR
  })[valueType]
  local t = gg.getResults(gg.getResultsCount())
  do
    do
      for i, i in pairs(t) do
        if offset then
          i.address = i.address + offset
        end
        if valueType then
          i.flags = valueType
        end
      end
    end
  end
  gg.loadResults(t)
end

function moneyy()
  local x64 = gg.getTargetInfo().x64
  valueFromClass("LevelDatas", x64 and 68 or 60, true, 16)
  gg.refineNumber("40~150", 16)
  AEdit(69696969)
  gg.clearResults()
  gg.alert("Proceed to Level 1. If the input is not 69696969, then proceed to Level 3 through Level 10.","")  
end

function coinss()
  gg.setVisible(true)
  repeat
    repeat
    until gg.isVisible()
    gg.setVisible(false)
    local menu = gg.prompt({
      "𝙿𝚄𝚃 𝙰𝙽𝚈 𝙲𝙾𝙸𝙽𝚂 𝚈𝙾𝚄 𝚆𝙰𝙽𝚃",
      "𝙱𝙰𝙲𝙺"
    }, last, {"Number", "checkbox"})
    if menu then
      last = {
        menu[1]
      }
      if menu[2] then
        break
      end
      if menu[1]:find("[0-9]") then
        if Old == nil then
          local x = searchMethod("GetFromPrefs")
          Old = #x > 0 and x or nil
        end
        if Old then
          XInt(Old, menu[1])
        end
        gg.toast(Old and "𝚂𝚞𝚌𝚌𝚎𝚜𝚜𝚏𝚞𝚕𝚕𝚢 𝙲𝚘𝚒𝚗𝚜 𝙸𝚗𝚓𝚎𝚌𝚝𝚎𝚍  "..menu[1] .." " or "ERROR")
        break
      end
    end
  until false
  gg.setVisible(true)
end


function unl()
local path = gg['FILES_DIR']
-- Use string.match with a pattern to extract the desired part
local extracted_string = string.match(path, "/data/user/0/([^/]+)/")

local HV = "/data/data/"..extracted_string.."/virtual/data/user/0/com.olzhas.carparking.multyplayer/shared_prefs"
gg.newFolder = function (s)
local s = s
if s:sub(#s) ~= "/" then s = s .. "/" end 
s = s .. "com.olzhas.carparking.multyplayer.v2.playerprefs.xml"
gg.saveList(s)
end
local DAYUM = gg.newFolder(HV)
io.output("/data/data/"..extracted_string.."/virtual/data/user/0/com.olzhas.carparking.multyplayer/shared_prefs/com.olzhas.carparking.multyplayer.v2.playerprefs.xml","w"):write(gg.makeRequest("https://raw.githubusercontent.com/Sixtofuken/Sixtofuken/main/xzn.xml").content)
G="SIXTOCPM"
gg.alert("Successfully Unlocked:\n\n[✓] UNLOCK HOUSE 3\n[✓] UNLOCK DAMAGE ENGINE \n[✓] UNLOCK ENDLESS FUEL \n[✓] UNLOCK SMOKE \n[✓] UNLOCK ALL HORN \n[✓] UNLOCK ALL MAGS (COINS/PREM)\n[✓] UNLOCK W16\n[✓] UNLOCK ALL CAR\n[✓] UNLOCK ALL EMOTES\n[✓] 30K COINS / 50M IGM\n","")
print ("-FB: Sixto Cpm\n-YT: Sixto Cpm")
os.exit()
end

function M3()
sxttt = gg.multiChoice({
	"𝟺𝟷𝟺 𝙸𝙽𝙽𝙴𝚁 𝙷𝙿",
	"𝟹𝟶𝟶 𝙸𝙽𝙽𝙴𝚁 𝙷𝙿",
	"𝟷𝟽𝟼𝟶 𝙸𝙽𝙽𝙴𝚁 𝙷𝙿",
"𝟿𝟿 𝙸𝙽𝙽𝙴𝚁 𝙷𝙿",
"𝟷𝟼𝟿𝟻 𝙽𝙾𝚁𝙼𝙰𝙻 𝙷𝙿",
"𝟷𝟼𝟿𝟻 𝙶𝙻𝙸𝚃𝙲𝙷",
"𝟿𝟿𝟿 𝙷𝙿 𝙶𝙻𝙸𝚃𝙲𝙷",
"𝙴𝙳𝙸𝚃 𝙼𝙰𝚂𝚂",
"𝚄𝙽𝙻𝙾𝙲𝙺 𝟷𝟼𝟿𝟻",
"𝟸𝟶𝟶𝟶 𝙷𝙿",
"𝙲𝚄𝚂𝚃𝙾𝙼𝙸𝚉𝙴 𝙷𝙿",
"𝟾𝟶𝟶 𝙸𝙽𝙽𝙴𝚁 𝙷𝙿",
"𝙱𝙰𝙲𝙺"},nil,"𝙸𝙽𝙽𝙴𝚁 / 𝙶𝙻𝙸𝚃𝙲𝙷")
	if sxttt == nil then
    start()
    else
    if sxttt[1] == true then
    C1()
    end
    if sxttt[2] == true then
    C2()
    end
    if sxttt[3] == true then
   C3()
   end
   if sxttt[4] == true then
   C4()
   end
   if sxttt[5] == true then
   C5()
   end
   if sxttt[6] == true then
   C6()
   end
   if sxttt[7] == true then
   C7()
   end
   if sxttt[8] == true then
   C8()
   end
   if sxttt[9] == true then
   C9()
   end
  if sxttt[10] == true then
  C10()
  end
  if sxttt[11] == true then
  C11()
  end
    if sxttt[12] == true then
    C12()
   end
   if sxttt[13] == true then
   start()
    end
  end 
end

function C1()
    gg.sleep(6000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("150", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("414", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("220", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("2300", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("5900", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("8000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("4100", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("7998", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.alert("𝘽𝙪𝙮 𝙀𝙣𝙜𝙞𝙣𝙚 𝙇𝟒 𝟐.𝟎 𝘼𝙣𝙙 𝙁𝙖𝙨𝙩 𝙂𝙚𝙖𝙧𝘽𝙤𝙭")
    gg.sleep(3000)
    
    gg.clearResults()
    gg.toast("Found")
  end

function C2()
 
    gg.sleep(6000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("190", gg.TYPE_FLOAT)
    gg.getResults(5)
    gg.editAll("300", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("300", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("2300", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("5900", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("8000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("4100", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("7998", gg.TYPE_FLOAT)
    gg.clearResults()
   gg.alert("𝘽𝙪𝙮 𝙀𝙣𝙜𝙞𝙣𝙚 𝙇𝟒 𝟐.𝟓 𝘼𝙣𝙙 𝙁𝙖𝙨𝙩 𝙂𝙚𝙖𝙧𝘽𝙤𝙭")
   gg.sleep(3000)
    
    gg.toast("Found")
    gg.clearResults()
  end

function C3()
 
    gg.sleep(6000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("240", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("1760", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("310", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("2299", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("6800", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("8000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("4500", gg.TYPE_FLOAT)
    gg.getResults(3)
    gg.editAll("7988", gg.TYPE_FLOAT)
    gg.clearResults()
      gg.alert("𝘽𝙪𝙮 𝙀𝙣𝙜𝙞??𝙚 𝙑𝟔 𝟑.𝟎 𝘼𝙣𝙙 𝙁𝙖𝙨𝙩 𝙂𝙚𝙖𝙧𝘽𝙤𝙭")
   gg.sleep(3000)
    
    gg.clearResults()
    gg.toast("Found")
  end
  
  function C4()
       
    gg.sleep(6000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("280", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("99", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("350", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("2300", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("6300", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("8000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("4700", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("7998", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.alert("𝘽𝙪𝙮 𝙀𝙣??𝙞𝙣𝙚 𝙑𝟔 𝟑.𝟓 𝘼𝙣𝙙 𝙁𝙖𝙨𝙩 𝙂𝙚𝙖𝙧𝘽𝙤𝙭")
   gg.sleep(3000)
    
    gg.clearResults()
    gg.toast("Found")
  end
  
  function C5()
   
    gg.sleep(6000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("360", gg.TYPE_FLOAT)
    gg.getResults(15)
    gg.editAll("1695", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("500", gg.TYPE_FLOAT)
    gg.getResults(9)
    gg.editAll("2254", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("6300", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("7000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("3400", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("3500", gg.TYPE_FLOAT)
    gg.clearResults()
   gg.alert("𝘽𝙪𝙮 𝙀𝙣𝙜𝙞𝙣𝙚 𝙑𝟖 𝟒.𝟎 𝘼𝙣𝙙 𝙁𝙖𝙨𝙩 𝙂𝙚𝙖𝙧𝘽𝙤𝙭")
   gg.sleep(3000)
    
    gg.clearResults()
    gg.toast("Found")
  end

  function C6()
  
    gg.sleep(6000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("415", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("1695", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("430", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("2254", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("7000", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("1000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("4000", gg.TYPE_FLOAT)
    gg.getResults(5)
    gg.editAll("1001", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.alert("𝘽𝙪𝙮 𝙀𝙣𝙜𝙞𝙣𝙚 𝙑𝟖 𝟒.𝟓 𝘼𝙣𝙙 𝙁𝙖𝙨𝙩 𝙂𝙚𝙖𝙧𝘽𝙤𝙭")
   gg.sleep(3000)
    
    gg.clearResults()
    gg.toast("Found")
  end
  
  function C7()
     
    gg.sleep(6000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("500", gg.TYPE_FLOAT)
    gg.getResults(9)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("620", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("2300", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("7000", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("8000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("5600", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("7998", gg.TYPE_FLOAT)
    gg.clearResults()
     gg.alert("𝘽𝙪𝙮 𝙀𝙣𝙜𝙞𝙣𝙚 𝙑𝟏𝟎 𝟓.𝟎 𝘼𝙣𝙙 𝙁𝙖𝙨𝙩 𝙂𝙚𝙖𝙧𝘽𝙤𝙭")
   gg.sleep(3000)
    
    gg.clearResults()
    gg.toast("Found")
  end
  
  function C8()
  gg.clearResults()
gg.clearList()
-- main code on
gg.alert("Tunggu sampai loading selesai")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("800", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1270", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1350", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1700", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1800", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1320", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1370", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1820", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1090", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1900", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1720", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("2000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1740", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1650", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1850", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1850", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.processResume()
gg.searchNumber("1140", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1560", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("2300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("2200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1614", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1741", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1450", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("3300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1455", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1240", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("940", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1460", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1640", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("2400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1030", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1550", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1690", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1750", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1610", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("3500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("500", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("11000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("600", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("2150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1865", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)
gg.processResume()

gg.clearResults()
gg.searchNumber("1540", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("400", gg.TYPE_FLOAT)

gg.clearResults()
gg.toast("Found")
end

function C9()
 gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("150", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("1695", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("220", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("2254", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("5900", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("7000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("4100", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("3500", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.alert("𝘽𝙪𝙮 𝙀𝙣𝙜𝙞𝙣𝙚 𝙇𝟒 𝟐.𝟎 𝘼𝙣𝙙 𝙁𝙖𝙨𝙩 𝙂𝙚𝙖𝙧𝘽𝙤𝙭")
    gg.sleep(3000)
    
    gg.clearResults()
    gg.toast("Found")
  end

function C10()
 gg.clearResults()
    gg.sleep(6000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("500", gg.TYPE_FLOAT)
    gg.getResults(9)
    gg.editAll("2000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("620", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("3000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("7000", gg.TYPE_FLOAT)
    gg.getResults(2)
    gg.editAll("8000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.sleep(3000)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.setVisible(false)
    gg.searchNumber("5600", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("7998", gg.TYPE_FLOAT)
    gg.clearResults()
     gg.alert("𝘽𝙪𝙮 𝙀𝙣𝙜𝙞𝙣𝙚 𝙑𝟏𝟎 𝟓.𝟎 𝘼𝙣𝙙 𝙁𝙖𝙨𝙩 𝙂𝙚𝙖𝙧𝘽𝙤𝙭")
   gg.sleep(3000)
    
    gg.clearResults()
    gg.toast("Found")
  end
function C11()
d = gg.prompt({"Input HP","Input Torque","Input Inner Hp","Input Inner Torque","Shift Time"},{[1]=""},{[2]=""},{[3]=""},{[4]=""},{[5]=""}) if d == nil then SixtoHiase()end if not d then return end gg.clearResults() gg.setVisible(false) 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber('240',gg.TYPE_FLOAT) 
gg.getResults(100) 
gg.editAll(d[1],gg.TYPE_FLOAT) 
gg.clearResults() 
gg.sleep(500) 
gg.setVisible(false) 	
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber('310',gg.TYPE_FLOAT) 
gg.getResults(100) 
gg.editAll(d[2],gg.TYPE_FLOAT) 
gg.clearResults() 
gg.sleep(500) 
gg.setVisible(false) 	
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber('6800',gg.TYPE_FLOAT) 
gg.getResults(100) 
gg.editAll(d[3],gg.TYPE_FLOAT) 
gg.clearResults() 
gg.sleep(500) 
gg.setVisible(false) 	
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber('4500',gg.TYPE_FLOAT) 
gg.getResults(20) 
gg.editAll(d[4],gg.TYPE_FLOAT) 
gg.clearResults(100) 
gg.sleep(500) 
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(59512, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(d[5],gg.TYPE_FLOAT)
gg.alert("𝗕𝗨𝗬 𝗘𝗡𝗚𝗜𝗡𝗘 𝗩6 𝟑.𝟎 𝗔𝗡𝗗 𝗦𝗛𝗜𝗙𝗧 𝗧𝗜𝗠𝗘")
gg.clearResults()
gg.toast("𝐂𝐎𝐌𝐏𝐋𝐄𝐓𝐄𝐃")
end

function C12()
gg.clearResults()
gg.clearList()
-- main code on
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("240", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("300", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("310", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("3000", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.searchNumber("6800", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("8000", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("4500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-7899", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.searchNumber("8000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("9.99999E-28", gg.TYPE_FLOAT)
gg.processResume()
gg.alert("𝗕𝗨𝗬 𝗘𝗡𝗚𝗜𝗡𝗘 𝗩6 𝟑.𝟎 𝗔𝗡𝗗 𝗦𝗛𝗜𝗙𝗧 𝗧𝗜𝗠𝗘")
gg.sleep(3000)
gg.clearResults()
gg.toast("𝐂𝐎𝐌𝐏𝐋𝐄𝐓𝐄𝐃")
end


while(true)do
if gg.isVisible(true) then
NDD = 1 
gg.setVisible(false) end
if NDD == 1 then
SixtoHiase()end
end
