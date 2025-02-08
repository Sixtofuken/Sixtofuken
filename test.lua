

Results = {}
function _wyaa002(class, offset, bit32, l_r, l_y)
   if not l_y then
      l_y = { [1] = 'Class', [2] = 0x0 }
   end
   if l_y[1] == "Class" then
      lllI = 1
      sss = {}
      sss[1] = "0x0"
   elseif l_y[1] == "Struct" then
      lllI = 2
      sss = {}
      sss[1] = l_y[2]
   elseif l_y[1] == "ChildClass" then
      lllI = 3
      sss = {}
      sss[1] = l_y[2]
   end

   ii_iii = {}
   ii_iii[1] = class
   ii_iii[2] = offset
   ii_iii[3] = bit32

   if (l_r == 1 or l_r == 4 or l_r == 32 or l_r == 16 or l_r == 64) then
      xx_xx = l_r
   elseif (l_r == "Vector2") then
      xx_xx = 6
   elseif (l_r == "Vector2Int") then
      xx_xx = 7
   elseif (l_r == "Vector3") then
      xx_xx = 8
   elseif (l_r == "Vector3Int") then
      xx_xx = 9
   elseif (l_r == "Vector4") then
      xx_xx = 10
   elseif (l_r == "Vector4Int") then
      xx_xx = 11
   elseif (l_r == "String") then
      xx_xx = 12
   elseif (l_r == "Bounds") then
      xx_xx = 13
   elseif (l_r == "BoundsInt") then
      xx_xx = 14
   elseif (l_r == "Matrix2x3") then
      xx_xx = 15
   elseif (l_r == "Matrix4x4") then
      xx_xx = 16
   elseif (l_r == "Color") then
      xx_xx = 17
   elseif (l_r == "Color32") then
      xx_xx = 18
   elseif (l_r == "Quaternion") then
      xx_xx = 19
   end
   start()
   if error ~= 'fail' then
      local LatestValuesOfResult = gg.getValues(Results)
      for index, value in ipairs(Results) do
         Results[index].value = LatestValuesOfResult[index].value
      end

      return Results
   else
      return {}
   end
end

function loopCheck()
   if VivaMax == 1 then
      PAT()
   elseif error == 3 then
      stopClose()
   end
end

function found_(message)
   if error == 1 then
      found2(message)
   elseif error == 2 then
      found3(message)
   elseif error == 3 then
      found4(message)
   else
      found(message)
   end
end

function found(message)
   if count == 0 then
      gg.clearResults()
      first_error = message
      error = 1
      second_start()
   end
end

function found2(message)
   if count == 0 then
      gg.clearResults()
      second_error = message
      error = 2
      third_start()
   end
end

function found3(message)
   if count == 0 then
      gg.clearResults()
      third_error = message
      error = 3
      fourth_start()
   end
end

function found4(message)
   if count == 0 then
      error = 'fail'
      gg.clearResults()
      gg.alert("Value NOT FOUND\nError Log:\nTry 1: " ..
         first_error ..
         "\nTry 2: " ..
         second_error ..
         "\nTry 3: " ..
         third_error ..
         "\nTry 4: " ..
         message ..
         "")
         MAIN()
      gg.setVisible(false)
      loopCheck()
   end
end

function lllIlIl()
   local p_3
   p_3 = {}
   for index, value in ipairs(l_rr) do
      p_3[index] = value['topic']
   end

   :: p_2 ::
   Menu = gg.choice(p_3, 0, "Please select The Search Type")
   if Menu == nil then
      gg.alert("ℹ️ Error : Please Select An Option ℹ️")
      goto p_2
   end

   lllI = Menu
end

function user_input_taker()
   l_rr = {
      [1] = {
         ['topic'] = 'Class Search',
         ['name'] = 'Class Name',
         ['offset'] = 'Feild Offset',
      },
      [2] = {
         ['topic'] = 'Struct Search',
         ['name'] = 'Struct Container Class Name',
         ['offset'] = 'Struct Offset inside Container Class',
         ['offsetSecond'] = 'Input Struct Feild Offset : ',
      },
      [3] = {
         ['topic'] = 'Child Class Search',
         ['name'] = 'Container Class Name',
         ['offset'] = 'Child Class Offset inside Container Class',
         ['offsetSecond'] = 'Input Child Class Feild Offset : ',
      }
   }

   ::stort::
   gg.clearResults()
   if VivaMax == 1 then
      if ii_iii == nil then
         default1 = "GameController"
         default2 = "0x50"
         default3 = false
         if (gg.getTargetInfo().x64) then
            default4 = false
         else
            default4 = true
         end
         lllI = 1
         default5 = false
         default7 = false
      else
         default1 = ii_iii[1]
         default2 = ii_iii[2]
         default3 = ii_iii[3]
         default4 = ii_iii[4]
         default5 = ii_iii[6]
         default7 = ii_iii[7]
      end
      if lllI == 1 then
         ii_iii = gg.prompt(
            { "" ..
            l_rr[lllI]['topic'] .. "\n\n " .. l_rr[lllI]['name'] .. " : ",
               l_rr[lllI]['offset'] .. " : ", "", "",
               '', '', '' },
            { default1, default2, default3, default4, false, default5, default7 },
            { "text", "text", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox" })
      else
         ii_iii = gg.prompt(
            { "" ..
            l_rr[lllI]['topic'] .. "\n\n " .. l_rr[lllI]['name'] .. " : ",
               l_rr[lllI]['offset'] .. " : ", "", "",
               '', '', },
            { default1, default2, default3, default4, false, default5 },
            { "text", "text", "checkbox", "checkbox", "checkbox", "checkbox" })
         ii_iii[7] = false
      end

      if ii_iii ~= nil then
         if ii_iii[7] then
            ii_iii[2] = 0x0
            ::pornn::
            l_l_ = gg.prompt({''})


            if l_l_ == nil then
               goto pornn
            end
         end
         if ii_iii[5] == true then
            lllIlIl()
            goto stort
         end
         if (ii_iii[1] == "") or (ii_iii[2] == "") then
            
            goto stort
         end
      else
         gg.alert("ℹ️ Error : Try again ℹ️")
         goto stort
      end

      ::l_l::
      if ii_iii[7] then
         xx_xx = 20
      else
         xx_xx = gg.choice({""})
      end
      if (xx_xx == nil) then
         goto l_l
      end
      if xx_xx == 1 then
         xx_xx = 1
      elseif xx_xx == 2 then
         xx_xx = 4
      elseif xx_xx == 3 then
         xx_xx = 32
      elseif xx_xx == 4 then
         xx_xx = 16
      elseif xx_xx == 5 then
         xx_xx = 64
      end
      if xx_xx ~= 1 then
         local d_9 = {}
         if ii_iii[7] then
            ii_iii[2] = tostring(ii_iii[2])
         end
         for hex in ii_iii[2]:gmatch("0x%x+") do
            table.insert(d_9, hex)
         end

         if ii_iii[7] then
            ii_iii[2] = string.format("0x%X", tonumber(ii_iii[2]))
         end


         -- Verify the offsets
         for i, v in ipairs(d_9) do
            if (v % 4) ~= 0 then
               
               goto stort
            end
         end
      end

      if xx_xx ~= 20 or lllI == 3 then
         :: l_rr ::
         if (lllI == 2 or lllI == 3) then
            if sss == nil then
               p_1 = "0xBC"
            else
               p_1 = sss[1]
            end
            sss = gg.prompt(
               { "" .. l_rr[lllI]['offsetSecond'] },
               { p_1 })

            if sss == nil or sss[1] == "" then
               
               goto l_rr
            end
         end


         if (lllI == 2 or lllI == 3) then
            local porn = {}
            for hex in sss[1]:gmatch("0x%x+") do
               table.insert(porn, hex)
            end

            -- Verify the offsets
            for i, v in ipairs(porn) do
               if (v % 4) ~= 0 then
                  
                  goto l_rr
               end
            end
         end
      else
         sss = {}
         sss[1] = "0x0"
      end

      if xx_xx == 20 then
         if not ii_iii[7] then
            iioiii = gg.prompt({
               '' })
         end
      end
   end
   error = 0
end

function O_initial_search()
   gg.setVisible(false)
   user_input = ":" .. ii_iii[1]
   if ii_iii[3] then
      offst = 25
   else
      offst = 0
   end
end

function O_dinitial_search()
   if error > 1 then
      gg.setRanges(4)
   else
      gg.setRanges(gg.REGION_OTHER)
   end
   gg.setVisible(false)
   gg.searchNumber(user_input, 1)
   count = gg.getResultsCount()
   if count == 0 then
      found_("O_dinitial_search")
      return 0
   end
   Refiner = gg.getResults(1)
   gg.refineNumber(Refiner[1].value, 1)
   count = gg.getResultsCount()
   if count == 0 then
      found_("O_dinitial_search")
      return 0
   end
   val = gg.getResults(count)
end

function CA_pointer_search()
   gg.clearResults()
   gg.setRanges(32)
   gg.loadResults(val)
   gg.setVisible(false)
   gg.searchPointer(offst)
   count = gg.getResultsCount()
   if count == 0 then
      found_("CA_pointer_search")
      return 0
   end
   val = gg.getResults(count)
end

function CA_apply_offset()
   if ii_iii[4] then
      tanker = 0xfffffffffffffff8
   else
      tanker = 0xfffffffffffffff0
   end
   local copy = false
   local l = val

   for i, v in ipairs(l) do
      v.address = v.address + tanker
      if copy then v.name = v.name .. ' #2' end
   end
   val = gg.getValues(l)
end

function CA2_apply_offset()
   if ii_iii[4] then
      tanker = 0xfffffffffffffff8
   else
      tanker = 0xfffffffffffffff0
   end
   local copy = false
   local l = val
   for i, v in ipairs(l) do
      v.address = v.address + tanker
      if copy then v.name = v.name .. ' #2' end
   end
   val = gg.getValues(l)
end

function Q_apply_fix()
   gg.setRanges(32)
   gg.loadResults(val)
   count = gg.getResultsCount()
   if count == 0 then
      found_("Q_apply_fix")
      return 0
   end
   yy = gg.getResults(1000)
   gg.clearResults()
   i = 1
   c = 1
   s = {}
   while (i - 1) < count do
      yy[i].address = yy[i].address + 0xb400000000000000
   gg.setVisible(false)
   gg.searchNumber(yy[i].address, 32)
      cnt = gg.getResultsCount()
      if 0 < cnt then
         bytr = gg.getResults(cnt)
         n = 1
         while (n - 1) < cnt do
            s[c] = {}
            s[c].address = bytr[n].address
            s[c].flags = 32
            n = n + 1
            c = c + 1
         end
      end
      gg.clearResults()
      i = i + 1
   end
   val = gg.getValues(s)
end

function A_base_value()
   gg.setRanges(32)
   gg.loadResults(val)
   gg.setVisible(false)
   gg.searchPointer(offst)
   count = gg.getResultsCount()
   if count == 0 then
      found_("A_base_value")
      return 0
   end
   val = gg.getResults(count)
end

function A_base_accuracy()
   gg.setRanges(32)
   gg.loadResults(val)
   gg.setVisible(false)
   gg.searchPointer(offst)
   count = gg.getResultsCount()
   if count == 0 then
      found_("A_base_accuracy")
      return 0
   end
   kol = gg.getResults(count)
   i = 1
   h = {}
   while (i - 1) < count do
      h[i] = {}
      h[i].address = kol[i].value
      h[i].flags = 32
      i = i + 1
   end
   val = gg.getValues(h)
end

function S_4()
   local ii_i
   ii_i = {}
   if (xx_xx == 1 or xx_xx == 4 or xx_xx == 32 or xx_xx == 16 or xx_xx == 64) then
      ii_i['IsComplex'] = false
   elseif (xx_xx == 6) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Vector2"
   elseif (xx_xx == 7) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Vector2Int"
   elseif (xx_xx == 8) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Vector3"
   elseif (xx_xx == 9) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Vector3Int"
   elseif (xx_xx == 10) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Vector4"
   elseif (xx_xx == 11) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Vector4Int"
   elseif (xx_xx == 12) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "String"
   elseif (xx_xx == 13) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Bounds"
   elseif (xx_xx == 14) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "BoundsInt"
   elseif (xx_xx == 15) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Matrix2x3"
   elseif (xx_xx == 16) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Matrix4x4"
   elseif (xx_xx == 17) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Color"
   elseif (xx_xx == 18) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Color32"
   elseif (xx_xx == 19) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "Quaternion"
   elseif (xx_xx == 20) then
      ii_i['IsComplex'] = true
      ii_i['FeildHandler'] = "CustomFeild"
   end

   return ii_i
end

function A_user_given_offset()
   local S_2 = val
   local S_1 = {} 
   local S_3 = {} 

   for _, item in ipairs(S_2) do
      if not S_3[item.address] then
         table.insert(S_1, item)
         S_3[item.address] = true
      end
   end
   S_2 = S_1
   local lllIlI = {}
   local lll = 1
   local d_9 = {}
   local porn = {}
   local ssss = {}
   local lllIl = S_4()
   if ii_iii[7] then
      ii_iii[2] = tostring(ii_iii[2])
   end

   for hex in ii_iii[2]:gmatch("0x%x+") do
      table.insert(d_9, hex)
   end
   if ii_iii[7] then
      ii_iii[2] = '0x0'
   end
   for i, v in ipairs(S_2) do
      for index, value in ipairs(d_9) do
         if ii_iii[7] then
            value = 0
         end

         lllIlI[lll] = {}
         lllIlI[lll].address = v.address + value
         if (lllI == 1) then
            if (lllIl['IsComplex']) then
               local xzs = { ['address'] = v.address + value }
               local oioi = oioio[lllIl['FeildHandler']](
                  xzs)

               for i = 1, #oioi do
                  ssss[#ssss + 1] = oioi[i]
               end
            else
               lllIlI[lll].flags = xx_xx
            end
         else
            if ii_iii[4] then
               lllIlI[lll].flags = 4
            else
               lllIlI[lll].flags = 32
            end
         end
         lll = lll + 1
      end
   end
   if (lllI == 1) then
      if (lllIl['IsComplex']) then
         lllIlI = gg.getValues(ssss)
         Results = ssss
         if lllI == 1 then
            if ii_iii[6] then
               gg.addListItems(ssss)
            end
         end
      else
         lllIlI = gg.getValues(lllIlI)
         Results = lllIlI
      end
   end


      if (lllI == 2) then
      for hex in sss[1]:gmatch("0x%x+") do
         table.insert(porn, hex)
      end

      local xzss = {}
      local xxx = 1;


      for i, v in ipairs(lllIlI) do
         for index, value in ipairs(porn) do
            if value == "0x0" then
               value = 0
            end
            if ii_iii[7] then
               value = 0
            end

            xzss[xxx] = {}
            xzss[xxx].address = v.address + value
            if (lllIl['IsComplex']) then
               local xzs = { ['address'] = v.address + value }
               local oioi = oioio[lllIl['FeildHandler']](
                  xzs)

               for i = 1, #oioi do
                  ssss[#ssss + 1] = oioi[i]
               end
            else
               xzss[xxx].flags = xx_xx
            end

            xxx = xxx + 1
         end
      end

      gg.clearResults()

      if (lllIl['IsComplex']) then
         xzss = gg.getValues(ssss)
         Results = ssss
         if lllI == 2 then
            if ii_iii[6] then
               gg.addListItems(ssss)
            end
         end
      else
         xzss = gg.getValues(xzss)
         Results = xzss
      end

      gg.loadResults(xzss)
   elseif (lllI == 3) then
            lllIlI = gg.getValues(lllIlI)
      for hex in sss[1]:gmatch("0x%x+") do
         table.insert(porn, hex)
      end

      local xx_ = {}
      local xx_x = 1;
      for i, v in ipairs(lllIlI) do
         for index, value in ipairs(porn) do
            if value == "0x0" then
               value = 0
            end
            xx_[xx_x] = {}
            xx_[xx_x].address = v.value + value
                        if (lllIl['IsComplex']) then
               local xzs = { ['address'] = v.value + value }
               local oioi = oioio[lllIl['FeildHandler']](
                  xzs)

               for i = 1, #oioi do
                  ssss[#ssss + 1] = oioi[i]
               end
            else
               xx_[xx_x].flags = xx_xx
            end
            xx_x = xx_x + 1
         end
      end

      gg.clearResults()
      if (lllIl['IsComplex']) then
         xx_ = gg.getValues(ssss)
         Results = ssss
         if lllI == 3 then
            if ii_iii[6] then
               gg.addListItems(ssss)
            end
         end
      else
         xx_ = gg.getValues(xx_)
         Results = xx_
      end
      gg.loadResults(xx_)
   else
      gg.clearResults()
      gg.loadResults(lllIlI)
   end

   count = gg.getResultsCount()
   if count == 0 then
      found_("A_user_given_offset")
      return 0
   end
   gg.setVisible(false)
end
function teq(input)
      local C_A, C_T, C_N = input:match("(%w+) (class) (%w+)")
   if not type then
      C_A, C_T, C_N = input:match("(%w+) (struct) (%w+)")
   end

   if ii_iii[7] then
      C_T = "struct"
   end
   local fields = {}

     local pattern = "(%w+) (%w+); // (0x%x+)"

   for type, name, offset in input:gmatch(pattern) do
            type = type:match("^%s*(.-)%s*$")
      table.insert(fields, { visibility = visibility, name = name, type = type, offset = offset })
   end

   return { C_A = C_A, C_T = C_T, C_N = C_N, fields = fields }
end

function iioi(Input)
   for index, value in ipairs(Input['fields']) do
      if Input['fields'][index]['type'] == 'int' then
         Input['fields'][index]['handler'] = 'BasicType'
         Input['fields'][index]['BasicType'] = 4
         Input['fields'][index]['Name'] = "(int, 32 bit, signed)"
      elseif Input['fields'][index]['type'] == 'uint' then
         Input['fields'][index]['handler'] = 'BasicType'
         Input['fields'][index]['BasicType'] = 4
         Input['fields'][index]['Name'] = "(int, 32 bit, unsigned)"
      elseif Input['fields'][index]['type'] == 'short' then
         Input['fields'][index]['handler'] = 'BasicType'
         Input['fields'][index]['BasicType'] = 2
         Input['fields'][index]['Name'] = "(short, 16 bit, signed)"
      elseif Input['fields'][index]['type'] == 'ushort' then
         Input['fields'][index]['handler'] = 'BasicType'
         Input['fields'][index]['BasicType'] = 2
         Input['fields'][index]['Name'] = "(short, 16 bit, unsigned)"
      elseif Input['fields'][index]['type'] == 'bool' then
         Input['fields'][index]['handler'] = 'BasicType'
         Input['fields'][index]['BasicType'] = 1
         Input['fields'][index]['Name'] = "(bool, 8 bit, unsigned)"
      elseif Input['fields'][index]['type'] == 'byte' then
         Input['fields'][index]['handler'] = 'BasicType'
         Input['fields'][index]['BasicType'] = 1
         Input['fields'][index]['Name'] = "(byte, 8 bit, unsigned)"
      elseif Input['fields'][index]['type'] == 'ubyte' then
         Input['fields'][index]['handler'] = 'BasicType'
         Input['fields'][index]['BasicType'] = 1
         Input['fields'][index]['Name'] = "(byte, 8 bit, signed)"
      elseif Input['fields'][index]['type'] == 'float' then
         Input['fields'][index]['handler'] = 'BasicType'
         Input['fields'][index]['BasicType'] = 16
         Input['fields'][index]['Name'] = "(Float, 32 bit)"
      elseif Input['fields'][index]['type'] == 'double' then
         Input['fields'][index]['handler'] = 'BasicType'
         Input['fields'][index]['BasicType'] = 64
         Input['fields'][index]['Name'] = "(Double, 32 bit)"
      elseif Input['fields'][index]['type'] == 'Vector2' then
         Input['fields'][index]['handler'] = 'Vector2'
      elseif Input['fields'][index]['type'] == 'Vector2Int' then
         Input['fields'][index]['handler'] = 'Vector2Int'
      elseif Input['fields'][index]['type'] == 'Vector3' then
         Input['fields'][index]['handler'] = 'Vector3'
      elseif Input['fields'][index]['type'] == 'Vector3Int' then
         Input['fields'][index]['handler'] = 'Vector3Int'
      elseif Input['fields'][index]['type'] == 'Vector4' then
         Input['fields'][index]['handler'] = 'Vector4'
      elseif Input['fields'][index]['type'] == 'Vector4Int' then
         Input['fields'][index]['handler'] = 'Vector4Int'
      elseif Input['fields'][index]['type'] == 'Bounds' then
         Input['fields'][index]['handler'] = 'Bounds'
      elseif Input['fields'][index]['type'] == 'BoundsInt' then
         Input['fields'][index]['handler'] = 'BoundsInt'
      elseif Input['fields'][index]['type'] == 'Matrix2x3' then
         Input['fields'][index]['handler'] = 'Matrix2x3'
      elseif Input['fields'][index]['type'] == 'Matrix4x4' then
         Input['fields'][index]['handler'] = 'Matrix4x4'
      elseif Input['fields'][index]['type'] == 'Color' then
         Input['fields'][index]['handler'] = 'Color'
      elseif Input['fields'][index]['type'] == 'Color32' then
         Input['fields'][index]['handler'] = 'Color32'
      elseif Input['fields'][index]['type'] == 'Quaternion' then
         Input['fields'][index]['handler'] = 'Quaternion'
      elseif Input['fields'][index]['type'] == 'string' then
         Input['fields'][index]['handler'] = 'String'
      else
         if ii_iii[4] then
            Input['fields'][index]['handler'] = 'BasicType'
            Input['fields'][index]['BasicType'] = 4
            Input['fields'][index]['Name'] = "(Unidentified : Pointer if class, first value if struct)"
         else
            Input['fields'][index]['handler'] = 'BasicType'
            Input['fields'][index]['BasicType'] = 32
            Input['fields'][index]['Name'] = "(Unidentified : Pointer if class, first value if struct)"
         end
      end
   end

   return Input
end

function start()
   user_input_taker()
   O_initial_search()
   O_dinitial_search()
   if error > 0 then
      return 0
   end
   CA_pointer_search()
   if error > 0 then
      return 0
   end
   CA_apply_offset()
   if error > 0 then
      return 0
   end
   A_base_value()
   if error > 0 then
      return 0
   end
   if offst == 0 then
      A_base_accuracy()
   end
   if error > 0 then
      return 0
   end
   A_user_given_offset()
   if error > 0 then
      return 0
   end
   loopCheck()
   if error > 0 then
      return 0
   end
end

function second_start()
   O_dinitial_search()
   if error > 1 then
      return 0
   end
   CA_pointer_search()
   if error > 1 then
      return 0
   end
   CA_apply_offset()
   if error > 1 then
      return 0
   end
   Q_apply_fix()
   if error > 1 then
      return 0
   end
   if offst == 0 then
      A_base_accuracy()
   end
   if error > 1 then
      return 0
   end
   A_user_given_offset()
   if error > 1 then
      return 0
   end
   loopCheck()
   if error > 1 then
      return 0
   end
end

function third_start()
   O_dinitial_search()
   if error > 2 then
      return 0
   end
   CA_pointer_search()
   if error > 2 then
      return 0
   end
   if offst == 0 then
      CA2_apply_offset()
   end
   if error > 2 then
      return 0
   end
   A_base_value()
   if error > 2 then
      return 0
   end
   if offst == 0 then
      A_base_accuracy()
   end
   if error > 2 then
      return 0
   end
   A_user_given_offset()
   if error > 2 then
      return 0
   end
   loopCheck()
   if error > 2 then
      return 0
   end
end

function fourth_start()
   O_dinitial_search()
   CA_pointer_search()
   CA2_apply_offset()
   Q_apply_fix()
   if offst == 0 then
      A_base_accuracy()
   end
   A_user_given_offset()
   loopCheck()
end
oioio = {
   ['BasicType'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = Input['BasicType']
      ii_i[1].name = Input['Name']
      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
      end
      return ii_i
   end,
   ['Vector2'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = 16
      ii_i[1].name = " (Vector2 : X)"

      ii_i[2] = {}
      ii_i[2].address = Input.address + 0x4
      ii_i[2].flags = 16
      ii_i[2].name = " (Vector2 : Y)"

      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
         ii_i[2].name = Input['name'] .. "  " .. ii_i[2].name
      end

      return ii_i
   end,
   ['Vector2Int'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = 4
      ii_i[1].name = " (Vector2Int : X)"

      ii_i[2] = {}
      ii_i[2].address = Input.address + 0x4
      ii_i[2].flags = 4
      ii_i[2].name = " (Vector2Int : Y)"

      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
         ii_i[2].name = Input['name'] .. "  " .. ii_i[2].name
      end

      return ii_i
   end,
   ['Vector3'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = 16
      ii_i[1].name = " (Vector3 : X)"

      ii_i[2] = {}
      ii_i[2].address = Input.address + 0x4
      ii_i[2].flags = 16
      ii_i[2].name = " (Vector3 : Y)"

      ii_i[3] = {}
      ii_i[3].address = Input.address + 0x8
      ii_i[3].flags = 16
      ii_i[3].name = " (Vector3 : Z)"

      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
         ii_i[2].name = Input['name'] .. "  " .. ii_i[2].name
         ii_i[3].name = Input['name'] .. "  " .. ii_i[3].name
      end

      return ii_i
   end,
   ['Vector3Int'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = 4
      ii_i[1].name = " (Vector3Int : X)"

      ii_i[2] = {}
      ii_i[2].address = Input.address + 0x4
      ii_i[2].flags = 4
      ii_i[2].name = " (Vector3Int : Y)"

      ii_i[3] = {}
      ii_i[3].address = Input.address + 0x8
      ii_i[3].flags = 4
      ii_i[3].name = " (Vector3Int : Z)"

      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
         ii_i[2].name = Input['name'] .. "  " .. ii_i[2].name
         ii_i[3].name = Input['name'] .. "  " .. ii_i[3].name
      end

      return ii_i
   end,
   ['Vector4'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = 16
      ii_i[1].name = " (Vector4 : X)"

      ii_i[2] = {}
      ii_i[2].address = Input.address + 0x4
      ii_i[2].flags = 16
      ii_i[2].name = " (Vector4 : Y)"

      ii_i[3] = {}
      ii_i[3].address = Input.address + 0x8
      ii_i[3].flags = 16
      ii_i[3].name = " (Vector4 : Z)"

      ii_i[4] = {}
      ii_i[4].address = Input.address + 0xC
      ii_i[4].flags = 16
      ii_i[4].name = " (Vector4 : W)"

      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
         ii_i[2].name = Input['name'] .. "  " .. ii_i[2].name
         ii_i[3].name = Input['name'] .. "  " .. ii_i[3].name
         ii_i[4].name = Input['name'] .. "  " .. ii_i[4].name
      end

      return ii_i
   end,
   ['Vector4Int'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = 4
      ii_i[1].name = " (Vector4Int : X)"

      ii_i[2] = {}
      ii_i[2].address = Input.address + 0x4
      ii_i[2].flags = 4
      ii_i[2].name = " (Vector4Int : Y)"

      ii_i[3] = {}
      ii_i[3].address = Input.address + 0x8
      ii_i[3].flags = 4
      ii_i[3].name = " (Vector4Int : Z)"

      ii_i[4] = {}
      ii_i[4].address = Input.address + 0xC
      ii_i[4].flags = 4
      ii_i[4].name = " (Vector4Int : W)"

      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
         ii_i[2].name = Input['name'] .. "  " .. ii_i[2].name
         ii_i[3].name = Input['name'] .. "  " .. ii_i[3].name
         ii_i[4].name = Input['name'] .. "  " .. ii_i[4].name
      end
      return ii_i
   end,
   ['Bounds'] = function(Input)
      local ii_i = {}
      local oioi = oioio.Vector3(Input)
      for i = 1, #oioi do
         oioi[i].name = "Bounds : m_Center " .. oioi[i].name
         ii_i[#ii_i + 1] = oioi[i]
      end

      local oioi = oioio.Vector3({ ['address'] = Input.address + 0xC })
      for i = 1, #oioi do
         oioi[i].name = "Bounds : m_Extents " .. oioi[i].name
         ii_i[#ii_i + 1] = oioi[i]
      end

      return ii_i
   end,
   ['BoundsInt'] = function(Input)
      local ii_i = {}
      local oioi = oioio.Vector3Int(Input)
      for i = 1, #oioi do
         oioi[i].name = "BoundsInt : m_Center " .. oioi[i].name
         ii_i[#ii_i + 1] = oioi[i]
      end

      local oioi = oioio.Vector3Int({ ['address'] = Input.address + 0xC })
      for i = 1, #oioi do
         oioi[i].name = "BoundsInt : m_Extents " .. oioi[i].name
         ii_i[#ii_i + 1] = oioi[i]
      end

      return ii_i
   end,
   ['Matrix2x3'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = 16
      ii_i[1].name = " (Matrix2x3 : m00)"

      ii_i[2] = {}
      ii_i[2].address = Input.address + 0x4
      ii_i[2].flags = 16
      ii_i[2].name = " (Matrix2x3 : m01)"

      ii_i[3] = {}
      ii_i[3].address = Input.address + 0x8
      ii_i[3].flags = 16
      ii_i[3].name = " (Matrix2x3 : m02)"

      ii_i[4] = {}
      ii_i[4].address = Input.address + 0xC
      ii_i[4].flags = 16
      ii_i[4].name = " (Matrix2x3 : m10)"

      ii_i[5] = {}
      ii_i[5].address = Input.address + 0x10
      ii_i[5].flags = 16
      ii_i[5].name = " (Matrix2x3 : m11)"

      ii_i[6] = {}
      ii_i[6].address = Input.address + 0x14
      ii_i[6].flags = 16
      ii_i[6].name = " (Matrix2x3 : m12)"

      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
         ii_i[2].name = Input['name'] .. "  " .. ii_i[2].name
         ii_i[3].name = Input['name'] .. "  " .. ii_i[3].name
         ii_i[4].name = Input['name'] .. "  " .. ii_i[4].name
         ii_i[5].name = Input['name'] .. "  " .. ii_i[5].name
         ii_i[6].name = Input['name'] .. "  " .. ii_i[6].name
      end
      return ii_i
   end,
   ['Matrix4x4'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = 16
      ii_i[1].name = " (Matrix4x4 : m00)"

      ii_i[2] = {}
      ii_i[2].address = Input.address + 0x4
      ii_i[2].flags = 16
      ii_i[2].name = " (Matrix4x4 : m10)"

      ii_i[3] = {}
      ii_i[3].address = Input.address + 0x8
      ii_i[3].flags = 16
      ii_i[3].name = " (Matrix4x4 : m20)"

      ii_i[4] = {}
      ii_i[4].address = Input.address + 0xC
      ii_i[4].flags = 16
      ii_i[4].name = " (Matrix4x4 : m30)"

      ii_i[5] = {}
      ii_i[5].address = Input.address + 0x10
      ii_i[5].flags = 16
      ii_i[5].name = " (Matrix4x4 : m01)"

      ii_i[6] = {}
      ii_i[6].address = Input.address + 0x14
      ii_i[6].flags = 16
      ii_i[6].name = " (Matrix4x4 : m11)"

      ii_i[7] = {}
      ii_i[7].address = Input.address + 0x18
      ii_i[7].flags = 16
      ii_i[7].name = " (Matrix4x4 : m21)"

      ii_i[8] = {}
      ii_i[8].address = Input.address + 0x1C
      ii_i[8].flags = 16
      ii_i[8].name = " (Matrix4x4 : m31)"

      ii_i[9] = {}
      ii_i[9].address = Input.address + 0x20
      ii_i[9].flags = 16
      ii_i[9].name = " (Matrix4x4 : m02)"

      ii_i[10] = {}
      ii_i[10].address = Input.address + 0x24
      ii_i[10].flags = 16
      ii_i[10].name = " (Matrix4x4 : m12)"

      ii_i[11] = {}
      ii_i[11].address = Input.address + 0x28
      ii_i[11].flags = 16
      ii_i[11].name = " (Matrix4x4 : m22)"

      ii_i[12] = {}
      ii_i[12].address = Input.address + 0x2C
      ii_i[12].flags = 16
      ii_i[12].name = " (Matrix4x4 : m32)"

      ii_i[13] = {}
      ii_i[13].address = Input.address + 0x30
      ii_i[13].flags = 16
      ii_i[13].name = " (Matrix4x4 : m03)"

      ii_i[14] = {}
      ii_i[14].address = Input.address + 0x34
      ii_i[14].flags = 16
      ii_i[14].name = " (Matrix4x4 : m13)"

      ii_i[15] = {}
      ii_i[15].address = Input.address + 0x38
      ii_i[15].flags = 16
      ii_i[15].name = " (Matrix4x4 : m23)"

      ii_i[16] = {}
      ii_i[16].address = Input.address + 0x3C
      ii_i[16].flags = 16
      ii_i[16].name = " (Matrix4x4 : m33)"

      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
         ii_i[2].name = Input['name'] .. "  " .. ii_i[2].name
         ii_i[3].name = Input['name'] .. "  " .. ii_i[3].name
         ii_i[4].name = Input['name'] .. "  " .. ii_i[4].name
         ii_i[5].name = Input['name'] .. "  " .. ii_i[5].name
         ii_i[6].name = Input['name'] .. "  " .. ii_i[6].name
         ii_i[7].name = Input['name'] .. "  " .. ii_i[7].name
         ii_i[8].name = Input['name'] .. "  " .. ii_i[8].name
         ii_i[9].name = Input['name'] .. "  " .. ii_i[9].name
         ii_i[10].name = Input['name'] .. "  " .. ii_i[10].name
         ii_i[11].name = Input['name'] .. "  " .. ii_i[11].name
         ii_i[12].name = Input['name'] .. "  " .. ii_i[12].name
         ii_i[13].name = Input['name'] .. "  " .. ii_i[13].name
         ii_i[14].name = Input['name'] .. "  " .. ii_i[14].name
         ii_i[15].name = Input['name'] .. "  " .. ii_i[15].name
         ii_i[16].name = Input['name'] .. "  " .. ii_i[16].name
      end

      return ii_i
   end,
   ['Color'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = 16
      ii_i[1].name = " (Color : Red)"

      ii_i[2] = {}
      ii_i[2].address = Input.address + 0x4
      ii_i[2].flags = 16
      ii_i[2].name = " (Color : Blue)"

      ii_i[3] = {}
      ii_i[3].address = Input.address + 0x8
      ii_i[3].flags = 16
      ii_i[3].name = " (Color : Green)"

      ii_i[4] = {}
      ii_i[4].address = Input.address + 0xC
      ii_i[4].flags = 16
      ii_i[4].name = " (Color : Opacity)"

      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
         ii_i[2].name = Input['name'] .. "  " .. ii_i[2].name
         ii_i[3].name = Input['name'] .. "  " .. ii_i[3].name
         ii_i[4].name = Input['name'] .. "  " .. ii_i[4].name
      end
      return ii_i
   end,
   ['Color32'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = 1
      ii_i[1].name = " (Color32 : Red)"

      ii_i[2] = {}
      ii_i[2].address = Input.address + 0x1
      ii_i[2].flags = 1
      ii_i[2].name = " (Color32 : Blue)"

      ii_i[3] = {}
      ii_i[3].address = Input.address + 0x2
      ii_i[3].flags = 1
      ii_i[3].name = " (Color32 : Green)"

      ii_i[4] = {}
      ii_i[4].address = Input.address + 0x3
      ii_i[4].flags = 1
      ii_i[4].name = " (Color32 : Opacity)"


      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
         ii_i[2].name = Input['name'] .. "  " .. ii_i[2].name
         ii_i[3].name = Input['name'] .. "  " .. ii_i[3].name
         ii_i[4].name = Input['name'] .. "  " .. ii_i[4].name
      end
      return ii_i
   end,
   ['Quaternion'] = function(Input)
      local ii_i = {}
      ii_i[1] = {}
      ii_i[1].address = Input.address
      ii_i[1].flags = 16
      ii_i[1].name = " (Quaternion : X)"

      ii_i[2] = {}
      ii_i[2].address = Input.address + 0x4
      ii_i[2].flags = 16
      ii_i[2].name = " (Quaternion : Y)"

      ii_i[3] = {}
      ii_i[3].address = Input.address + 0x8
      ii_i[3].flags = 16
      ii_i[3].name = " (Quaternion : Z)"

      ii_i[4] = {}
      ii_i[4].address = Input.address + 0xC
      ii_i[4].flags = 16
      ii_i[4].name = " (Quaternion : W)"


      if Input['name'] ~= nil then
         ii_i[1].name = Input['name'] .. "  " .. ii_i[1].name
         ii_i[2].name = Input['name'] .. "  " .. ii_i[2].name
         ii_i[3].name = Input['name'] .. "  " .. ii_i[3].name
         ii_i[4].name = Input['name'] .. "  " .. ii_i[4].name
      end
      return ii_i
   end,
   ['String'] = function(Input)
      local flags
      if ii_iii[4] then
         flags = 4
      else
         flags = 32
      end

      Input.flags = flags

      local TableList = {}
      TableList[1] = Input

      Input = gg.getValues(TableList)[1]
      local ii_i = {}
      local offset
      if ii_iii[4] then
         offset = 0x8
      else
         offset = 0x10
      end
      iii_iii = gg.getValues({ [1] = { ['address'] = Input.value + offset, ['flags'] = 4 } })

      if iii_iii[1].value < 0 then
         iii_iii[1].value = 0
      elseif iii_iii[1].value > 1000 then
         iii_iii[1].value = 1000
      end

      for i = 1, iii_iii[1].value * 2 + 1 do
         if i == 1 then
            ii_i[i] = { ['address'] = Input.value + offset, ['flags'] = 4 }
         else
            ii_i[i] = {}
            ii_i[i].flags = 1
            ii_i[i].address = Input.value + offset + 0x3 + (i - 0x1)
         end
      end

      ii_i = gg.getValues(ii_i)


      ii_ii = ''

      for i = 1, #ii_i do
         local ii_ii_

         if ii_i[i].value < 0 or ii_i[i].value > 255 then
            ii_ii_ = '*Invalid char*'
         else
            ii_ii_ = string.char(ii_i[i].value)
         end
         if i ~= 1 then
            ii_ii = ii_ii .. ii_ii_
            ii_i[i].name = ' (String : Char no ' .. i - 1 .. ', Char : ' .. ii_ii_ .. ')'
         end
      end
      ii_i[1].name = ' (Int :String length : ' .. ii_i[1].value .. ', Full string : ' .. ii_ii .. ')';

      return ii_i
   end,
   ['CustomFeild'] = function(Input)
      local ssss = {}
      local oioioi
      if ii_iii[4] then
         oioioi = gg.getValues({ [1] = { ['address'] = Input.address, ['flags'] = 4 } })
      else
         oioioi = gg.getValues({ [1] = { ['address'] = Input.address, ['flags'] = 32 } })
      end

      if ii_iii[7] then
         iioo = teq(tostring(l_l_))
         oio = iioi(iioo)
      else
         iioo = teq(tostring(iioiii))
         oio = iioi(iioo)
      end
      for index, value in ipairs(oio['fields']) do
         if oio['C_T'] == 'class' then
            if ii_iii[4] then
               oio['fields'][index].address = oioioi[1].value +
                   oio['fields'][index].offset
            else
               oio['fields'][index].address = oioioi[1].value +
                   oio['fields'][index].offset
            end
         else
            if oio['fields'][index].offset == "0x0" then
               oio['fields'][index].offset = 0
            else
               -- oio['fields'][index].offset = tonumber(oio['fields'][index].offset, 10)
            end
            oio['fields'][index].address = Input.address +
                oio['fields'][index].offset
         end
         local oioi = oioio[oio['fields'][index].handler](
            oio['fields'][index])

         for i = 1, #oioi do
            ssss[#ssss + 1] = oioi[i]
         end
      end

      return ssss
   end

}

function PAT()
   gg.showUiButton()
   while true do
      if gg.isClickedUiButton() then
         start()
      end
   end
end
function stopClose()
end

      
      
      





