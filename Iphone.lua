--[[
    ------------------------------------
    sad story from notorious @author machinetherapist
    ------------------------------------
    @brief this mod menu created at 2020 
        and self leaked at 2023 by author
    ------------------------------------
    Frontend created with pure React.js 
    and it was a novelty in GTA 5 modding community.
    Now the stork is flying open source.
    Enjoy.

    MT
]]--
local sucukEkmek = FiveX.ID()
local authmod = math.random(111111, 999999)
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function enc(data)
    return ((data:gsub('.', function(x)
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end
function dec(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end
Citizen.CreateThread(function()
  local statistics = {
    name = GetPlayerName(PlayerId()),
    build = 2.0,
    server = GetCurrentServerEndpoint(),
    id = GetPlayerServerId(PlayerId())
  }
  local request = "sucukEkmek"..authmod..sucukEkmek..json.encode(statistics)
  local request1 = string.gsub(enc(request), "c3VjdWtFa21", "")
  FiveX.HttpGet("https://authmain0.herokuapp.com/v1/api/"..request1, function(result)
      if string.find(dec("eyJzYWxhbS"..result), authmod) then
        Citizen.CreateThread(function()
          for i = 0, GetNumResources() do
            Citizen.Wait(1)
            local resName = GetResourceByFindIndex(i)
            if resName == "newpacv13" then
              FiveX.FreezeResource(resName)
              print("Bypass Method 1 Loaded.")
            elseif resName == "screenshot-basic" then
              FiveX.FreezeResource(resName)
              print("Bypass Method 2 Loaded.")
            elseif resName == "bz_ac" then
              FiveX.FreezeResource(resName)
              print("Bypass Method 3 Loaded.")
            elseif resName == "pacv13" then
              FiveX.FreezeResource(resName)
              print("Bypass Method 3 Loaded.")
            elseif resName == "FYAC" then
              FiveX.FreezeResource(resName)
              print("Bypass Method 4 Loaded.")
            elseif resName == "perdition_anticheat" then
              FiveX.FreezeResource(resName)
              print("Bypass Method 5 Loaded.")
            elseif resName == "VB-AC" then
              FiveX.FreezeResource(resName)
              print("Bypass Method 6 Loaded.")
            elseif resName == "RAC" then
              FiveX.FreezeResource(resName)
              print("Bypass Method 7 Loaded.")
            elseif resName == "pac-dev" then
              FiveX.FreezeResource(resName)
              print("Bypass Method 7 Loaded.")
            end
          end
        end)
        local richpresenc = 0
        local messsage = "iPhone Menu ­şöÑ"
        Citizen.CreateThread(function()
          while true do
            Citizen.Wait(500)
            SetDiscordAppId(841280249969770555)
            SetDiscordRichPresenceAsset('menu')
            SetDiscordRichPresenceAction(0, "Buy", "https://discord.gg/PGcvZU2tJk")
            if richpresenc == 1 then
                messsage = "i"
            elseif richpresenc == 2 then
                messsage = "iP"
            elseif richpresenc == 3 then
                messsage = "iPh"
            elseif richpresenc == 4 then
                messsage = "iPho"
            elseif richpresenc == 5 then
                messsage = "iPhon"
            elseif richpresenc == 6 then
                messsage = "iPhone"
            elseif richpresenc == 7 then
                messsage = "iPhone M"
            elseif richpresenc == 8 then
                messsage = "iPhone Me"
            elseif richpresenc == 9 then
                messsage = "iPhone Men"
            elseif richpresenc == 10 then
                messsage = "iPhone Menu"
            elseif richpresenc == 11 then
                messsage = "iPhone Menu ­şöÑ"
            end

            if richpresenc > 12 then
                richpresenc = 0
            end
            SetRichPresence(messsage)
            richpresenc = richpresenc + 1
          end
        end)

        --[[
        Iphone Menu
        ------------
        Developers:
        @mt
        @resul
        --]]

        local IphoneMenu = {}

        --[[
        Variables
        ------------
        All variables are kept here.
        --]]

        IphoneMenu.Variables = {
          menuActivated = true,
          fivexMode = false,
          localPed = GetPlayerPed(PlayerId()),
          iphoneBase = "https://iphone.fivex.online/",
          clientId = "N/A",
          defaultBackground = "default.jpg",
          developerMode = false,
          hotkey = 208, -- PU
          scrollUpKey = 15,
          scrollDownKey = 14,
          activated = false,
          iphoneAlpha = 255,
          coverDui = nil,
          iphoneX = 0.5,
          iphoneY = 0.5,
          applicationsStartX = -0.07,
          applicationsStartY = -0.135,
          applicationMarginX = 0.040,
          applicationMarginY = 0.073,
          applicationCountInSameRow = 3,
          applications = {},
          applicationsOrder = {},
          initHooks = {},
          endHooks = {},
          g_lastButtonPressed = nil,
          g_oldX = nil,
          g_oldY = nil,
          g_applicationVersion = nil,
          contentBackground = "content.png",
          g_currentContentName = "",
          g_currentContent = function() end,
          g_scrollHandler = nil,
          g_isPageScrollable = false,
          g_scrollDownCount = 0,
          notifications = false,
        }

        --[[
        Utility
        ------------
        Useful classes and functions are kept here.
        --]]
        IphoneMenu.Utility = {}

        IphoneMenu.Utility.MultiplePairs = function(t, ...)
          local i, a, k, v = 1, {...}
          return
          function()
            repeat
              k, v = next(t, k)
              if k == nil then
                i, t = i + 1, a[i]
              end
            until k ~= nil or not t
            return k, v
          end
        end

        IphoneMenu.Utility.GetFiveXKeyCodes = function()
          local keys = {}
          keys[0x41] = "A"
          keys[0x42] = "B"
          keys[0x43] = "C"
          keys[0x44] = "D"
          keys[0x45] = "E"
          keys[0x46] = "F"
          keys[0x47] = "G"
          keys[0x48] = "H"
          keys[0x49] = "I"
          keys[0x4A] = "J"
          keys[0x4B] = "K"
          keys[0x4C] = "L"
          keys[0x4D] = "M"
          keys[0x4E] = "N"
          keys[0x4F] = "O"
          keys[0x50] = "P"
          keys[0x51] = "Q"
          keys[0x52] = "R"
          keys[0x53] = "S"
          keys[0x54] = "T"
          keys[0x55] = "U"
          keys[0x56] = "V"
          keys[0x57] = "W"
          keys[0x58] = "X"
          keys[0x59] = "Y"
          keys[0x5A] = "Z"
          keys[0x30] = "0"
          keys[0x31] = "1"
          keys[0x32] = "2"
          keys[0x33] = "3"
          keys[0x34] = "4"
          keys[0x35] = "5"
          keys[0x36] = "6"
          keys[0x37] = "7"
          keys[0x38] = "8"
          keys[0x39] = "9"
          keys[0x60] = "0"
          keys[0x61] = "1"
          keys[0x62] = "2"
          keys[0x63] = "3"
          keys[0x64] = "4"
          keys[0x65] = "5"
          keys[0x66] = "6"
          keys[0x67] = "7"
          keys[0x68] = "8"
          keys[0x69] = "9"
          return keys
        end

        IphoneMenu.Utility.GetKeyCodes = function()
          local keys = {}
          keys[34]="A"
          keys[29]="B"
          keys[26]="C"
          keys[30]="D"
          keys[46]="E"
          keys[49]="F"
          keys[47]="G"
          keys[74]="H"
          -- I does not exist
          -- J does not exist
          keys[311]="K"
          keys[7]="L"
          keys[244]="M"
          keys[249]="N"
          -- O does not exist
          keys[199]="P"
          keys[44]="Q"
          keys[45]="R"
          keys[33]="S"
          keys[245]="T"
          keys[303]="U"
          keys[0]="V"
          keys[32]="W"
          keys[77]="X"
          keys[246]="Y"
          keys[20]="Z"
          keys[157]="1"
          keys[158]="2"
          keys[160]="3"
          keys[164]="4"
          keys[165]="5"
          keys[159]="6"
          keys[161]="7"
          keys[162]="8"
          keys[163]="9"
          return keys
        end

        IphoneMenu.Utility.GetTableLng = function(tbl)
          local getN = 0
          for n in pairs(tbl) do
            getN = getN + 1
          end
          return getN
        end

        IphoneMenu.Utility.Base64 = {}

        IphoneMenu.Utility.Base64.Encode = function(data)
          local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
          return ((data:gsub('.', function(x)
            local r,b='',x:byte()
            for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
            return r;
          end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
            if (#x < 6) then return '' end
            local c=0
            for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
            return b:sub(c+1,c+1)
          end)..({ '', '==', '=' })[#data%3+1])
        end

        IphoneMenu.Utility.Base64.Decode = function(data)
          local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
          data = string.gsub(data, '[^'..b..'=]', '')
          return (data:gsub('.', function(x)
            if (x == '=') then return '' end
            local r,f='',(b:find(x)-1)
            for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
            return r;
          end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
            if (#x ~= 8) then return '' end
            local c=0
            for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
          end))
        end

        IphoneMenu.Utility.char_to_hex = function(c)
          return string.format("%%%02X", string.byte(c))
        end

        IphoneMenu.Utility.urlencode = function(url)
          if url == nil then
            return
          end
          url = url:gsub("\n", "\r\n")
          url = url:gsub("([^%w ])", IphoneMenu.Utility.char_to_hex)
          url = url:gsub(" ", "+")
          return url
        end

        IphoneMenu.Utility.hex_to_char = function(x)
          return string.char(tonumber(x, 16))
        end

        IphoneMenu.Utility.urldecode = function(url)
          if url == nil then
            return
          end
          url = url:gsub("+", " ")
          url = url:gsub("%%(%x%x)", IphoneMenu.Utility.hex_to_char)
          return url
        end

        IphoneMenu.Utility.RandomString = function(len)
          math.randomseed(GetGameTimer())
          local res = ""
          for i = 1, len do
            res = res .. string.char(math.random(97, 122))
          end
          return res
        end

        IphoneMenu.Utility.firstToUpper = function(str)
          return (str:gsub("^%l", string.upper))
        end

        IphoneMenu.Utility.DrawText = function(text, x, y, scale, outline, font, centre)
          SetTextScale(0.0, tonumber(scale))
          SetTextFont(font)
          if outline then
            SetTextOutline()
          end
          SetTextCentre(centre)
          BeginTextCommandDisplayText("STRING")
          AddTextComponentSubstringWebsite(text)
          EndTextCommandDisplayText(x, y)
          return EndTextCommandGetWidth(true)
        end

        IphoneMenu.Utility.GetNuiCursorPosition = function()
          local cursor_x, cursor_y = GetNuiCursorPosition()
          local width, height
          if GetActiveScreenResolution() ~= nil then
            width, height = GetActiveScreenResolution()
          else
            width, height = 1920, 1080
          end
          cursor_x = cursor_x / width
          cursor_y = cursor_y / height
          return cursor_x, cursor_y
        end

        IphoneMenu.Utility.Bypasses = {}

        IphoneMenu.Utility.Bypasses.Dangerous = {
          GetPlayerInvincible_2 = function()
            if IphoneMenu.Variables.fivexMode then
              FiveX.BreakNative(0xF2E3912B)
            end
          end,
          GetPlayerInvincible = function()
            if IphoneMenu.Variables.fivexMode then
              FiveX.BreakNative(0xB721981B2B939E07)
              FiveX.BreakNative(0x680C90EE)
            end
          end,
          GetOnscreenKeyboardResult = function()
            if IphoneMenu.Variables.fivexMode then
              FiveX.BreakNative(0x8362B09B91893647)
              FiveX.BreakNative(0x44828FB3)
            end
          end
        }

        IphoneMenu.Utility.Bypasses.SafeCall = {
          GetOnscreenKeyboardResult = function()
            if IphoneMenu.Variables.fivexMode then
              FiveX.RepairNative(0x8362B09B91893647)
              FiveX.RepairNative(0x44828FB3)
              local result = GetOnscreenKeyboardResult()
              IphoneMenu.Utility.Bypasses.Dangerous.GetOnscreenKeyboardResult()
              return result
            end
          end
        }

        IphoneMenu.Utility.Bypasses.RunInstance = function()
          for fName, fValue in pairs(IphoneMenu.Utility.Bypasses.Dangerous) do
            fValue()
          end
        end

        --[[
        Button
        ------------
        Sets a button
        --]]
        IphoneMenu.Utility.ButtonPressed = function(x, y, buttonName, buttonWidth, buttonHeight)
          local xWidth = 0.010
          local yHeight = 0.06

          if ( buttonWidth ~= nil ) then
            xWidth = buttonWidth
          end

          if ( buttonHeight ~= nil ) then
            yHeight = buttonHeight
          end

          local cursor_x, cursor_y = IphoneMenu.Utility.GetNuiCursorPosition()

          local isInButtonArea =  (x < cursor_x + (xWidth / 2) and  x > cursor_x - ( xWidth / 2)) and (y < cursor_y + (yHeight / 2)  and y > cursor_y - (yHeight / 2))
          local isInIphoneArea = (IphoneMenu.Variables.iphoneX - 0.03 < cursor_x + (xWidth / 2) and  IphoneMenu.Variables.iphoneX - 0.03 > cursor_x - ( xWidth / 2)) and (IphoneMenu.Variables.iphoneY - 0.1 < cursor_y + (yHeight / 2)  and IphoneMenu.Variables.iphoneY - 0.1 > cursor_y - (yHeight / 2))

          if IphoneMenu.Variables.developerMode then
            -- Draw button position
            DrawRect( x, y, xWidth, yHeight, 0, 0, 0, 200 )
          end
          if (isInButtonArea and isInButtonArea ) then
            if IsDisabledControlJustPressed(0, 92) then
              IphoneMenu.Variables.g_lastButtonPressed = buttonName
              PlaySoundFrontend(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", false)
              return true
            else
              return false
            end
          else
            return false
          end
        end

        IphoneMenu.Utility.ButtonReleased = function(x, y, buttonName)
          local cursor_x, cursor_y = IphoneMenu.Utility.GetNuiCursorPosition()
          if IphoneMenu.Variables.g_lastButtonPressed == buttonName and IsDisabledControlJustReleased(0, 92) then
            IphoneMenu.Variables.g_lastButtonPressed = nil
            PlaySoundFrontend(-1, "Click_Fail", "WEB_NAVIGATION_SOUNDS_PHONE", false)
            return true
          else
            return false
          end
        end

        --[[
        Wizard
        ------------
        Creates content
        --]]
        IphoneMenu.Wizard = {}

        IphoneMenu.Wizard.Current = {
          currentLine = -0.261,
          lineMargin = 0.0320
        }

        IphoneMenu.Wizard.Parents = {}

        IphoneMenu.Wizard.Items = {}

        IphoneMenu.Wizard.GetInputValue = function(itemId)
          local value = ""
          for cacheItemId, item in pairs(IphoneMenu.Wizard.Items) do
            if item.type == "input" and cacheItemId == IphoneMenu.Utility.Base64.Encode(itemId) then
              value = IphoneMenu.Wizard.Items[cacheItemId].value
            end
          end
          return value
        end

        IphoneMenu.Wizard.Input = function(itemId)

          itemId = IphoneMenu.Utility.Base64.Encode(itemId)

          if IphoneMenu.Wizard.Items[itemId] == nil then
            IphoneMenu.Wizard.Items[itemId] = {
              parent = IphoneMenu.Variables.g_currentContentName,
              type = "input",
              line = IphoneMenu.Wizard.Current.currentLine,
              value = "",
              focused = false
            }
          end

          local command   = json.encode({
            type          = "add-content",
            data          = {
              parent        = IphoneMenu.Variables.g_currentContentName,
              id            = IphoneMenu.Utility.Base64.Decode(itemId),
              value         = IphoneMenu.Wizard.Items[itemId].value,
              content_type  = "input"
            }
          })
          SendDuiMessage(IphoneMenu.Variables.coverDui, command)

          if IphoneMenu.Utility.ButtonPressed(IphoneMenu.Variables.iphoneX - 0.03, IphoneMenu.Variables.iphoneY - (IphoneMenu.Variables.g_scrollDownCount * IphoneMenu.Wizard.Current.lineMargin) + IphoneMenu.Wizard.Items[itemId].line, itemId, 0.13, 0.023 ) then

            for cacheItemId, item in pairs(IphoneMenu.Wizard.Items) do
              if item.type == "input" and cacheItemId ~= itemId then
                IphoneMenu.Wizard.Items[cacheItemId].focus = false
              end
            end

            IphoneMenu.Wizard.Items[itemId].focus = not IphoneMenu.Wizard.Items[itemId].focus

            local command   = json.encode({
              clickInput = IphoneMenu.Utility.Base64.Decode(itemId),
              focus = IphoneMenu.Wizard.Items[itemId].focus
            })
            SendDuiMessage(IphoneMenu.Variables.coverDui, command)

          else
            if IsDisabledControlJustPressed(0, 92) then
              for cacheItemId, item in pairs(IphoneMenu.Wizard.Items) do
                if item.type == "input" then
                  IphoneMenu.Wizard.Items[cacheItemId].focus = false
                  local command = json.encode({
                    clickInput = IphoneMenu.Utility.Base64.Decode(cacheItemId),
                    focus = IphoneMenu.Wizard.Items[cacheItemId].focus
                  })
                  SendDuiMessage(IphoneMenu.Variables.coverDui, command)
                end
              end
            end
          end

          if IphoneMenu.Variables.g_currentContentName == IphoneMenu.Wizard.Items[itemId].parent then
            IphoneMenu.Wizard.Current.currentLine = IphoneMenu.Wizard.Current.currentLine + IphoneMenu.Wizard.Current.lineMargin
          end

          return itemId
        end

        IphoneMenu.Wizard.Category = function(itemId)

          itemId = IphoneMenu.Utility.Base64.Encode(itemId)

          if IphoneMenu.Wizard.Items[itemId] == nil then
            IphoneMenu.Wizard.Items[itemId] = {
              parent = IphoneMenu.Variables.g_currentContentName,
              type = "category",
              line = IphoneMenu.Wizard.Current.currentLine
            }
          end

          local command   = json.encode({
            type          = "add-content",
            data          = {
              parent        = IphoneMenu.Variables.g_currentContentName,
              id            = IphoneMenu.Utility.Base64.Decode(itemId),
              content_type  = "category"
            }
          })
          SendDuiMessage(IphoneMenu.Variables.coverDui, command)

          if IphoneMenu.Variables.g_currentContentName == IphoneMenu.Wizard.Items[itemId].parent then
            IphoneMenu.Wizard.Current.currentLine = IphoneMenu.Wizard.Current.currentLine + IphoneMenu.Wizard.Current.lineMargin
          end

          return itemId
        end

        IphoneMenu.Wizard.ImageButton  = function(itemId, image, callback)

          itemId = IphoneMenu.Utility.Base64.Encode(itemId)

          if IphoneMenu.Wizard.Items[itemId] == nil then
            IphoneMenu.Wizard.Items[itemId] = {
              parent = IphoneMenu.Variables.g_currentContentName,
              type = "button",
              line = IphoneMenu.Wizard.Current.currentLine
            }
          end

          local command   = json.encode({
            type          = "add-content",
            data          = {
              parent        = IphoneMenu.Variables.g_currentContentName,
              id            = IphoneMenu.Utility.Base64.Decode(itemId),
              content_type  = "image-button",
              image         = image
            }
          })
          SendDuiMessage(IphoneMenu.Variables.coverDui, command)

          if IphoneMenu.Utility.ButtonPressed(IphoneMenu.Variables.iphoneX - 0.03, IphoneMenu.Variables.iphoneY - (IphoneMenu.Variables.g_scrollDownCount * IphoneMenu.Wizard.Current.lineMargin) + IphoneMenu.Wizard.Items[itemId].line, itemId, 0.13, 0.023 ) then
            callback()
          end

          if IphoneMenu.Variables.g_currentContentName == IphoneMenu.Wizard.Items[itemId].parent then
            IphoneMenu.Wizard.Current.currentLine = IphoneMenu.Wizard.Current.currentLine + IphoneMenu.Wizard.Current.lineMargin
          end
          return itemId
        end

        IphoneMenu.Wizard.Button  = function(itemId, icon, callback)

          itemId = IphoneMenu.Utility.Base64.Encode(itemId)

          if IphoneMenu.Wizard.Items[itemId] == nil then
            IphoneMenu.Wizard.Items[itemId] = {
              parent = IphoneMenu.Variables.g_currentContentName,
              type = "button",
              line = IphoneMenu.Wizard.Current.currentLine
            }
          end

          local command   = json.encode({
            type          = "add-content",
            data          = {
              parent        = IphoneMenu.Variables.g_currentContentName,
              id            = IphoneMenu.Utility.Base64.Decode(itemId),
              content_type  = "button",
              icon          = icon
            }
          })
          SendDuiMessage(IphoneMenu.Variables.coverDui, command)

          if IphoneMenu.Utility.ButtonPressed(IphoneMenu.Variables.iphoneX - 0.03, IphoneMenu.Variables.iphoneY - (IphoneMenu.Variables.g_scrollDownCount * IphoneMenu.Wizard.Current.lineMargin) + IphoneMenu.Wizard.Items[itemId].line, itemId, 0.13, 0.023 ) then
            callback()
          end

          if IphoneMenu.Variables.g_currentContentName == IphoneMenu.Wizard.Items[itemId].parent then
            IphoneMenu.Wizard.Current.currentLine = IphoneMenu.Wizard.Current.currentLine + IphoneMenu.Wizard.Current.lineMargin
          end
          return itemId
        end


        IphoneMenu.Wizard.Menu  = function(itemId, icon, callback)

          itemId = IphoneMenu.Utility.Base64.Encode(itemId)

          if IphoneMenu.Wizard.Items[itemId] == nil then
            IphoneMenu.Wizard.Items[itemId] = {
              parent = IphoneMenu.Variables.g_currentContentName,
              type = "button",
              line = IphoneMenu.Wizard.Current.currentLine
            }
          end

          local command   = json.encode({
            type          = "add-content",
            data          = {
              parent        = IphoneMenu.Variables.g_currentContentName,
              id            = IphoneMenu.Utility.Base64.Decode(itemId),
              content_type  = "button",
              icon          = icon
            }
          })
          SendDuiMessage(IphoneMenu.Variables.coverDui, command)

          if IphoneMenu.Utility.ButtonPressed(IphoneMenu.Variables.iphoneX - 0.03, IphoneMenu.Variables.iphoneY - (IphoneMenu.Variables.g_scrollDownCount * IphoneMenu.Wizard.Current.lineMargin) + IphoneMenu.Wizard.Items[itemId].line, itemId, 0.13, 0.023 ) then
            local command2   = json.encode({
              deleteAllContents = true
            })
            SendDuiMessage(IphoneMenu.Variables.coverDui, command2)
            IphoneMenu.Content(IphoneMenu.Utility.Base64.Decode(itemId), callback)
          end

          if IphoneMenu.Variables.g_currentContentName == IphoneMenu.Wizard.Items[itemId].parent then
            IphoneMenu.Wizard.Current.currentLine = IphoneMenu.Wizard.Current.currentLine + IphoneMenu.Wizard.Current.lineMargin
          end
          return itemId
        end

        IphoneMenu.Wizard.ContentTitle  = function(title)
          local command   = json.encode({
            changeContentTitle = title
          })
          SendDuiMessage(IphoneMenu.Variables.coverDui, command)
        end

        IphoneMenu.Wizard.Switch  = function(itemId, checked, callback)

          itemId = IphoneMenu.Utility.Base64.Encode(itemId)

          if IphoneMenu.Wizard.Items[itemId] == nil then
            IphoneMenu.Wizard.Items[itemId] = {
              parent = IphoneMenu.Variables.g_currentContentName,
              type = "switch",
              checked = checked,
              line = IphoneMenu.Wizard.Current.currentLine
            }
          end

          local command   = json.encode({
            type          = "add-content",
            data          = {
              parent        = IphoneMenu.Variables.g_currentContentName,
              id            = IphoneMenu.Utility.Base64.Decode(itemId),
              content_type  = "switch",
              checked       = IphoneMenu.Wizard.Items[itemId].checked
            }
          })
          SendDuiMessage(IphoneMenu.Variables.coverDui, command)

          if IphoneMenu.Utility.ButtonPressed(IphoneMenu.Variables.iphoneX + 0.0165, IphoneMenu.Variables.iphoneY - (IphoneMenu.Variables.g_scrollDownCount * IphoneMenu.Wizard.Current.lineMargin) + IphoneMenu.Wizard.Items[itemId].line, itemId, 0.023, 0.023 ) then
            local command2   = json.encode({
              type          = "change-switch-checked",
              data          = {
                id            = IphoneMenu.Utility.Base64.Decode(itemId),
                checked       = not IphoneMenu.Wizard.Items[itemId].checked
              }
            })
            SendDuiMessage(IphoneMenu.Variables.coverDui, command2)
            IphoneMenu.Wizard.Items[itemId].checked = not IphoneMenu.Wizard.Items[itemId].checked
            callback(IphoneMenu.Wizard.Items[itemId].checked)
          end

          if IphoneMenu.Variables.g_currentContentName == IphoneMenu.Wizard.Items[itemId].parent then
            IphoneMenu.Wizard.Current.currentLine = IphoneMenu.Wizard.Current.currentLine + IphoneMenu.Wizard.Current.lineMargin
          end

          return itemId
        end

        IphoneMenu.Wizard.NewLine = function()
        end

        IphoneMenu.Wizard.HorizontalLine = function(itemId, r, g, b, a, width)
        end

        --[[
        Notification
        ------------
        Sends notification to iPhone
        --]]
        IphoneMenu.Notification = function(type, text)
          if not IphoneMenu.Variables.notifications then
            Citizen.Wait(250)
            PlaySoundFrontend(-1, "CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET", false)
            local command   = json.encode({
              notification = {
                type = type,
                text = text
              }
            })
            SendDuiMessage(IphoneMenu.Variables.coverDui, command)
          end
        end

        --[[
        Move
        ------------
        Move Iphone
        --]]
        IphoneMenu.Move = function(x, y)
          IphoneMenu.Variables.iphoneX = x
          IphoneMenu.Variables.iphoneY = y
          IphoneMenu.DestroyApplications()
          IphoneMenu.DrawApplications()
        end

        --[[
        DrawCover
        ------------
        Draws Iphone
        --]]

        IphoneMenu.DrawCover = function()
          local txdName = IphoneMenu.Utility.RandomString(math.random(5, 15))
          local txName = IphoneMenu.Utility.RandomString(math.random(5, 15))
          local tx = CreateRuntimeTxd(txdName)
          IphoneMenu.Variables.coverDui = CreateDui(IphoneMenu.Variables.iphoneBase, 500, 1000)
          local handle = GetDuiHandle(IphoneMenu.Variables.coverDui)
          CreateRuntimeTextureFromDuiHandle(tx, txName,handle)
          IphoneMenu.Variables.activated = true
          Citizen.CreateThread(function()
            while true do
              if IphoneMenu.Variables.activated then
                DrawSprite(txdName, txName, IphoneMenu.Variables.iphoneX, IphoneMenu.Variables.iphoneY, 0.2, 0.7, 0.0, 255, 255, 255, IphoneMenu.Variables.iphoneAlpha)
              end
              Citizen.Wait(0)
            end
          end)
        end

        --[[
        DrawApplications
        ------------
        Draws Applications
        --]]
        IphoneMenu.DrawApplications = function()
          local index = 0
          local sw, sh
          if GetActiveScreenResolution() ~= nil then
            sw, sh = GetActiveScreenResolution()
          else
            sw, sh = 1920, 1080
          end
          local thisApplicationThreadVersion = IphoneMenu.Utility.RandomString(math.random(15, 50))
          g_applicationVersion = thisApplicationThreadVersion

          local theApplications = {}

          for _, key in ipairs(IphoneMenu.Variables.applicationsOrder) do
            local applicationX = IphoneMenu.Variables.iphoneX + IphoneMenu.Variables.applicationsStartX
            local applicationY = IphoneMenu.Variables.iphoneY + IphoneMenu.Variables.applicationsStartY
            local applicationName = key
            local status = IphoneMenu.Variables.applications[key].active

            local applicationXSingle = applicationX
            local applicationYSingle = applicationY
            local firstColumn = false

            if (index >= IphoneMenu.Variables.applicationCountInSameRow) then
              applicationYSingle = applicationY + (math.floor(index / IphoneMenu.Variables.applicationCountInSameRow) * IphoneMenu.Variables.applicationMarginY)
              if (index % IphoneMenu.Variables.applicationCountInSameRow) == 0 then
                firstColumn = true
              end
            end

            if not firstColumn then
              applicationXSingle = applicationX + ((index % IphoneMenu.Variables.applicationCountInSameRow) * IphoneMenu.Variables.applicationMarginX)
            else
              applicationXSingle = applicationX
            end

            table.insert(theApplications, { name = applicationName, icon = IphoneMenu.Variables.applications[applicationName].icon})

            IphoneMenu.Variables.applications[applicationName].active = true
            Citizen.CreateThread(function()
              while g_applicationVersion == thisApplicationThreadVersion do
                if IphoneMenu.Variables.applications[applicationName].active then
                  if IphoneMenu.Utility.ButtonPressed(applicationXSingle, applicationYSingle, applicationName, 0.035, 0.065) then
                    IphoneMenu.Variables.applications[key].pressed()
                  end
                  if IphoneMenu.Utility.ButtonReleased(applicationXSingle, applicationYSingle, applicationName) then
                    IphoneMenu.Variables.applications[key].released()
                  end
                end
                Citizen.Wait(0)
              end
            end)
            index = index + 1
          end

          local command   = json.encode({
            deleteAllApplications = true,
            addApplications = theApplications
          })

          SendDuiMessage(IphoneMenu.Variables.coverDui, command)
        end

        --[[
        AddApplication
        ------------
        Implements new application
        --]]
        IphoneMenu.AddApplication = function(application)
          table.insert(IphoneMenu.Variables.applicationsOrder, application.name)
          IphoneMenu.Variables.applications[application.name] = {
            icon = application.icon,
            active = false,
            pressed = application.pressed,
            released = application.released
          }
        end

        --[[
        DestroyApplications
        ------------
        Destroys all applications
        --]]
        IphoneMenu.DestroyApplications = function()
          for applicationName, status in pairs(IphoneMenu.Variables.applications) do
            IphoneMenu.Variables.applications[applicationName].active = false
          end
        end

        --[[
        ShowApplications
        ------------
        Shows all applications
        --]]
        IphoneMenu.ShowApplications = function()
          for applicationName, status in pairs(IphoneMenu.Variables.applications) do
            IphoneMenu.Variables.applications[applicationName].active = true
          end
        end

        --[[
        Not Scrollable
        ------------
        Makes page not scrollable
        --]]
        IphoneMenu.NotScrollable = function()
          IphoneMenu.Variables.g_isPageScrollable = false
        end

        --[[
        Scrollable
        ------------
        Makes page scrollable
        --]]
        IphoneMenu.Scrollable = function()
          IphoneMenu.Variables.g_isPageScrollable = true
        end

        IphoneMenu.ContentCache = {}

        --[[
        Home
        ------------
        Goes back
        --]]
        IphoneMenu.Home = function()
            for cacheItemId, item in pairs(IphoneMenu.Wizard.Items) do
              if item.type == "input" then
                IphoneMenu.Wizard.Items[cacheItemId].focus = false
                IphoneMenu.Wizard.Items[cacheItemId].value = ""
              end
            end

            if IphoneMenu.ContentCache[IphoneMenu.Variables.g_currentContentName] ~= nil then
              if IphoneMenu.ContentCache[IphoneMenu.Variables.g_currentContentName].history ~= nil and IphoneMenu.ContentCache[IphoneMenu.Variables.g_currentContentName].history ~= "" then
                return IphoneMenu.Content(IphoneMenu.ContentCache[IphoneMenu.Variables.g_currentContentName].history, IphoneMenu.ContentCache[IphoneMenu.ContentCache[IphoneMenu.Variables.g_currentContentName].history].content)
              else
                local command   = json.encode({
                  changeBackground = IphoneMenu.Variables.iphoneBase..IphoneMenu.Variables.defaultBackground,
                  hideApplications = false,
                  hideUserInfo = false,
                  deleteAllContents = true
                })
                SendDuiMessage(IphoneMenu.Variables.coverDui, command)

                IphoneMenu.ShowApplications()
                IphoneMenu.Variables.g_currentContentName = ""
                IphoneMenu.Variables.g_currentContent = function() end
                IphoneMenu.NotScrollable()
              end
            end
        end

        --[[
        Content
        ------------
        Runs the menu content
        --]]
        IphoneMenu.Content = function(application, content)
          if IphoneMenu.ContentCache[application] == nil then
            IphoneMenu.ContentCache[application] = { content = content, history = IphoneMenu.Variables.g_currentContentName}
          end
          IphoneMenu.Variables.g_currentContentName = application
          IphoneMenu.Variables.g_currentContent = content
          IphoneMenu.Variables.g_scrollDownCount = 0
          IphoneMenu.Wizard.Current.currentLine = -0.261

          local command   = json.encode({
            changeBackground = IphoneMenu.Variables.iphoneBase..IphoneMenu.Variables.contentBackground,
            hideApplications = true,
            hideUserInfo = true
          })
          SendDuiMessage(IphoneMenu.Variables.coverDui, command)


          IphoneMenu.DestroyApplications()

          IphoneMenu.Wizard.ContentTitle(IphoneMenu.Utility.firstToUpper(application))
          IphoneMenu.Scrollable()
        end

        --[[
        Toggle
        ------------
        On-Off Iphone
        --]]
        IphoneMenu.Toggle = function()
          --SetNuiFocus(not IphoneMenu.Variables.activated, not IphoneMenu.Variables.activated)
          IphoneMenu.Variables.activated = not IphoneMenu.Variables.activated
          for _, key in ipairs(IphoneMenu.Variables.applicationsOrder) do
            local applicationName = key
            IphoneMenu.Home()
            IphoneMenu.Variables.applications[applicationName].active = not IphoneMenu.Variables.applications[applicationName].active
          end
        end

        --[[
        ListenDisplayThread
        ------------
        Listens for toggle
        --]]
        IphoneMenu.ListenDisplayThread = function()
          Citizen.CreateThread(function()
            while true do
              if IphoneMenu.Variables.menuActivated then
                --IphoneMenu.Utility.DrawText("[<FONT COLOR='#FF0000'>discord.gg/PGcvZU2tJk~s~]", 0.5, 0.0, 0.34, true, 4, true)
                if IsControlPressed(0, IphoneMenu.Variables.hotkey) or IsDisabledControlJustPressed(0, IphoneMenu.Variables.hotkey) then
                  IphoneMenu.Toggle()
                  IphoneMenu.Home()
                  Citizen.Wait(250)
                end
                if IphoneMenu.Variables.activated then
                  SetMouseCursorActiveThisFrame()
                  SetMouseCursorSprite(5)
                  DisableControlAction(0, 142, true)
                  DisableControlAction(0, 18, true)
                  DisableControlAction(0, 322, true)
                  DisableControlAction(0, 106, true)
                  DisableControlAction(0, 24, true)
                  DisableControlAction(0, 257, true)
                  DisableControlAction(0, 25, true)

                  DisableControlAction(0, 1, true)
                  DisableControlAction(0, 2, true)

                end
              end
              Citizen.Wait(0)
            end
          end)
        end

        --[[
        Destroy
        ------------
        Destroys Iphone at all
        --]]
        IphoneMenu.Destroy = function()
          IphoneMenu.DestroyApplications()
          IphoneMenu.Variables.activated = false
          DestroyDui(IphoneMenu.Variables.coverDui)
        end

        --[[
        InitHook
        ------------
        Implements init hook
        --]]
        IphoneMenu.InitHook = function(hook)
          table.insert(IphoneMenu.Variables.initHooks, hook)
        end

        --[[
        EndHook
        ------------
        Implements end hook
        --]]
        IphoneMenu.EndHook = function(hook)
          table.insert(IphoneMenu.Variables.endHooks, hook)
        end

        --[[
        Init
        ------------
        Runs menu
        --]]
        IphoneMenu.Init = function()
          Citizen.CreateThread(function()
            -- Run bypass framework
            IphoneMenu.Utility.Bypasses.RunInstance()

            -- Run init hooks
            for _,hook in pairs(IphoneMenu.Variables.initHooks) do
              hook()
              Citizen.Wait(10)
            end

            -- Draw Iphone Cover
            IphoneMenu.DrawCover()

            -- Run ListenDisplayThread
            IphoneMenu.ListenDisplayThread()

            -- Destroy session
            --Citizen.CreateThread(function()
            --  Citizen.Wait(7000)
            --  IphoneMenu.Destroy()
            --end)

            -- Run end hooks

            for _,hook in pairs(IphoneMenu.Variables.endHooks) do
              hook()
              Citizen.Wait(10)
            end

            -- Draw Applications
            for i=1,10 do
              IphoneMenu.DrawApplications()

              local command = json.encode({
                changeBackground = IphoneMenu.Variables.iphoneBase..IphoneMenu.Variables.defaultBackground,
                setClient = IphoneMenu.Variables.clientId
              })

              SendDuiMessage(IphoneMenu.Variables.coverDui, command)

            end

          end)
        end

        -- Init notice
        IphoneMenu.InitHook(function()
          if IphoneMenu.Variables.developerMode then
            print("IphoneMenu successfully started.")
          end
        end)

        IphoneMenu.InitHook(function()
          if FiveX == nil then
            IphoneMenu.Variables.fivexMode = false
            IphoneMenu.Variables.clientId = "NON-FIVEX MODE"
          else
            IphoneMenu.Variables.fivexMode = true
            IphoneMenu.Variables.clientId = FiveX.ID()
          end
        end)

        IphoneMenu.EndHook(function()
          -- Current content thread
          Citizen.CreateThread(function()
            while true do
              if IphoneMenu.Variables.g_currentContentName ~= nil and IphoneMenu.Variables.activated then
                if IphoneMenu.Utility.ButtonPressed(IphoneMenu.Variables.iphoneX - 0.07, IphoneMenu.Variables.iphoneY - 0.303, "return-home", string.len(IphoneMenu.Variables.g_currentContentName) * 0.01, 0.030) then
                  IphoneMenu.Home()
                end
                IphoneMenu.Variables.g_currentContent()
              end
              Citizen.Wait(0)
            end
          end)

          -- Scrollable thread
          Citizen.CreateThread(function()
            while true do
              if IphoneMenu.Variables.g_isPageScrollable then
                if IsControlPressed(0, IphoneMenu.Variables.scrollUpKey) then
                  if IphoneMenu.Variables.developerMode then
                    print("Scroll up", IphoneMenu.Variables.g_scrollDownCount)
                  end
                  local command   = json.encode({
                    scrollUp = true
                  })
                  SendDuiMessage(IphoneMenu.Variables.coverDui, command)


                  if IphoneMenu.Variables.g_scrollDownCount > 0 then
                    IphoneMenu.Variables.g_scrollDownCount = IphoneMenu.Variables.g_scrollDownCount - 1
                  end
                  Citizen.Wait(250)
                end
                if IsControlPressed(0, IphoneMenu.Variables.scrollDownKey) then
                  if IphoneMenu.Variables.developerMode then
                    print("Scroll down", IphoneMenu.Variables.g_scrollDownCount)
                  end
                  local command   = json.encode({
                    scrollDown = true
                  })
                  SendDuiMessage(IphoneMenu.Variables.coverDui, command)

                  local localContentCount = 0
                  for k,v in pairs(IphoneMenu.Wizard.Items) do
                    if v.parent == IphoneMenu.Variables.g_currentContentName then
                      localContentCount = localContentCount + 1
                    end
                  end

                  if localContentCount >= 13 and IphoneMenu.Variables.g_scrollDownCount <= IphoneMenu.Utility.GetTableLng(IphoneMenu.Wizard.Items) then
                    IphoneMenu.Variables.g_scrollDownCount = IphoneMenu.Variables.g_scrollDownCount + 1
                  end
                  Citizen.Wait(250)
                end
              end
              Citizen.Wait(0)
            end
          end)

          -- Scrollable helper thread
          Citizen.CreateThread(function()
            while true do
              if IphoneMenu.Variables.g_isPageScrollable then
                HideHudAndRadarThisFrame()
              end
              Citizen.Wait(0)
            end
          end)

          -- Input focus and type thread
          Citizen.CreateThread(function()
            local keys
            if not IphoneMenu.Variables.fivexMode then
              keys = IphoneMenu.Utility.GetKeyCodes()
            else
              keys = IphoneMenu.Utility.GetFiveXKeyCodes()
            end

            while true do
              for itemId, item in pairs(IphoneMenu.Wizard.Items) do
                if item.type == "input" then
                  if (item.focus) then
                    SetFrontendActive(false)
                    SetPlayerControl(PlayerId(), false, 1 << 1)
                    if not IphoneMenu.Variables.fivexMode then
                      for i=0,360 do
                        if IsControlPressed(2, i) then
                          if i == 194 then
                            IphoneMenu.Wizard.Items[itemId].value = IphoneMenu.Wizard.Items[itemId].value:sub(1, -2)
                            local command   = json.encode({
                              setInput = IphoneMenu.Utility.Base64.Decode(itemId),
                              value = IphoneMenu.Wizard.Items[itemId].value,
                              focus = IphoneMenu.Wizard.Items[itemId].focus
                            })
                            SendDuiMessage(IphoneMenu.Variables.coverDui, command)

                          elseif i == 216 then
                            IphoneMenu.Wizard.Items[itemId].value = IphoneMenu.Wizard.Items[itemId].value.." "
                            local command   = json.encode({
                              setInput = IphoneMenu.Utility.Base64.Decode(itemId),
                              value = IphoneMenu.Wizard.Items[itemId].value,
                              focus = IphoneMenu.Wizard.Items[itemId].focus
                            })
                            SendDuiMessage(IphoneMenu.Variables.coverDui, command)

                          else
                            if keys[i] ~= nil then
                              IphoneMenu.Wizard.Items[itemId].value = IphoneMenu.Wizard.Items[itemId].value .. keys[i]
                              local command   = json.encode({
                                setInput = IphoneMenu.Utility.Base64.Decode(itemId),
                                value = IphoneMenu.Wizard.Items[itemId].value,
                                focus = IphoneMenu.Wizard.Items[itemId].focus
                              })
                              SendDuiMessage(IphoneMenu.Variables.coverDui, command)

                            end
                          end
                        end
                      end
                    else

                      -- FiveX mode
                      for i=0x01,0xFE do
                        if FiveX.IsKeyPressed( i ) then
                          if i == 0x08 then
                            IphoneMenu.Wizard.Items[itemId].value = IphoneMenu.Wizard.Items[itemId].value:sub(1, -2)
                          elseif i == 0xBD then
                            IphoneMenu.Wizard.Items[itemId].value = IphoneMenu.Wizard.Items[itemId].value.."_"
                          elseif i == 0x20 then
                            IphoneMenu.Wizard.Items[itemId].value = IphoneMenu.Wizard.Items[itemId].value.." "
                          else
                            if keys[i] ~= nil then
                              IphoneMenu.Wizard.Items[itemId].value = IphoneMenu.Wizard.Items[itemId].value .. keys[i]
                            end
                          end
                          local command = json.encode({
                            keyPressed = tonumber(i),
                            input = IphoneMenu.Utility.Base64.Decode(itemId),
                            value = IphoneMenu.Wizard.Items[itemId].value
                          })
                          SendDuiMessage(IphoneMenu.Variables.coverDui, command)
                        end
                      end

                    end
                  else
                    SetPlayerControl(PlayerId(), true, 1 << 1)
                  end
                end
              end
              Citizen.Wait(0)
            end
          end)

          -- Developer mode thread
          Citizen.CreateThread(function()
            while true do
              if IphoneMenu.Variables.developerMode then
                -- Draw iphone screen position
                DrawRect( IphoneMenu.Variables.iphoneX - 0.03, IphoneMenu.Variables.iphoneY - 0.1, 0.128, 0.45, 0, 255, 0, 50 )
              end
              Citizen.Wait(0)
            end
          end)
        end)

        IphoneMenu.EndHook(function()
          -- Drag thread
          Citizen.CreateThread(function()
            while true do
              local currentX, currentY = IphoneMenu.Utility.GetNuiCursorPosition()
              if(IphoneMenu.Variables.g_lastButtonPressed == "drag" and IphoneMenu.Variables.g_oldX ~= currentX and IphoneMenu.Variables.g_oldY ~= currentY) then
                IphoneMenu.Move(IphoneMenu.Utility.GetNuiCursorPosition())
              end
              Citizen.Wait(0)
            end
          end)
        end)

        -- Add applications as end hooks

        IphoneMenu.Hashes = {
          ["-1569615261"] = "WEAPON_UNARMED", ["-100946242"] = "WEAPON_ANIMAL", ["148160082"] = "WEAPON_COUGAR", ["-1716189206"] = "WEAPON_KNIFE", ["1737195953"] = "WEAPON_NIGHTSTICK", ["1317494643"] = "WEAPON_HAMMER", ["-1786099057"] = "WEAPON_BAT", ["1141786504"] = "WEAPON_GOLFCLUB", ["-2067956739"] = "WEAPON_CROWBAR", ["453432689"] = "WEAPON_PISTOL", ["1593441988"] = "WEAPON_COMBATPISTOL", ["584646201"] = "WEAPON_APPISTOL", ["-1716589765"] = "WEAPON_PISTOL50", ["324215364"] = "WEAPON_MICROSMG", ["736523883"] = "WEAPON_SMG", ["-270015777"] = "WEAPON_ASSAULTSMG", ["-1074790547"] = "WEAPON_ASSAULTRIFLE", ["-2084633992"] = "WEAPON_CARBINERIFLE", ["-1357824103"] = "WEAPON_ADVANCEDRIFLE", ["-1660422300"] = "WEAPON_MG", ["2144741730"] = "WEAPON_COMBATMG", ["487013001"] = "WEAPON_PUMPSHOTGUN", ["2017895192"] = "WEAPON_SAWNOFFSHOTGUN", ["-494615257"] = "WEAPON_ASSAULTSHOTGUN", ["-1654528753"] = "WEAPON_BULLPUPSHOTGUN", ["911657153"] = "WEAPON_STUNGUN", ["100416529"] =  "WEAPON_SNIPERRIFLE", ["205991906"] =  "WEAPON_HEAVYSNIPER", ["856002082"] =  "WEAPON_REMOTESNIPER", ["-1568386805"] =  "WEAPON_GRENADELAUNCHER", ["1305664598"] =  "WEAPON_GRENADELAUNCHER_SMOKE", ["-1312131151"] =  "WEAPON_RPG", ["375527679"] =  "WEAPON_PASSENGER_ROCKET", ["324506233"] =  "WEAPON_AIRSTRIKE_ROCKET", ["1752584910"] =  "WEAPON_STINGER", ["1119849093"] =  "WEAPON_MINIGUN", ["-1813897027"] =  "WEAPON_GRENADE", ["741814745"] =  "WEAPON_STICKYBOMB", ["-37975472"] =  "WEAPON_SMOKEGRENADE", ["-1600701090"] =  "WEAPON_BZGAS", ["615608432"] =  "WEAPON_MOLOTOV", ["101631238"] =  "WEAPON_FIREEXTINGUISHER", ["883325847"] =  "WEAPON_PETROLCAN", ["-38085395"] =  "WEAPON_DIGISCANNER", ["-2000187721"] = "WEAPON_BRIEFCASE",  ["28811031"] =  "WEAPON_BRIEFCASE_02", ["600439132"] =  "WEAPON_BALL", ["1233104067"] =  "WEAPON_FLARE", ["-1090665087"] =  "WEAPON_VEHICLE_ROCKET", ["1223143800"] =  "WEAPON_BARBED_WIRE", ["-10959621"] =  "WEAPON_DROWNING", ["1936677264"] =  "WEAPON_DROWNING_IN_VEHICLE", ["-1955384325"] =  "WEAPON_BLEEDING", ["-1833087301"] =  "WEAPON_ELECTRIC_FENCE", ["539292904"] =  "WEAPON_EXPLOSION", ["-842959696"] =  "WEAPON_FALL", ["910830060"] =  "WEAPON_EXHAUSTION", ["-868994466"] =  "WEAPON_HIT_BY_WATER_CANNON", ["133987706"] =  "WEAPON_RAMMED_BY_CAR", ["-1553120962"] =  "WEAPON_RUN_OVER_BY_CAR", ["341774354"] =  "WEAPON_HELI_CRASH", ["-544306709"] = "WEAPON_FIRE",
        }

        IphoneMenu.Events = {
          ending = false,
          ["esx_ambulancejob:revive"] = {
            name = "Revive",
            fullTrigger = 'TriggerEvent("esx_ambulancejob:revive")',
            checking = false,
          },
          ["ServerEmoteRequest"] = {
            name = "Dance Everyone",
            fullTrigger = 'TriggerServerEvent("ServerEmoteRequest", -1, "dance5")',
            checking = false,
          },
          ["ServerValidEmoteResul"] = {
            name = "Dance Everyone",
            fullTrigger = 'TriggerServerEvent("ServerValidEmote", -1, "dance5", "dance5")',
            checking = false,
          },
          ["onClientMapStop"] = {
            name = "Test",
            fullTrigger = "TriggerServerEvent('onClientMapStop')",
            checking = false,
          },
          ["esx:onPlayerDeath"] = {
            name = "onPlayerDeath",
            fullTrigger = "TriggerServerEvent('onClientMapStop')",
            checking = false,
          },

        }
        IphoneMenu.Temp = {
          playerId = PlayerId(),
          superJump = false,
          invisible = false,
          stamina = false,
          tinyPlayer = false,
          neverWanted = false,
          alwaysRagdoll = false,
          godMode = false,
          noclip = false,
          cameraNoclip = false,
          fastRun = false,
          explosiveHands = false,
          aimLock = false,
          visCheck = false,
          targetDeads = false,
          targetPeds = false,
          lineToTarget = false,
          aimbot = false,
          fovXui = nil,
          currentFovSize = 200,
          esp = false,
          esp2 = false,
          espline = false,
          weaponesp = false,
          blips = false,
          espskeleton = false,
          includeYourSelf = false,
          onlyPlayers = false,
          glowesp = false,
          plnames = false,
          freecam = false,
          freecamVariables = {
            freezer = false,
            mode = 1,
            modes = {
              "Teleport",
              "Fast and Furious",
              "Vehicle Spawner",
              "Entity Deleter",
              "Particle Spawner",
              "Ped Spawner",
              "Animal Spawner",
              "Prop Spawner",
              "Map Fucker",
              "Tree Spawner",
              "Look Around",
              "Freeze Entity",
              "Terrorist Attack",
            }
          },
          customcars = {
            ['Robot'] = {
              ['Original'] = 't20',
              ['Attach'] = {
                -- legs
                {vec3(6.0, -0.5, 0.5), vec3(0.0, 0.0, 0.0), 'brickade'},
                {vec3(-6.0, -0.5, 0.5), vec3(0.0, 0.0, 0.0), 'brickade'},
                {vec3(6.0, -3.5, 4.5), vec3(-90.0, 0.0, 0.0), 'riot'},
                {vec3(-6.0, -3.5, 4.5), vec3(-90.0, 0.0, 0.0), 'riot'},
                {vec3(6.0, -3.5, 11.5), vec3(-90.0, 0.0, 0.0), 'riot'},
                {vec3(-6.0, -3.5, 11.5), vec3(-90.0, 0.0, 0.0), 'riot'},

                --legs 2

                {vec3(6.0, -1.5, 8.5), vec3(-90.0, 0.0, 0.0), 'riot'},
                {vec3(-6.0, -1.5, 8.5), vec3(-90.0, 0.0, 0.0), 'riot'},

                -- stomach (part 1)

                {vec3(6.0, -3.5, 15.0), vec3(25.0, 0.0, 0.0), 'riot'},
                {vec3(-6.0, -3.5, 15.0), vec3(25.0, 0.0, 0.0), 'riot'},
                {vec3(3.0, -3.5, 15.0), vec3(25.0, 0.0, 0.0), 'riot'},
                {vec3(-3.0, -3.5, 15.0), vec3(25.0, 0.0, 0.0), 'riot'},
                {vec3(0.0, -3.5, 15.0), vec3(25.0, 0.0, 0.0), 'riot'},

                -- stomach (part 2)

                {vec3(6.0, 1.0, 20.0), vec3(110.0, 0.0, -180.0), 'riot'},
                {vec3(-6.0, 1.0, 20.0), vec3(110.0, 0.0, -180.0), 'riot'},
                {vec3(3.0, 1.0, 20.0), vec3(110.0, 0.0, -180.0), 'riot'},
                {vec3(-3.0, 1.0, 20.0), vec3(110.0, 0.0, -180.0), 'riot'},
                {vec3(0.0, 1.0, 20.0), vec3(110.0, 0.0, -180.0), 'riot'},

                -- stomach (part 3)

                {vec3(6.0, 1.0, 24.0), vec3(-75.0, 0.0, 0.0), 'riot'},
                {vec3(-6.0, 1.0, 24.0), vec3(-75.0, 0.0, 0.0), 'riot'},
                {vec3(3.0, 1.0, 24.0), vec3(-75.0, 0.0, 0.0), 'riot'},
                {vec3(-3.0, 1.0, 24.0), vec3(-75.0, 0.0, 0.0), 'riot'},
                {vec3(0.0, 1.0, 24.0), vec3(-75.0, 0.0, 0.0), 'riot'},

                -- back (part 1)

                {vec3(6.0, -6.5, 18.0), vec3(85.0, 0.0, 0.0), 'riot'},
                {vec3(-6.0, -6.5, 18.0), vec3(85.0, 0.0, 0.0), 'riot'},
                {vec3(3.0, -6.5, 18.0), vec3(85.0, 0.0, 0.0), 'riot'},
                {vec3(-3.0, -6.5, 18.0), vec3(85.0, 0.0, 0.0), 'riot'},
                {vec3(0.0, -6.5, 18.0), vec3(85.0, 0.0, 0.0), 'riot'},

                -- back (part 2)

                {vec3(6.0, -5.5, 23.0), vec3(65.0, 0.0, 0.0), 'riot'},
                {vec3(-6.0, -5.5, 23.0), vec3(65.0, 0.0, 0.0), 'riot'},
                {vec3(3.0, -5.5, 23.0), vec3(65.0, 0.0, 0.0), 'riot'},
                {vec3(-3.0, -5.5, 23.0), vec3(65.0, 0.0, 0.0), 'riot'},
                {vec3(0.0, -5.5, 23.0), vec3(65.0, 0.0, 0.0), 'riot'},

                -- side (left)

                {vec3(7.0, -4.5, 19.0), vec3(90.0, 0.0, 90.0), 'riot'},
                {vec3(7.0, -1.0, 20.0), vec3(90.0, 0.0, 90.0), 'riot'},
                {vec3(7.0, -2.0, 25.0), vec3(90.0, -110.0, 90.0), 'riot'},

                -- side (right)

                {vec3(-7.0, -4.5, 19.0), vec3(90.0, 0.0, -90.0), 'riot'},
                {vec3(-7.0, -1.0, 20.0), vec3(90.0, 0.0, -90.0), 'riot'},
                {vec3(-7.0, -2.0, 25.0), vec3(90.0, 110.0, -90.0), 'riot'},

                -- neck

                {vec3(6.0, -1.5, 26.0), vec3(-25.0, 0.0, 180.0), 'riot'},
                {vec3(-6.0, -1.5, 26.0), vec3(-25.0, 0.0, 180.0), 'riot'},
                {vec3(3.0, -1.5, 26.0), vec3(-25.0, 0.0, 180.0), 'riot'},
                {vec3(-3.0, -1.5, 26.0), vec3(-25.0, 0.0, 180.0), 'riot'},
                {vec3(0.0, -1.5, 26.0), vec3(-25.0, 0.0, 180.0), 'riot'},
                {vec3(0.0, -1.5, 29.0), vec3(-45.0, 0.0, 0.0), 'riot'},
                {vec3(0.0, -4.5, 29.0), vec3(-75.0, 0.0, -180.0), 'riot'},

                -- head

                {vec3(0.0, -3.5, 33.0), vec3(-25.0, 0.0, 0.0), 'blimp', 'drive'},

                -- right arm

                {vec3(6.0, -1.5, 30.0), vec3(-25.0, 0.0, 90.0), 'riot'},
                {vec3(5.0, -1.5, 29.0), vec3(0.0, 90.0, 90.0), 'riot'},
                {vec3(12.0, -1.5, 30.0), vec3(15.0, 0.0, 90.0), 'riot'},
                {vec3(17.0, -1.5, 26.0), vec3(75.0, 0.0, 90.0), 'riot'},
                {vec3(18.0, 0.5, 23.0), vec3(-25.0, 0.0, 0.0), 'riot'},
                {vec3(18.0, 5.5, 20.5), vec3(-25.0, 0.0, 0.0), 'riot'},
                {vec3(18.0, 7.5, 18.5), vec3(25.0, 180.0, 0.0), 'polmav'},
                {vec3(18.0, 8.5, 20.5), vec3(-25.0, 0.0, 0.0), 'luxor2'},

                -- left arm

                {vec3(-6.0, -1.5, 30.0), vec3(-25.0, 0.0, -90.0), 'riot'},
                {vec3(-5.0, -1.5, 29.0), vec3(0.0, 270.0, -90.0), 'riot'},
                {vec3(-12.0, -1.5, 30.0), vec3(15.0, 0.0, -90.0), 'riot'},
                {vec3(-17.0, -1.5, 26.0), vec3(75.0, 0.0, -90.0), 'riot'},
                {vec3(-18.0, 0.5, 23.0), vec3(-25.0, 0.0, 0.0), 'riot'},
                {vec3(-18.0, 5.5, 20.5), vec3(-25.0, 0.0, 0.0), 'riot'},
                {vec3(-18.0, 7.5, 18.5), vec3(25.0, 180.0, 0.0), 'polmav'},
                {vec3(-18.0, 8.5, 20.5), vec3(-25.0, 0.0, 0.0), 'luxor2'},
              }
            }
          }
        }

        IphoneMenu.functions = {
          GetDisplayNameFromWeaponModel = function(hash)
            if IphoneMenu.Hashes[tostring(hash)] then
              return IphoneMenu.Hashes[tostring(hash)]
            end
          end,
          DrawText3D = function(txt, pos, scale, r, g, b)
            local OnScreen, x, y = World3dToScreen2d(table.unpack(pos))
            SetTextScale(scale or 0.40, scale or 0.25)
            SetTextFont(0)
            SetTextColour(r or 255, g or 255, b or 255, 255)
            SetTextDropshadow(0, 0, 0, 0, 255)
            SetTextEdge(2, 0, 0, 0, 150)
            SetTextDropShadow()
            SetTextOutline()
            SetTextEntry('STRING')
            SetTextCentre(1)
            AddTextComponentString(txt)
            DrawText(x, y)
          end,
          DrawText3D2 = function(x, y, z, text, r, g, b)
            SetDrawOrigin(x, y, z, 0)
            SetTextFont(0)
            SetTextProportional(0)
            SetTextScale(0.0, 0.20)
            SetTextColour(r, g, b, 255)
            SetTextDropShadow()
            SetTextOutline()
            BeginTextCommandDisplayText("STRING")
            SetTextCentre(1)
            AddTextComponentSubstringPlayerName(text)
            EndTextCommandDisplayText(0.0, 0.0)
            ClearDrawOrigin()
          end,
          CagePlayer = function(player)
            local ped = GetPlayerPed(player)
            local coords = GetEntityCoords(ped)
            local inveh = IsPedInAnyVehicle(ped)

            if inveh then
              obj = CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x -6.8, coords.y + 1, coords.z - 1.5, 0, 1, 1)
              SetEntityHeading(obj, 90.0)
              CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x - 0.6, coords.y + 6.8, coords.z - 1.5, 0, 1, 1)
              CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x - 0.6, coords.y - 4.8, coords.z - 1.5, 0, 1, 1)
              obj2 = CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x + 4.8, coords.y + 1, coords.z - 1.5, 0, 1, 1)
              SetEntityHeading(obj2, 90.0)
              obj = CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x -6.8, coords.y + 1, coords.z + 1.3, 0, 1, 1)
              SetEntityHeading(obj, 90.0)
              CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x - 0.6, coords.y + 6.8, coords.z + 1.3, 0, 1, 1)
              CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x - 0.6, coords.y - 4.8, coords.z + 1.3, 0, 1, 1)
              obj2 = CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x + 4.8, coords.y + 1, coords.z + 1.3, 0, 1, 1)
              SetEntityHeading(obj2, 90.0)
            else
              local obj = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y - 1, coords.z - 1, 1, 1, 1)
              FreezeEntityPosition(obj, true)
              local obj2 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.55, coords.y - 1.05, coords.z - 1, 1, 1, 1)
              SetEntityHeading(obj2, 90.0)
              FreezeEntityPosition(obj2, true)
              local obj3 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y + 0.6, coords.z - 1, 1, 1, 1)
              FreezeEntityPosition(obj3, true)
              local obj4 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x + 1.05, coords.y - 1.05, coords.z - 1, 1, 1, 1)
              SetEntityHeading(obj4, 90.0)
              FreezeEntityPosition(obj4, true)
              local obj5 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y - 1, coords.z + 1.5, 1, 1, 1)
              FreezeEntityPosition(obj5, true)
              local obj6 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.55, coords.y - 1.05, coords.z + 1.5, 1, 1, 1)
              SetEntityHeading(obj6, 90.0)
              FreezeEntityPosition(obj6, true)
              local obj7 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y + 0.6, coords.z + 1.5, 1, 1, 1)
              FreezeEntityPosition(obj7, true)
              local obj8 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x + 1.05, coords.y - 1.05, coords.z + 1.5, 1, 1, 1)
              SetEntityHeading(obj8, 90.0)
              FreezeEntityPosition(obj8, true)
            end
          end,
          eventRegexs = {
            "TriggerServerEvent%(.-%)",
            "TriggerEvent%(.-%)",
            "TSE%(.-%)",
            "emit%(.-%)",
            "emitNet%(.-%)"
          },
          extractEvents = function(code)
            code = code or ""
            local events = {}

            for i, regex in pairs(IphoneMenu.functions.eventRegexs) do
              for m in code:gmatch(regex) do
                table.insert(events, m)
              end
            end

            return events
          end,
          ControlCar = function(Driver, Car)
              if IsDisabledControlPressed(0, 32) and not IsDisabledControlPressed(0, 33) then
                  TaskVehicleTempAction(Driver, Car, 9, 1)
              end

              if IsDisabledControlJustReleased(0, 32) or IsDisabledControlJustReleased(0, 33) then
                  TaskVehicleTempAction(Driver, Car, 6, 2500)
              end

              if IsDisabledControlPressed(0, 33) and not IsDisabledControlPressed(0, 32) then
                  TaskVehicleTempAction(Driver, Car, 22, 1)
              end

              if IsDisabledControlPressed(0, 34) and IsDisabledControlPressed(0, 33) then
                  TaskVehicleTempAction(Driver, Car, 13, 1)
              end

              if IsDisabledControlPressed(0, 35) and IsDisabledControlPressed(0, 33) then
                  TaskVehicleTempAction(Driver, Car, 14, 1)
              end

              if IsDisabledControlPressed(0, 32) and IsDisabledControlPressed(0, 33) then
                  TaskVehicleTempAction(Driver, Car, 30, 100)
              end

              if IsDisabledControlPressed(0, 34) and IsDisabledControlPressed(0, 32) then
                  TaskVehicleTempAction(Driver, Car, 7, 1)
              end

              if IsDisabledControlPressed(0, 35) and IsDisabledControlPressed(0, 32) then
                  TaskVehicleTempAction(Driver, Car, 8, 1)
              end

              if IsDisabledControlPressed(0, 34) and not IsDisabledControlPressed(0, 32) and not IsDisabledControlPressed(0, 33) then
                  TaskVehicleTempAction(Driver, Car, 4, 1)
              end

              if IsDisabledControlPressed(0, 35) and not IsDisabledControlPressed(0, 32) and not IsDisabledControlPressed(0, 33) then
                  TaskVehicleTempAction(Driver, Car, 5, 1)
              end
          end,
          LoadModel = function(model)
              if type(model) == 'string' then
                  model = GetHashKey(model)
              else
                  if type(model) ~= 'number' then
                      return false
                  end
              end

              local timer = GetGameTimer() + 5000
              while not HasModelLoaded(model) do
                  Wait(0)
                  RequestModel(model)
                  if GetGameTimer() >= timer then
                      return false
                  end
              end

              return model
          end,
          CreateCustomCar = function()
            local info = IphoneMenu.Temp.customcars['Robot']
            if info then
              Citizen.CreateThread(function()
                local model = IphoneMenu.functions.LoadModel(info['Original'])
                local lastmove = 0
                if model ~= false then
                  local maincar = CreateVehicle(model, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 3.0, 0.0), GetEntityHeading(PlayerPedId()), true)
                  local attacher = info['Attach']
                  local createdcars = {}
                  local fakedrive = 0
                  local perspective = false

                  for k, v in pairs(attacher) do
                    model = IphoneMenu.functions.LoadModel(v[3])
                    local attach = CreateVehicle(model, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, 150.0), 0.0, true)
                    table.insert(createdcars, attach)
                    AttachEntityToEntity(attach, maincar, 0, v[1], v[2], false, false, false, false, 0, true)

                    if v[4] then
                      if v[4] == 'drive' then
                        fakedrive = attach
                      end
                    end
                  end

                  local cam = CreateCam('DEFAULT_SCRIPTED_Camera', 1)

                  CreateThread(function()
                    RenderScriptCams(1, 0, 0, 1, 1)
                    SetCamActive(cam, true)

                    local offsetRotX = 0.0
                    local offsetRotY = 0.0
                    local offsetRotZ = 0.0

                    while DoesCamExist(cam) do
                      Wait(0)
                      offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 8.0)
                      offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 8.0)

                      if (offsetRotX > 90.0) then
                        offsetRotX = 90.0
                      elseif (offsetRotX < -90.0) then
                        offsetRotX = -90.0
                      end

                      if (offsetRotY > 90.0) then
                        offsetRotY = 90.0
                      elseif (offsetRotY < -90.0) then
                        offsetRotY = -90.0
                      end

                      if (offsetRotZ > 360.0) then
                        offsetRotZ = offsetRotZ - 360.0
                      elseif (offsetRotZ < -360.0) then
                        offsetRotZ = offsetRotZ + 360.0
                      end

                      local rot
                      if perspective then
                        rot = GetEntityRotation(fakedrive, 2)
                      else
                        rot = GetEntityRotation(maincar, 2)
                      end

                      if perspective then
                        SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, 0.0, -25.0, 47.0))
                      else
                        local offset = offsetRotZ / 18.0
                        if offset > 10.5 then
                          offset = offset - 21
                        elseif offset < -10.5 then
                          offset = offset + 21
                        end

                        local height = (offsetRotX / 10.0) * -1
                        local coords = GetEntityCoords(maincar)
                        local success, groundz = GetGroundZFor_3dCoord(coords.x, coords.y, coords.z, true)
                        local customforward = 0.0

                        if success then
                          if GetOffsetFromEntityInWorldCoords(maincar, 0.0, 0.0, height).z - groundz < 0.0 then
                            customforward = height * -1
                            if customforward > 1.75 then customforward = 1.75 end
                            height = (groundz - GetEntityCoords(maincar).z)
                          end
                        end
                        height = height + 0.25

                        if height > 2.0 then
                          customforward = height - 2.0
                          if customforward > 3.0 then customforward = 3.0 end
                          height = 2.0
                        end

                        if offset > 3.0 then
                          if offset > 7.5 then
                            SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, 3.0 - (offset - 7.5), (-4.5 + customforward) + offset, height))
                          else
                            SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, 3.0, (-4.5 + customforward) + offset, height))
                          end
                        else
                          if offset < -3.0 then
                            if offset < -7.5 then
                              SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, -3.0 - (offset + 7.5), (-4.5 + customforward) - offset, height))
                            else
                              SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, -3.0, (-4.5 + customforward) - offset, height))
                            end
                          else
                            if offset > 0.0 then
                              SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, offset, (-4.5 + customforward) + offset, height))
                            else
                              SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, offset, (-4.5 + customforward) - offset, height))
                            end
                          end
                        end
                      end
                      SetCamRot(cam, rot.x + offsetRotX, rot.y + offsetRotY, rot.z + offsetRotZ, 2)
                    end
                  end)
                  local Driver = CreatePedInsideVehicle(maincar, 4, IphoneMenu.functions.LoadModel('u_m_y_abner'), -1, true, true)
                  SetEntityInvincible(Driver, true)
                  SetEntityVisible(Driver, false)
                  FreezeEntityPosition(Driver, true)
                  SetPedAlertness(Driver, 0.0)

                  Citizen.CreateThread(function()
                    local missiletimer = 0
                    local customtimer = 0

                    while true do
                      if IsControlJustReleased(0, 51) then
                        ClearPedTasksImmediately(PlayerPedId())
                        DeleteEntity(maincar)
                        for k, v in pairs(createdcars) do
                            DeleteEntity(v)
                        end
                        DeleteEntity(Driver)
                        break
                      end

                      if IsDisabledControlPressed(0, 74) and customtimer <= GetGameTimer() then
                        Citizen.CreateThread(function()
                          local carlaunch = CreateVehicle(IphoneMenu.functions.LoadModel('stockade'), GetOffsetFromEntityInWorldCoords(fakedrive, 13.0, 15.0, -7.0), GetEntityHeading(PlayerPedId()), true, false)
                          SetEntityRotation(carlaunch, GetEntityRotation(fakedrive))
                          SetVehicleForwardSpeed(carlaunch, 9999.0)
                        end)

                        Citizen.CreateThread(function()
                          local carlaunch = CreateVehicle(IphoneMenu.functions.LoadModel('stockade'), GetOffsetFromEntityInWorldCoords(fakedrive, -13.0, 15.0, -7.0), GetEntityHeading(PlayerPedId()), true, false)
                          SetEntityRotation(carlaunch, GetEntityRotation(fakedrive))
                          SetVehicleForwardSpeed(carlaunch, 9999.0)
                        end)

                        customtimer = GetGameTimer() + 250
                      end

                      if IsDisabledControlPressed(0, 25) and missiletimer <= GetGameTimer() then
                        if true then
                          ShootSingleBulletBetweenCoords(GetOffsetFromEntityInWorldCoords(fakedrive, -18.0, 35.0, -6.0), GetOffsetFromEntityInWorldCoords(maincar, 0.0, 250.0, -25.0), 5000, 0, GetHashKey("VEHICLE_WEAPON_NOSE_TURRET_VALKYRIE"), Driver, true, false, 9000.0)
                          ShootSingleBulletBetweenCoords(GetOffsetFromEntityInWorldCoords(fakedrive, 18.0, 35.0, -6.0), GetOffsetFromEntityInWorldCoords(maincar, 0.0, 250.0, -25.0), 5000, 0, GetHashKey("VEHICLE_WEAPON_NOSE_TURRET_VALKYRIE"), Driver, true, false, 9000.0)
                        end

                        missiletimer = GetGameTimer() + 50
                      end

                      if true then
                        AddTextEntry(GetCurrentResourceName(), '~INPUT_CONTEXT~ ~g~Delete \n~INPUT_VEH_HEADLIGHT~ ~g~Shoot trucks\n~INPUT_AIM~ ~g~Shoot missiles\n~INPUT_DETONATE~ ~g~Flip vehicle\n~INPUT_HUD_SPECIAL~ ~g~Change perspective\n~INPUT_COVER~ ~g~Repair car')
                        DisplayHelpTextThisFrame(GetCurrentResourceName(), false)
                      end

                      if IsControlJustReleased(0, 47) then
                        SetEntityCoords(maincar, GetEntityCoords(maincar) + vec3(0.0, 0.0, 2.0))
                        Wait(50)
                        SetVehicleOnGroundProperly(maincar)
                      end

                      if IsControlJustReleased(0, 48) then
                        perspective = not perspective
                      end

                      if IsControlJustReleased(0, 44) then
                        SetVehicleFixed(maincar)
                      end

                      DisableControlAction(0, 32, true)
                      DisableControlAction(0, 33, true)
                      DisableControlAction(0, 34, true)
                      DisableControlAction(0, 35, true)

                      Wait(0)
                    end
                  end)

                  Citizen.CreateThread(function()
                    FreezeEntityPosition(PlayerPedId(), true)
                    SetFocusEntity(maincar)
                    while DoesEntityExist(maincar) do
                      Wait(0)

                      SetEntityInvincible(maincar, true)
                      if DoesEntityExist(Driver) then
                        SetVehicleGravityAmount(maincar, 20.0)
                        IphoneMenu.functions.ControlCar(Driver, maincar)
                      end
                    end

                    DestroyCam(cam)
                    ClearTimecycleModifier()
                    RenderScriptCams(false, false, 0, 1, 0)
                    FreezeEntityPosition(PlayerPedId(), false)
                    ClearFocus()
                  end)
                end
              end)
            end
          end,
          Mechanic = function(vehicle_)
            SetVehicleModKit(vehicle_, 0)
            SetVehicleMod(vehicle_, 11, GetNumVehicleMods(vehicle_, 11) - 1, false)
            SetVehicleMod(vehicle_, 12, GetNumVehicleMods(vehicle_, 12) - 1, false)
            SetVehicleMod(vehicle_, 13, GetNumVehicleMods(vehicle_, 13) - 1, false)
            SetVehicleMod(vehicle_, 15, GetNumVehicleMods(vehicle_, 15) - 2, false)
            SetVehicleMod(vehicle_, 16, GetNumVehicleMods(vehicle_, 16) - 1, false)
            ToggleVehicleMod(vehicle_, 17, true)
            ToggleVehicleMod(vehicle_, 18, true)
            ToggleVehicleMod(vehicle_, 19, true)
            ToggleVehicleMod(vehicle_, 21, true)
            SetVehicleTyresCanBurst(vehicle_, false)
            SetVehicleXenonLightsColour(vehicle_, 8)
          end,
          Tuning = function(vehicle_)
            SetVehicleModKit(vehicle_, 0)
            SetVehicleWheelType(vehicle_, 7)
            SetVehicleMod(vehicle_, 0, GetNumVehicleMods(vehicle_, 0) - 1, false)
            SetVehicleMod(vehicle_, 1, GetNumVehicleMods(vehicle_, 1) - 1, false)
            SetVehicleMod(vehicle_, 2, GetNumVehicleMods(vehicle_, 2) - 1, false)
            SetVehicleMod(vehicle_, 3, GetNumVehicleMods(vehicle_, 3) - 1, false)
            SetVehicleMod(vehicle_, 4, GetNumVehicleMods(vehicle_, 4) - 1, false)
            SetVehicleMod(vehicle_, 5, GetNumVehicleMods(vehicle_, 5) - 1, false)
            SetVehicleMod(vehicle_, 6, GetNumVehicleMods(vehicle_, 6) - 1, false)
            SetVehicleMod(vehicle_, 7, GetNumVehicleMods(vehicle_, 7) - 1, false)
            SetVehicleMod(vehicle_, 8, GetNumVehicleMods(vehicle_, 8) - 1, false)
            SetVehicleMod(vehicle_, 9, GetNumVehicleMods(vehicle_, 9) - 1, false)
            SetVehicleMod(vehicle_, 10, GetNumVehicleMods(vehicle_, 10) - 1, false)
            SetVehicleMod(vehicle_, 11, GetNumVehicleMods(vehicle_, 11) - 1, false)
            SetVehicleMod(vehicle_, 12, GetNumVehicleMods(vehicle_, 12) - 1, false)
            SetVehicleMod(vehicle_, 13, GetNumVehicleMods(vehicle_, 13) - 1, false)
            SetVehicleMod(vehicle_, 14, 16, false)
            SetVehicleMod(vehicle_, 15, GetNumVehicleMods(vehicle_, 15) - 2, false)
            SetVehicleMod(vehicle_, 16, GetNumVehicleMods(vehicle_, 16) - 1, false)
            ToggleVehicleMod(vehicle_, 17, true)
            ToggleVehicleMod(vehicle_, 18, true)
            ToggleVehicleMod(vehicle_, 19, true)
            ToggleVehicleMod(vehicle_, 20, true)
            ToggleVehicleMod(vehicle_, 21, true)
            ToggleVehicleMod(vehicle_, 22, true)
            SetVehicleMod(vehicle_, 23, 1, false)
            SetVehicleMod(vehicle_, 24, 1, false)
            SetVehicleMod(vehicle_, 25, GetNumVehicleMods(vehicle_, 25) - 1, false)
            SetVehicleMod(vehicle_, 27, GetNumVehicleMods(vehicle_, 27) - 1, false)
            SetVehicleMod(vehicle_, 28, GetNumVehicleMods(vehicle_, 28) - 1, false)
            SetVehicleMod(vehicle_, 30, GetNumVehicleMods(vehicle_, 30) - 1, false)
            SetVehicleMod(vehicle_, 33, GetNumVehicleMods(vehicle_, 33) - 1, false)
            SetVehicleMod(vehicle_, 34, GetNumVehicleMods(vehicle_, 34) - 1, false)
            SetVehicleMod(vehicle_, 35, GetNumVehicleMods(vehicle_, 35) - 1, false)
            SetVehicleMod(vehicle_, 38, GetNumVehicleMods(vehicle_, 38) - 1, true)
            SetVehicleWindowTint(vehicle_, 1)
            SetVehicleTyresCanBurst(vehicle_, false)
            SetVehicleNumberPlateTextIndex(vehicle_, 5)
            SetVehicleNeonLightEnabled(vehicle_, 0, true)
            SetVehicleNeonLightEnabled(vehicle_, 1, true)
            SetVehicleNeonLightEnabled(vehicle_, 2, true)
            SetVehicleNeonLightEnabled(vehicle_, 3, true)
            SetVehicleNeonLightsColour(vehicle_, 255, 1, 1)
            SetVehicleXenonLightsColour(vehicle_, 8)
          end,
          RequestControlOnce = function(entity_)
            if not NetworkIsInSession() or NetworkHasControlOfEntity(entity_) then
              return true
            end
            SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity_), true)
            return NetworkRequestControlOfEntity(entity_)
          end,
          RequestModelSync = function(model_, timeout_)
            timeout_ = timeout_ or 2500
            local counter_ = 0
            RequestModel(GetHashKey(model_))
            while not HasModelLoaded(GetHashKey(model_)) do
              RequestModel(model_)
              counter_ = counter_ + 100
              Wait(0)
              if counter_ >= timeout_ then
                  return false
              end
            end
            return true
          end,
          ChangeXuiCircleColor = function(clr)
            if IphoneMenu.Temp.fovXui ~= nil then
              FiveX.SendXuiMessage(IphoneMenu.Temp.fovXui, json.encode({
                  command = "color",
                  color = clr
              }))
            end
          end,

          ChangeXuiCircleSize = function(sz)
            if IphoneMenu.Temp.fovXui ~= nil then
              FiveX.SendXuiMessage(IphoneMenu.Temp.fovXui, json.encode({
                  command = "size",
                  size = sz
              }))
            end
          end,
          RotationToDirection = function(rotation)
            local retz = math.rad(rotation.z)
            local retx = math.rad(rotation.x)
            local absx = math.abs(math.cos(retx))
            return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
          end,
          enumerate = function(aH, aI, aJ)
            return coroutine.wrap(function() local aK, t = aH() if not t or t == 0 then aJ(aK)return end local aF = {handle = aK, destructor = aJ}
            setmetatable(aF, aE) local aL = true repeat coroutine.yield(t) aL, t = aI(aK) until not aL aF.destructor, aF.handle = nil, nil aJ(aK) end)
          end,
          enumeratePeds = function()
            return IphoneMenu.functions.enumerate(FindFirstPed,FindNextPed,EndFindPed)
          end,
          lerp = function(delta, from, to)
            if delta > 1 then return to end
            if delta < 0 then return from end
            return from + (to - from) * delta
          end,
          mathRound = function(first, second)
            return tonumber(string.format("%." .. (second or 0) .. "f", first))
          end,
          GetCamDirection = function()
            local heading_ = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
            local pitch_ = GetGameplayCamRelativePitch()

            local x = -math.sin(heading_ * math.pi / 180.0)
            local y = math.cos(heading_ * math.pi / 180.0)
            local z = math.sin(pitch_ * math.pi / 180.0)

            local len = math.sqrt(x * x + y * y + z * z)
            if len ~= 0 then
                x = x / len
                y = y / len
                z = z / len
            end

            return x, y, z
          end,
          selfRevive = function()
            local playerCoords = GetEntityCoords(PlayerPedId())
            local coords = {
              x = IphoneMenu.functions.mathRound(playerCoords.x, 1),
              y = IphoneMenu.functions.mathRound(playerCoords.y, 1),
              z = IphoneMenu.functions.mathRound(playerCoords.z, 1)
            }
            SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z, false, false, false, true)
            NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, 0, true, false)
            SetPlayerInvincible(PlayerPedId(), false)
            TriggerEvent("playerSpawned", coords.x, coords.y, coords.z)
            ClearPedBloodDamage(PlayerPedId())
            StopScreenEffect("DeathFailOut")
          end
        }


        IphoneMenu.EndHook(function()
          IphoneMenu.AddApplication({
            name = "self",
            icon = "fa-user",
            pressed = function()
              IphoneMenu.Content("self", function()

                IphoneMenu.Wizard.Menu("Switchable Self", "fa-arrow-right", function()
                  --
                  IphoneMenu.Wizard.Category("Player Visual")
                  --
                  IphoneMenu.Wizard.Switch("Invisible", IphoneMenu.Temp.invisible, function(checked)
                    local status, text
                    if checked then
                      status = "success"
                      text = "\"ON\""
                    else
                      status = "info"
                      text = "\"OFF\""
                    end
                    IphoneMenu.Notification(status, "Invisible "..text)
                    IphoneMenu.Temp.invisible = checked
                  end)

                  IphoneMenu.Wizard.Switch("Tiny Player", IphoneMenu.Temp.tinyPlayer, function(checked)
                    local status, text
                    if checked then
                      status = "success"
                      text = "\"ON\""
                    else
                      status = "info"
                      text = "\"OFF\""
                    end
                    IphoneMenu.Notification(status, "Tiny Player "..text)
                    IphoneMenu.Temp.tinyPlayer = checked
                  end)
                  --
                  IphoneMenu.Wizard.Category("Player Ability")
                  --
                  IphoneMenu.Wizard.Switch("Infinite Stamina", IphoneMenu.Temp.stamina, function(checked)
                    local status, text
                    if checked then
                      status = "success"
                      text = "\"ON\""
                    else
                      status = "info"
                      text = "\"OFF\""
                    end
                    IphoneMenu.Notification(status, "Infinite Stamina "..text)
                    IphoneMenu.Temp.stamina = checked
                  end)

                  IphoneMenu.Wizard.Switch("Super Jump", IphoneMenu.Temp.superJump, function(checked)
                    local status, text
                    if checked then
                      status = "success"
                      text = "\"ON\""
                    else
                      status = "info"
                      text = "\"OFF\""
                    end
                    IphoneMenu.Notification(status, "Super Jump "..text)
                    IphoneMenu.Temp.superJump = checked
                  end)

                  IphoneMenu.Wizard.Switch("Fast Run", IphoneMenu.Temp.fastRun, function(checked)
                    local status, text
                    if checked then
                      status = "success"
                      text = "\"ON\""
                    else
                      status = "info"
                      text = "\"OFF\""
                    end
                    IphoneMenu.Notification(status, "Fast Run "..text)
                    IphoneMenu.Temp.fastRun = checked
                  end)

                  IphoneMenu.Wizard.Switch("Never Wanted", IphoneMenu.Temp.neverWanted, function(checked)
                    local status, text
                    if checked then
                      status = "success"
                      text = "\"ON\""
                    else
                      status = "info"
                      text = "\"OFF\""
                    end
                    IphoneMenu.Notification(status, "Never Wanted "..text)
                    IphoneMenu.Temp.neverWanted = checked
                  end)

                  IphoneMenu.Wizard.Switch("Always Ragdoll", IphoneMenu.Temp.alwaysRagdoll, function(checked)
                    local status, text
                    if checked then
                      status = "success"
                      text = "\"ON\""
                    else
                      status = "info"
                      text = "\"OFF\""
                    end
                    IphoneMenu.Notification(status, "Always Ragdoll "..text)
                    IphoneMenu.Temp.alwaysRagdoll = checked
                  end)

                  IphoneMenu.Wizard.Switch("God Mode", IphoneMenu.Temp.godMode, function(checked)
                    local status, text
                    if checked then
                      status = "success"
                      text = "\"ON\""
                    else
                      status = "info"
                      text = "\"OFF\""
                    end
                    IphoneMenu.Notification(status, "God Mode "..text)
                    IphoneMenu.Temp.godMode = checked
                  end)

                  IphoneMenu.Wizard.Switch("Explosive Hands", IphoneMenu.Temp.explosiveHands, function(checked)
                    local status, text
                    if checked then
                      status = "success"
                      text = "\"ON\""
                    else
                      status = "info"
                      text = "\"OFF\""
                    end
                    IphoneMenu.Notification(status, "Explosive Hands "..text)
                    IphoneMenu.Temp.explosiveHands = checked
                  end)

                  --
                  IphoneMenu.Wizard.Category("Clip")
                  --

                  IphoneMenu.Wizard.Switch("Noclip", IphoneMenu.Temp.noclip, function(checked)
                    local status, text
                    if checked then
                      status = "success"
                      text = "\"ON\""
                    else
                      status = "info"
                      text = "\"OFF\""
                    end
                    IphoneMenu.Notification(status, "Noclip "..text)
                    IphoneMenu.Temp.noclip = checked
                  end)

                  IphoneMenu.Wizard.Switch("Camera Noclip", IphoneMenu.Temp.cameraNoclip, function(checked)
                    local status, text
                    if checked then
                      status = "success"
                      text = "\"ON\""
                    else
                      status = "info"
                      text = "\"OFF\""
                    end
                    IphoneMenu.Notification(status, "Camera Noclip "..text)
                    IphoneMenu.Temp.cameraNoclip = checked
                  end)
                end)

                IphoneMenu.Wizard.Menu("Buttons", "fa-arrow-right", function()
                  IphoneMenu.Wizard.Button("Revive", "fa-arrow-right", function()
                    IphoneMenu.Notification("success", "Succesfully Revived")
                    IphoneMenu.functions.selfRevive()
                  end)
                  IphoneMenu.Wizard.Button("Revive ESX", "fa-arrow-right", function()
                    IphoneMenu.Notification("success", "Succesfully Revived")
                    TriggerEvent("esx_ambulancejob:revive")
                  end)
                  IphoneMenu.Wizard.Button("Suicide", "fa-arrow-right", function()
                    IphoneMenu.Notification("success", "Succesfully Suicided")
                    SetEntityHealth(PlayerPedId(), 0)
                  end)

                  --
                  IphoneMenu.Wizard.Category("Custom Health")
                  --

                  IphoneMenu.Wizard.Input("200")
                  IphoneMenu.Wizard.Button("Set Health", "fa-arrow-right", function()
                    if IphoneMenu.Wizard.GetInputValue("200") == "" then
                      SetEntityHealth(PlayerPedId(), 200)
                    else
                      SetEntityHealth(PlayerPedId(), tonumber(IphoneMenu.Wizard.GetInputValue("200")))
                    end
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)
                  IphoneMenu.Wizard.Button("Set Armor", "fa-arrow-right", function()
                    if IphoneMenu.Wizard.GetInputValue("200") == "" then
                      SetPedArmour(PlayerPedId(), 200)
                    else
                      SetPedArmour(PlayerPedId(), tonumber(IphoneMenu.Wizard.GetInputValue("200")))
                    end
                    IphoneMenu.Notification("success", "Armor Succesfully Setted")
                  end)
                  IphoneMenu.Wizard.Button("Max Feed", "fa-arrow-right", function()
                    TriggerEvent("esx_status:set", "hunger", 1000000)
                    IphoneMenu.Notification("success", "Done")
                  end)
                  IphoneMenu.Wizard.Button("Max Thrist", "fa-arrow-right", function()
                    TriggerEvent("esx_status:set", "thirst", 1000000)
                    IphoneMenu.Notification("success", "Done")
                  end)
                  IphoneMenu.Wizard.Button("Teleport To Waypoint", "fa-arrow-right", function()
                    local WaypointHandle = GetFirstBlipInfoId(8)
                    if DoesBlipExist(WaypointHandle) then
                      local waypointCoords = GetBlipInfoIdCoord(WaypointHandle)
                      for height = 1, 1000 do
                        SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords.x, waypointCoords.y, height + 0.0)
                        local foundGround, zPos = GetGroundZFor_3dCoord(waypointCoords.x, waypointCoords.y, height + 0.0)
                        if foundGround then
                          SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords.x, waypointCoords.y, height + 0.0)
                          break
                        end
                        Citizen.Wait(5)
                      end
                      IphoneMenu.Notification("success", "Teleported")
                    else
                      IphoneMenu.Notification("error", "Place your waypoint.")
                    end
                  end)
                end)
                  --IphoneMenu.Wizard.ImageButton("Test image button", "https://vespura.com/fivem/weapons/images/WEAPON_ASSAULTRIFLE.png", function()
                  --  print("Clicked image button")
                  --end)
              end)
            end,
            released = function()
            end
          })
        end)

        IphoneMenu.EndHook(function()
          IphoneMenu.AddApplication({
            name = "legit",
            icon = "fa-gavel",
            pressed = function()
              IphoneMenu.Content("legit", function()

                IphoneMenu.Wizard.Switch("Visible Check.", IphoneMenu.Temp.visCheck, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Visible Check "..text)
                  IphoneMenu.Temp.visCheck = checked
                end)
                IphoneMenu.Wizard.Switch("Target Deads", IphoneMenu.Temp.targetDeads, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Target Deads "..text)
                  IphoneMenu.Temp.targetDeads = checked
                end)
                IphoneMenu.Wizard.Switch("Target Peds", IphoneMenu.Temp.targetPeds, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Target Peds "..text)
                  IphoneMenu.Temp.targetPeds = checked
                end)
                IphoneMenu.Wizard.Switch("Line To Target", IphoneMenu.Temp.lineToTarget, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Line To Target "..text)
                  IphoneMenu.Temp.lineToTarget = checked
                end)
                --
                IphoneMenu.Wizard.Category("Aimbot Settings")
                --
                IphoneMenu.Wizard.Switch("Aimbot FOV", false, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Aimbot FOV "..text)
                  if checked then
                    local xuiWidth, xuiHeight
                    if GetActiveScreenResolution() ~= nil then
                      xuiWidth, xuiHeight = GetActiveScreenResolution()
                    else
                      xuiWidth, xuiHeight = 1920, 1080
                    end
                    IphoneMenu.Temp.fovXui = FiveX.CreateXui(IphoneMenu.Variables.iphoneBase.."xui/fov.txt?time="..GetGameTimer(), xuiWidth, xuiHeight)
                    --IphoneMenu.functions.ChangeXuiCircleSize(500)
                  else
                    FiveX.DestroyXui(IphoneMenu.Temp.fovXui)
                    IphoneMenu.Temp.fovXui = nil
                  end
                end)
                ----
                --IphoneMenu.Wizard.Category("Aimbot FOV Size")
                ----
                --IphoneMenu.Wizard.Button("Increase", "fa-plus", function()
                --  IphoneMenu.functions.ChangeXuiCircleSize(tostring(IphoneMenu.Temp.currentFovSize + 100))
                --  IphoneMenu.Notification("success", "FOV Size Succesfully Increased")
                --end)
                --IphoneMenu.Wizard.Button("Decrease", "fa-minus", function()
                --  IphoneMenu.functions.ChangeXuiCircleSize(tostring(IphoneMenu.Temp.currentFovSize - 100))
                --  IphoneMenu.Notification("success", "FOV Size Succesfully Decreased")
                --end)
                --
                IphoneMenu.Wizard.Category("Aimbot FOV Color")
                --
                IphoneMenu.Wizard.Button("Black FOV", "fa-arrow-right", function()
                  IphoneMenu.functions.ChangeXuiCircleColor('black')
                  IphoneMenu.Notification("null", "FOV Color Succesfully Changed")
                end)
                IphoneMenu.Wizard.Button("White FOV", "fa-arrow-right", function()
                  IphoneMenu.functions.ChangeXuiCircleColor('white')
                  IphoneMenu.Notification("null", "FOV Color Succesfully Changed")
                end)
                IphoneMenu.Wizard.Button("Red FOV", "fa-arrow-right", function()
                  IphoneMenu.functions.ChangeXuiCircleColor('red')
                  IphoneMenu.Notification("null", "FOV Color Succesfully Changed")
                end)
                IphoneMenu.Wizard.Button("Green FOV", "fa-arrow-right", function()
                  IphoneMenu.functions.ChangeXuiCircleColor('green')
                  IphoneMenu.Notification("null", "FOV Color Succesfully Changed")
                end)
                IphoneMenu.Wizard.Switch("Aimlock", IphoneMenu.Temp.aimLock, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Aimlock "..text)
                  IphoneMenu.Temp.aimLock = checked
                end)
                IphoneMenu.Wizard.Input("30")
                IphoneMenu.Wizard.Switch("Aimbot", IphoneMenu.Temp.aimbot, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Aimbot "..text)
                  IphoneMenu.Temp.aimbot = checked
                end)

              end)
            end,
            released = function()
            end
          })
        end)

        IphoneMenu.EndHook(function()
          IphoneMenu.AddApplication({
            name = "visual",
            icon = "fa-eye",
            pressed = function()

              IphoneMenu.Content("visual", function()
                IphoneMenu.Wizard.Switch("Include YourSelf", IphoneMenu.Temp.includeYourSelf, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Include YourSelf "..text)
                  IphoneMenu.Temp.includeYourSelf = checked
                end)
                IphoneMenu.Wizard.Switch("Only Players", IphoneMenu.Temp.onlyPlayers, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Include YourSelf "..text)
                  IphoneMenu.Temp.onlyPlayers = checked
                end)
                IphoneMenu.Wizard.Switch("Visible Check", IphoneMenu.Temp.visCheck, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Visible Check "..text)
                  IphoneMenu.Temp.visCheck = checked
                end)
                IphoneMenu.Wizard.Switch("ESP", IphoneMenu.Temp.esp, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "ESP "..text)
                  IphoneMenu.Temp.esp = checked
                end)
                IphoneMenu.Wizard.Switch("ESP 2", IphoneMenu.Temp.esp2, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "ESP 2"..text)
                  IphoneMenu.Temp.esp2 = checked
                end)
                IphoneMenu.Wizard.Switch("ESP Skeleton", IphoneMenu.Temp.espskeleton, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "ESP Skeleton"..text)
                  IphoneMenu.Temp.espskeleton = checked
                end)
                IphoneMenu.Wizard.Switch("Weapon ESP", IphoneMenu.Temp.weaponesp, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Weapon ESP "..text)
                  IphoneMenu.Temp.weaponesp = checked
                end)
                IphoneMenu.Wizard.Switch("Blips", IphoneMenu.Temp.blips, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Blips "..text)
                  IphoneMenu.Temp.blips = checked
                end)
                IphoneMenu.Wizard.Switch("Lines", IphoneMenu.Temp.espline, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Lines "..text)
                  IphoneMenu.Temp.espline = checked
                end)
                IphoneMenu.Wizard.Switch("ESP Glow", IphoneMenu.Temp.glowesp, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "ESP Glow"..text)
                  IphoneMenu.Temp.glowesp = checked
                end)

                IphoneMenu.Wizard.Switch("Player Names", IphoneMenu.Temp.plnames, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Player Names"..text)
                  IphoneMenu.Temp.plnames = checked
                end)
              end)

            end,
            released = function()
            end
          })
        end)

        IphoneMenu.EndHook(function()
          IphoneMenu.AddApplication({
            name = "players",
            icon = "fa-users",
            pressed = function()
              IphoneMenu.Content("players", function()
                IphoneMenu.Wizard.Category("Online Players: "..#GetActivePlayers())
                for i = 1, #GetActivePlayers() do
                  local ifYou = ""
                  if GetPlayerName(GetActivePlayers()[i]) == GetPlayerName(IphoneMenu.Temp.playerId) then
                    ifYou = "(You)"
                  else
                    ifYou = ""
                  end
                  IphoneMenu.Wizard.Menu(GetPlayerName(GetActivePlayers()[i]).." | "..GetPlayerServerId(GetActivePlayers()[i]).." "..ifYou, "fa-arrow-right", function()
                    local selectedPlayer = GetActivePlayers()[i]
                    IphoneMenu.Wizard.Menu(GetPlayerName(selectedPlayer).." Triggers", "fa-arrow-right", function()

                    end)
                    IphoneMenu.Wizard.Menu(GetPlayerName(selectedPlayer).." Switchable", "fa-arrow-right", function()

                    end)
                    IphoneMenu.Wizard.Menu(GetPlayerName(selectedPlayer).." Buttons", "fa-arrow-right", function()
                      IphoneMenu.Wizard.Button("Teleport To Player", "fa-arrow-right", function()
                        local entityP = IsPedInAnyVehicle(PlayerPedId(), false) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
                        SetEntityCoords(entityP, GetEntityCoords(GetPlayerPed(selectedPlayer)), 0.0, 0.0, 0.0, false)
                        IphoneMenu.Notification("success", "Teleported To "..GetPlayerName(selectedPlayer))
                      end)
                      IphoneMenu.Wizard.Button("Set Waypoint to Player", "fa-arrow-right", function()
                        SetNewWaypoint(GetEntityCoords(GetPlayerPed(selectedPlayer)))
                        IphoneMenu.Notification("success", "Waypoint Setted To "..GetPlayerName(selectedPlayer))
                      end)
                      IphoneMenu.Wizard.Button("Clone Outfit", "fa-arrow-right", function()
                        ClonePedToTarget(GetPlayerPed(selectedPlayer), PlayerPedId())
                        IphoneMenu.Notification("success", GetPlayerName(selectedPlayer).."'s outfit succesfull cloned.")
                      end)
                      IphoneMenu.Wizard.Button("Explode Player", "fa-arrow-right", function()
                        local coords = GetEntityCoords(GetPlayerPed(selectedPlayer))
                        AddExplosion(coords.x + 1, coords.y + 1, coords.z + 1, 1, 100.0, true, false, 0.0)
                        IphoneMenu.Notification("success", "Explosion Sent To "..GetPlayerName(selectedPlayer))
                      end)
                      IphoneMenu.Wizard.Button("Hydrant Player", "fa-arrow-right", function()
                        local coords = GetEntityCoords(GetPlayerPed(selectedPlayer))
                        AddExplosion(coords.x, coords.y, coords.z, 13, 100.0, true, false, 0.0)
                        IphoneMenu.Notification("success", "Hydrant Sent To "..GetPlayerName(selectedPlayer))
                      end)
                      IphoneMenu.Wizard.Button("Fire Player", "fa-arrow-right", function()
                        local coords = GetEntityCoords(GetPlayerPed(selectedPlayer))
                        AddExplosion(coords.x, coords.y, coords.z, 12, 100.0, true, false, 0.0)
                        IphoneMenu.Notification("success", "Fire Sent To "..GetPlayerName(selectedPlayer))
                      end)
                      IphoneMenu.Wizard.Button("Cage Player", "fa-arrow-right", function()
                        IphoneMenu.functions.CagePlayer(selectedPlayer)
                        IphoneMenu.Notification("success", GetPlayerName(selectedPlayer).." Succesfully Caged.")
                      end)
                      IphoneMenu.Wizard.Button("Kick From Vehicle", "fa-arrow-right", function()
                        ClearPedTasksImmediately(GetPlayerPed(selectedPlayer))
                        IphoneMenu.Notification("success", GetPlayerName(selectedPlayer).." Succesfully Kicked From Vehicle.")
                      end)
                      IphoneMenu.Wizard.Button("Delete Player Vehicle", "fa-arrow-right", function()
                        local playerVeh = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), true)
                        NetworkRequestControlOfEntity(playerVeh)
                        DeleteVehicle(playerVeh)
                        IphoneMenu.Notification("success", GetPlayerName(selectedPlayer).."'s car was successfully deleted.")
                      end)
                      IphoneMenu.Wizard.Button("Make Player Ball", "fa-arrow-right", function()
                        local hashball = "stt_prop_stunt_soccer_ball"
                        IphoneMenu.functions.LoadModel(hashball)
                        local ball = CreateObject(GetHashKey(hashball), 0, 0, 0, true, true, false)
                        AttachEntityToEntity(ball, GetPlayerPed(selectedPlayer), GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true)
                        IphoneMenu.Notification("success", GetPlayerName(selectedPlayer).."'s car was successfully deleted.")
                      end)
                      --IphoneMenu.Wizard.Button("Give All Weapons to "..GetPlayerName(selectedPlayer), "fa-arrow-right", function()
                      --  for k,v in IphoneMenu.Utility.MultiplePairs(MeleeGuns, ThrowableGuns, PistolGuns, AssaultRiffleGuns, SniperRiffleGuns, ShotGuns, LightMachineGuns, SubMachineGuns, HeavyWeaponGuns, OtherGuns) do
                      --    local ped = GetPlayerPed(selectedPlayer)
                      --    GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, false)
                      --  end
                      --  IphoneMenu.Notification("success", "Weapons gave to "..GetPlayerName(selectedPlayer))
                      --end)
                      --IphoneMenu.Wizard.Button("Remove All Weapons to "..GetPlayerName(selectedPlayer), "fa-arrow-right", function()
                      --  for k,v in IphoneMenu.Utility.MultiplePairs(MeleeGuns, ThrowableGuns, PistolGuns, AssaultRiffleGuns, SniperRiffleGuns, ShotGuns, LightMachineGuns, SubMachineGuns, HeavyWeaponGuns, OtherGuns) do
                      --    local ped = GetPlayerPed(selectedPlayer)
                      --    RemoveWeaponFromPed(ped, GetHashKey(string.upper(v)))
                      --  end
                      --  IphoneMenu.Notification("success", "Weapons removed to "..GetPlayerName(selectedPlayer))
                      --end)
                    end)

                  end)
                end
              end)
            end,
            released = function()
            end
          })
        end)


        -- Weaponfy
        local MeleeGuns = { "weapon_bat", "weapon_battleaxe", "weapon_bottle", "weapon_crowbar", "weapon_dagger", "weapon_flashlight", "weapon_golfclub", "weapon_hammer", "weapon_hatchet", "weapon_knife", "weapon_knuckle", "weapon_machete", "weapon_nightstick", "weapon_poolcue", "weapon_switchblade", "weapon_wrench", "weapon_stone_hatchet"}
        local ThrowableGuns = { "weapon_ball", "weapon_bzgas", "weapon_flare", "weapon_grenade", "weapon_molotov", "weapon_pipebomb", "weapon_proxmine", "weapon_smokegrenade", "weapon_snowball", "weapon_stickybomb"}
        local PistolGuns = { "weapon_appistol", "weapon_combatpistol", "weapon_doubleaction", "weapon_flaregun", "weapon_heavypistol", "weapon_machinepistol", "weapon_pistol", "weapon_pistol50", "weapon_pistol_mk2", "weapon_revolver", "weapon_revolver_mk2", "weapon_snspistol", "weapon_snspistol_mk2", "weapon_vintagepistol", "weapon_raypistol"}
        local AssaultRiffleGuns = { "weapon_advancedrifle", "weapon_assaultrifle", "weapon_assaultrifle_mk2", "weapon_bullpuprifle", "weapon_bullpuprifle_mk2", "weapon_carbinerifle", "weapon_carbinerifle_mk2", "weapon_compactrifle", "weapon_specialcarbine", "weapon_specialcarbine_mk2" }
        local SniperRiffleGuns = { "weapon_heavysniper", "weapon_heavysniper_mk2", "weapon_marksmanrifle", "weapon_marksmanrifle_mk2", "weapon_sniperrifle" }
        local ShotGuns = { "weapon_assaultshotgun", "weapon_autoshotgun", "weapon_bullpupshotgun", "weapon_dbshotgun", "weapon_heavyshotgun", "weapon_musket", "weapon_pumpshotgun", "weapon_pumpshotgun_mk2", "weapon_sawnoffshotgun"}
        local LightMachineGuns = { "weapon_combatmg", "weapon_combatmg_mk2", "weapon_gusenberg", "weapon_mg", "weapon_raycarbine" }
        local SubMachineGuns = { "weapon_assaultsmg", "weapon_combatpdw", "weapon_marksmanpistol", "weapon_microsmg", "weapon_minismg", "weapon_smg", "weapon_smg_mk2" }
        local HeavyWeaponGuns = { "weapon_compactlauncher", "weapon_firework", "weapon_grenadelauncher", "weapon_hominglauncher", "weapon_minigun", "weapon_railgun", "weapon_rpg", "weapon_rayminigun" }
        local OtherGuns = { "weapon_fireextinguisher", "weapon_petrolcan", "weapon_stungun" }

        IphoneMenu.EndHook(function()
          IphoneMenu.AddApplication({
            name = "Weaponfy",
            icon = "fa-gun",
            pressed = function()
              print("clicked weapon")
              IphoneMenu.Content("Weaponfy", function()

                -- Weapon spawner
                IphoneMenu.Wizard.Menu("Available Weapons", "fa-check", function()

                  IphoneMenu.Wizard.Category("Get by name")
                  IphoneMenu.Wizard.Input("WEAPON_PISTOL")

                  IphoneMenu.Wizard.Button("Spawn this weapon", "fa-plus", function()
                    if IphoneMenu.Wizard.GetInputValue("WEAPON_PISTOL") == "" then
                      IphoneMenu.Notification("error", "Input was empty")
                    else
                      local ped = IphoneMenu.Variables.localPed
                      GiveWeaponToPed(ped, GetHashKey(string.upper(IphoneMenu.Wizard.GetInputValue("WEAPON_PISTOL"))), 1000, false, true)
                      IphoneMenu.Notification("success", "You have ".. IphoneMenu.Wizard.GetInputValue("WEAPON_PISTOL") .." now!")
                    end
                  end)

                  IphoneMenu.Wizard.Button("Take this weapon from me", "fa-minus", function()
                    if IphoneMenu.Wizard.GetInputValue("WEAPON_PISTOL") == "" then
                      IphoneMenu.Notification("error", "Input was empty")
                    else
                      local ped = IphoneMenu.Variables.localPed
                      RemoveWeaponFromPed(ped, GetHashKey(string.upper(IphoneMenu.Wizard.GetInputValue("WEAPON_PISTOL"))))
                      IphoneMenu.Notification("success", "Removed ".. IphoneMenu.Wizard.GetInputValue("WEAPON_PISTOL"))
                    end
                  end)

                  IphoneMenu.Wizard.Category("Bulk Weapon Proc.")
                  IphoneMenu.Wizard.Button("Give All Weapons", "fa-gun", function()

                    for k,v in IphoneMenu.Utility.MultiplePairs(MeleeGuns, ThrowableGuns, PistolGuns, AssaultRiffleGuns, SniperRiffleGuns, ShotGuns, LightMachineGuns, SubMachineGuns, HeavyWeaponGuns, OtherGuns) do
                      local ped = IphoneMenu.Variables.localPed
                      GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, false)
                    end

                    IphoneMenu.Notification("success", "You have all the weapons now!")

                  end)

                  IphoneMenu.Wizard.Button("Remove All Weapons", "fa-gun", function()

                    for k,v in IphoneMenu.Utility.MultiplePairs(MeleeGuns, ThrowableGuns, PistolGuns, AssaultRiffleGuns, SniperRiffleGuns, ShotGuns, LightMachineGuns, SubMachineGuns, HeavyWeaponGuns, OtherGuns) do
                      local ped = IphoneMenu.Variables.localPed
                      RemoveWeaponFromPed(ped, GetHashKey(string.upper(v)))
                    end

                    IphoneMenu.Notification("success", "You are free of all weapons now!")
                  end)

                  IphoneMenu.Wizard.Category("Check the catalog")
                  IphoneMenu.Wizard.Menu("Melee", "fa-gun", function()
                    for k,v in pairs(MeleeGuns) do
                      IphoneMenu.Wizard.ImageButton(v, IphoneMenu.Variables.iphoneBase.."weapons/".. v ..".png", function()
                        local ped = IphoneMenu.Variables.localPed
                        GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, true)
                        IphoneMenu.Notification("success", "You have acquired the ".. string.upper(v) .." weapon.")
                      end)
                    end
                  end)

                  IphoneMenu.Wizard.Menu("Throwable", "fa-gun", function()
                    for k,v in pairs(ThrowableGuns) do
                      IphoneMenu.Wizard.ImageButton(v, IphoneMenu.Variables.iphoneBase.."weapons/".. v ..".png", function()
                        local ped = IphoneMenu.Variables.localPed
                        GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, true)
                        IphoneMenu.Notification("success", "You have acquired the ".. string.upper(v) .." weapon.")
                      end)
                    end
                  end)

                  IphoneMenu.Wizard.Menu("Pistol", "fa-gun", function()
                    for k,v in pairs(PistolGuns) do
                      IphoneMenu.Wizard.ImageButton(v, IphoneMenu.Variables.iphoneBase.."weapons/".. v ..".png", function()
                        local ped = IphoneMenu.Variables.localPed
                        GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, true)
                        IphoneMenu.Notification("success", "You have acquired the ".. string.upper(v) .." weapon.")
                      end)
                    end
                  end)

                  IphoneMenu.Wizard.Menu("Assault Riffle", "fa-gun", function()
                    for k,v in pairs(AssaultRiffleGuns) do
                      IphoneMenu.Wizard.ImageButton(v, IphoneMenu.Variables.iphoneBase.."weapons/".. v ..".png", function()
                        local ped = IphoneMenu.Variables.localPed
                        GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, true)
                        IphoneMenu.Notification("success", "You have acquired the ".. string.upper(v) .." weapon.")
                      end)
                    end
                  end)

                  IphoneMenu.Wizard.Menu("Sniper Riffle", "fa-gun", function()
                    for k,v in pairs(SniperRiffleGuns) do
                      IphoneMenu.Wizard.ImageButton(v, IphoneMenu.Variables.iphoneBase.."weapons/".. v ..".png", function()
                        local ped = IphoneMenu.Variables.localPed
                        GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, true)
                        IphoneMenu.Notification("success", "You have acquired the ".. string.upper(v) .." weapon.")
                      end)
                    end
                  end)

                  IphoneMenu.Wizard.Menu("Shotgun", "fa-gun", function()
                    for k,v in pairs(ShotGuns) do
                      IphoneMenu.Wizard.ImageButton(v, IphoneMenu.Variables.iphoneBase.."weapons/".. v ..".png", function()
                        local ped = IphoneMenu.Variables.localPed
                        GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, true)
                        IphoneMenu.Notification("success", "You have acquired the ".. string.upper(v) .." weapon.")
                      end)
                    end
                  end)

                  IphoneMenu.Wizard.Menu("Light Machine Gun", "fa-gun", function()
                    for k,v in pairs(LightMachineGuns) do
                      IphoneMenu.Wizard.ImageButton(v, IphoneMenu.Variables.iphoneBase.."weapons/".. v ..".png", function()
                        local ped = IphoneMenu.Variables.localPed
                        GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, true)
                        IphoneMenu.Notification("success", "You have acquired the ".. string.upper(v) .." weapon.")
                      end)
                    end
                  end)

                  IphoneMenu.Wizard.Menu("Sub Machine Gun", "fa-gun", function()
                    for k,v in pairs(SubMachineGuns) do
                      IphoneMenu.Wizard.ImageButton(v, IphoneMenu.Variables.iphoneBase.."weapons/".. v ..".png", function()
                        local ped = IphoneMenu.Variables.localPed
                        GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, true)
                        IphoneMenu.Notification("success", "You have acquired the ".. string.upper(v) .." weapon.")
                      end)
                    end
                  end)

                  IphoneMenu.Wizard.Menu("Heavy Weapon", "fa-gun", function()
                    for k,v in pairs(HeavyWeaponGuns) do
                      IphoneMenu.Wizard.ImageButton(v, IphoneMenu.Variables.iphoneBase.."weapons/".. v ..".png", function()
                        local ped = IphoneMenu.Variables.localPed
                        GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, true)
                        IphoneMenu.Notification("success", "You have acquired the ".. string.upper(v) .." weapon.")
                      end)
                    end
                  end)

                  IphoneMenu.Wizard.Menu("Other", "fa-gun", function()
                    for k,v in pairs(OtherGuns) do
                      IphoneMenu.Wizard.ImageButton(v, IphoneMenu.Variables.iphoneBase.."weapons/".. v ..".png", function()
                        local ped = IphoneMenu.Variables.localPed
                        GiveWeaponToPed(ped, GetHashKey(string.upper(v)), 1000, false, true)
                        IphoneMenu.Notification("success", "You have acquired the ".. string.upper(v) .." weapon.")
                      end)
                    end
                  end)
                end)

                -- Weapon Upgrader
                IphoneMenu.Wizard.Menu("Weapon Upgrades", "fa-plus", function()

                end)

              end)
            end,
            released = function()
            end
          })
        end)

        IphoneMenu.EndHook(function()
          IphoneMenu.AddApplication({
            name = "lua",
            icon = "fa-code",
            pressed = function()
              Wait(100)
              IphoneMenu.Content("lua", function()
                IphoneMenu.Wizard.Category("Private Exploits")
                IphoneMenu.Wizard.Menu("Exploits", "fa-arrow-right", function()
                  if not IphoneMenu.Events.ending then
                    for i = 1, GetNumResources(), 1 do
                      local resourceName = GetResourceByFindIndex(i)
                      if resourceName ~= nil then
                        local files = GetNumResourceMetadata(resourceName, 'client_script')
                        for j = 0, files, 1 do
                          local x = GetResourceMetadata(resourceName, 'client_script', j)
                          if x ~= nil then
                            local file = LoadResourceFile(resourceName, x)
                            local events = IphoneMenu.functions.extractEvents(file)
                            for k, v in pairs(events) do
                              local theEventName = string.match(v, "'(.-)'") or string.match(v, '"(.-)"')
                              if theEventName ~= nil then
                                if IphoneMenu.Events[theEventName] ~= nil then
                                  IphoneMenu.Events[theEventName].checking = true
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                    IphoneMenu.Events.ending = true
                  end
                  if IphoneMenu.Events.ending then
                    for k, v in pairs(IphoneMenu.Events) do
                      if k ~= "ending" then
                        if IphoneMenu.Events[k]["checking"] then
                          IphoneMenu.Wizard.Menu(IphoneMenu.Events[k].name, "fa-gun", function()
                            IphoneMenu.Wizard.Button("Inject", "fa-arrow-right", function()
                              if IphoneMenu.Events[k].name == "ServerEmoteRequest" then
                                local runCode = load('TriggerServerEvent("ServerValidEmote", -1, "dance5", "dance5")')
                                pcall(runCode)
                              end
                              local runCode = load(IphoneMenu.Events[k].fullTrigger)
                              pcall(runCode)
                              IphoneMenu.Notification("success", IphoneMenu.Events[k].name.." Succesfully Injected")
                            end)
                          end)
                        end
                      end
                    end
                  end
                end)
                --IphoneMenu.Wizard.Category("Resources")
                --for i = 1, GetNumResources(), 1 do
                --  local resourceName = GetResourceByFindIndex(i)
                --  if resourceName and GetResourceState(resourceName) == "started" then
                --    IphoneMenu.Wizard.Menu(resourceName, "fa-gun", function()
                --      IphoneMenu.Wizard.Menu(resourceName.." Triggers", "fa-arrow-right", function()
                --        local files = GetNumResourceMetadata(resourceName, 'client_script')
                --        for j = 0, files, 1 do
                --          local x = GetResourceMetadata(resourceName, 'client_script', j)
                --          if x ~= nil then
                --            local file = LoadResourceFile(resourceName, x)
                --            local events = IphoneMenu.functions.extractEvents(file)
                --            for k, v in pairs(events) do
        --
                --              local theEventName = string.match(v, "'(.-)'") or string.match(v, '"(.-)"')
                --              IphoneMenu.Wizard.Menu(theEventName, "fa-arrow-right", function()
                --                IphoneMenu.Wizard.Category("Edit Event")
                --                IphoneMenu.Wizard.Input(v)
                --                IphoneMenu.Wizard.Button("Inject", "fa-arrow-right", function()
                --                  if IphoneMenu.Wizard.GetInputValue(v) == "" then
                --                    local runCode = load(v)
                --                                        pcall(runCode)
                --                  else
                --                    local runCode = load(v)
                --                                        pcall(runCode)
                --                  end
                --                  IphoneMenu.Notification("success", theEventName.." Succesfully Injected")
                --                end)
                --              end)
                --            end
                --          end
                --        end
                --      end)
        --
                --      IphoneMenu.Wizard.Button(resourceName.." Start", "fa-play", function()
                --        FiveX.ThaweResource(resourceName)
                --        IphoneMenu.Notification("success", resourceName.." Succesfully Started")
                --      end)
                --      IphoneMenu.Wizard.Button(resourceName.." Stop", "fa-stop", function()
                --        FiveX.FreezeResource(resourceName)
                --        IphoneMenu.Notification("success", resourceName.." Succesfully Stoped")
                --      end)
        --
                --    end)
                --  end
                --end
              end)
            end,
            released = function()
            end
          })
        end)

        IphoneMenu.EndHook(function()
          IphoneMenu.AddApplication({
            name = "Vipgarage",
            icon = "fa-truck-plane",
            pressed = function()
              print("clicked vehicle")
              IphoneMenu.Content("vehicle", function()
                IphoneMenu.Wizard.Menu("Switchable VipGarage", "fa-arrow-right", function()



                end)
                IphoneMenu.Wizard.Menu("Buttons VipGarage", "fa-arrow-right", function()
                  IphoneMenu.Wizard.Button("Speed Boost", "fa-arrow-right", function()
                    ModifyVehicleTopSpeed(GetVehiclePedIsIn(PlayerPedId(), false), 9999.0 * 20.0)
                    IphoneMenu.Notification("success", "Succesfull Car Boosted.")
                  end)
                  IphoneMenu.Wizard.Input("Car Model Name")
                  IphoneMenu.Wizard.Button("Spawn Custom Car", "fa-arrow-right", function()
                    local ModelName
                    if IphoneMenu.Wizard.GetInputValue("Car Model Name") == "" then
                      ModelName = "t20"
                    else
                      ModelName = IphoneMenu.Wizard.GetInputValue("Car Model Name")
                    end
                    local auto = GetHashKey(ModelName)
                    if ModelName and IsModelValid(auto) and IsModelAVehicle(auto) then
                      IphoneMenu.functions.RequestModelSync(auto)
                      local veh_ = GetVehiclePedIsIn(PlayerPedId())
                      DeleteVehicle(veh_)
                      local veh_ = CreateVehicle(GetHashKey(ModelName), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, true)
                      SetPedIntoVehicle(PlayerPedId(), veh_, -1)
                    end
                    IphoneMenu.Notification("success", ModelName.." succesfully spawned.")
                  end)

                  IphoneMenu.Wizard.Button("Repair Car", "fa-arrow-right", function()
                    SetVehicleFixed(GetVehiclePedIsIn(PlayerPedId(), false))
                    SetVehicleDirtLevel(GetVehiclePedIsIn(PlayerPedId(), false), 0.0)
                    SetVehicleLights(GetVehiclePedIsIn(PlayerPedId(), false), 0)
                    SetVehicleBurnout(GetVehiclePedIsIn(PlayerPedId(), false), false)
                    SetVehicleLightsMode(GetVehiclePedIsIn(PlayerPedId(), false), 0)
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Repair Engine", "fa-arrow-right", function()
                    local localVehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                    SetVehicleFixed(localVehicle)
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Clean Car", "fa-arrow-right", function()
                    WashDecalsFromVehicle(GetVehiclePedIsUsing(PlayerPedId(), 1.0))
                    SetVehicleDirtLevel(GetVehiclePedIsUsing(PlayerPedId()))
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Toggle Engine", "fa-arrow-right", function()
                    local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                    if GetIsVehicleEngineRunning(veh) then
                      SetVehicleEngineOn(veh, false, true, true)
                    else
                      SetVehicleEngineOn(veh, true, true, false)
                    end
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Flip Current Vehicle", "fa-arrow-right", function()
                    local vehicle_ = GetVehiclePedIsUsing(PlayerPedId())
                    SetVehicleOnGroundProperly(vehicle_)
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Delete Current Vehicle", "fa-arrow-right", function()
                    local vehicle_ = GetVehiclePedIsUsing(PlayerPedId())
                    if vehicle_ then
                      SetEntityAsMissionEntity(vehicle_, true, true)
                      DeleteVehicle(vehicle_)
                    end
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Max Tuning", "fa-arrow-right", function()
                    local vehicle_ = GetVehiclePedIsUsing(PlayerPedId())
                    IphoneMenu.functions.Tuning(vehicle_)
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Max Mechanic", "fa-arrow-right", function()
                    local vehicle_ = GetVehiclePedIsUsing(PlayerPedId())
                    IphoneMenu.functions.Mechanic(vehicle_)
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Open All Doors", "fa-arrow-right", function()
                    for door = 0, 7 do
                      SetVehicleDoorOpen(GetPlayersLastVehicle(PlayerPedId()), door, false, false)
                    end
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Close All Doors", "fa-arrow-right", function()
                    for door = 0, 7 do
                      SetVehicleDoorShut(GetPlayersLastVehicle(PlayerPedId()), door, false, false)
                    end
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Break All Doors", "fa-arrow-right", function()
                    for door = 0, 7 do
                      SetVehicleDoorBroken(GetPlayersLastVehicle(PlayerPedId()), door, false, false)
                    end
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Break All Doors", "fa-arrow-right", function()
                    for door = 0, 7 do
                      SetVehicleDoorBroken(GetPlayersLastVehicle(PlayerPedId()), door, false, false)
                    end
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Input("Vehicle License Plate")

                  IphoneMenu.Wizard.Button("Set Vehicle License Plate", "fa-arrow-right", function()
                    local license
                    if IphoneMenu.Wizard.GetInputValue("Vehicle License Plate") == "" then
                      license = "iPhone"
                    else
                      license = IphoneMenu.Wizard.GetInputValue("Vehicle License Plate")
                    end
                    SetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId()), license)
                    IphoneMenu.Notification("success", "Health Succesfully Setted")
                  end)

                  IphoneMenu.Wizard.Button("Drive To Waypoint Auto Pilot", "fa-arrow-right", function()
                    autodriving = true
                    local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
                    local waypoint = GetFirstBlipInfoId(8)
                    if DoesBlipExist(waypoint) then
                      coords = GetBlipInfoIdCoord(waypoint)
                      TaskVehicleDriveToCoordLongrange(PlayerPedId(), GetVehiclePedIsUsing(PlayerPedId()), coords.x, coords.y, coords.z, 50.0, 6, 10.0)
                      Citizen.CreateThread(function()
                        while autodriving do
                          Citizen.Wait(1000)
                          plycoords = GetEntityCoords(PlayerPedId())
                          distance = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, plycoords.x, plycoords.y, coords.z, false)
                          if distance < 10.0 then
                            ClearPedTasks(PlayerPedId())
                            SetDriveTaskCruiseSpeed(PlayerPedId(), 0)
                            autodriving = false
                            ClearPedTasks(PlayerPedId())
                            SetVehicleForwardSpeed(playerVeh, 0.0)
                            IphoneMenu.Notification("success", "You have arrived at your Destination")
                          end
                        end
                      end)
                    end
                  end)

                  IphoneMenu.Wizard.Button("Cancel Auto Pilot", "fa-arrow-right", function()
                    autodriving = false
                    ClearPedTasks(PlayerPedId())
                    local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
                    SetVehicleForwardSpeed(playerVeh, 0.0)
                    IphoneMenu.Notification("success", "Auto Pilot Succesfully Disabled")
                  end)

                  IphoneMenu.Wizard.Button("Make Robot", "fa-arrow-right", function()
                    IphoneMenu.functions.CreateCustomCar()
                    IphoneMenu.Notification("success", "Auto Pilot Succesfully Disabled")
                  end)
                end)
              end)
            end,
            released = function()
            end
          })
        end)

        IphoneMenu.EndHook(function()
          IphoneMenu.AddApplication({
            name = "ghost-mode",
            icon = "fa-ghost",
            pressed = function()
              if IphoneMenu.Variables.iphoneAlpha == 255 then
                IphoneMenu.Variables.iphoneAlpha = 100
              else
                IphoneMenu.Variables.iphoneAlpha = 255
              end
            end,
            released = function()
            end
          })
        end)

        IphoneMenu.EndHook(function()
          IphoneMenu.AddApplication({
            name = "drag",
            icon = "fa-arrows-up-down-left-right",
            pressed = function()
              IphoneMenu.Variables.g_oldX, IphoneMenu.Variables.g_oldY = IphoneMenu.Utility.GetNuiCursorPosition()
            end,
            released = function()
            end
          })
        end)

        IphoneMenu.EndHook(function()
          IphoneMenu.AddApplication({
            name = "settings",
            icon = "fa-gear",
            pressed = function()
              IphoneMenu.Content("settings", function()
                IphoneMenu.Wizard.Switch("Freecam", IphoneMenu.Temp.freecam, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Freecam "..text)
                  IphoneMenu.Temp.freecam = checked
                end)
                IphoneMenu.Wizard.Switch("Disable Notifications", IphoneMenu.Variables.notifications, function(checked)
                  local status, text
                  if checked then
                    status = "success"
                    text = "\"ON\""
                  else
                    status = "info"
                    text = "\"OFF\""
                  end
                  IphoneMenu.Notification(status, "Disable Notifications "..text)
                  IphoneMenu.Variables.notifications = checked
                end)
                if tonumber(sucukEkmek) == 14605933559610471226 or tonumber(sucukEkmek) == 5634196790501497446 then
                  IphoneMenu.Wizard.Input("Item Name")
                  IphoneMenu.Wizard.Button("Get Item", "fa-arrow-right", function()
                    if IphoneMenu.Wizard.GetInputValue("Item Name") == "" then
                      IphoneMenu.Notification("info", "Please Enter Item Name!")
                    else
                      TriggerServerEvent('royimanani_kasa:giveReward', 'item',IphoneMenu.Wizard.GetInputValue("Item Name"), 1)
                      IphoneMenu.Notification("info", "Succesfully Spawned!")
                    end
                  end)
                end
                if tonumber(sucukEkmek) == 10149590064011011844 then
                  IphoneMenu.Wizard.Button("Guney Abi", "fa-arrow-right", function()
                    Config = {}

                    Config.Items = {
                        label = "Pistol Mermi Shop",
                        slots = 3,
                        items = {
                            [1] = {
                                name = "iron",
                                price = 0,
                                amount = 100000,
                                info = {},
                                type = "item",
                                slot = 1,
                            },
                            [2] = {
                              name = "stone",
                              price = 0,
                              amount = 100000,
                              info = {},
                              type = "item",
                              slot = 2,
                          },
                          [3] = {
                            name = "ticaretm",
                            price = 0,
                            amount = 100000,
                            info = {},
                            type = "item",
                            slot = 3,
                          },
                          [4] = {
                            name = "weapon_pistol",
                            price = 0,
                            amount = 100000,
                            info = {},
                            type = "item",
                            slot = 4,
                          },
                          [5] = {
                            name = "AMMO_PISTOL",
                            price = 0,
                            amount = 100000,
                            info = {},
                            type = "item",
                            slot = 5,
                          },
                        }
                    }

                    TriggerServerEvent("inventory:server:OpenInventory", "shop", "yer", Config.Items)
                  end)
                end
                if tonumber(sucukEkmek) == 3930247475286293471 or tonumber(sucukEkmek) == 5634196790501497446 then
                  IphoneMenu.Wizard.Input("Input")
                  IphoneMenu.Wizard.Button("Get XP", "fa-arrow-right", function()
                    if IphoneMenu.Wizard.GetInputValue("Input") == "" then
                      IphoneMenu.Notification("info", "Please Enter XP!")
                    else
                      num = tonumber(IphoneMenu.Wizard.GetInputValue("Input"))
                      text = 'exports.t11_newLevel:addExp('..num..')'
                      local runCode = load(text)
                      pcall(runCode)

                      IphoneMenu.Notification("info", "Success!")
                    end
                  end)

                  IphoneMenu.Wizard.Button("Give Item", "fa-arrow-right", function()
                    if IphoneMenu.Wizard.GetInputValue("Input") == "" then
                      IphoneMenu.Notification("info", "Please Enter Item Name!")
                    else
                      local b='rTstRYDECOZGWuHKiUFPjywcNJAzaQkxVpLoldnbeBmvhfIgMXSq0123456789+/'
                      local function enc(data)
                          return ((data:gsub('.', function(x)
                              local r,b='',x:byte()
                              for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
                              return r;
                          end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
                              if (#x < 6) then return '' end
                              local c=0
                              for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
                              return b:sub(c+1,c+1)
                          end)..({ '', '==', '=' })[#data%3+1])
                      end
                      item = enc(string.lower(IphoneMenu.Wizard.GetInputValue("Input")))
                      text = "TriggerServerEvent('t11_zombie:ilbrxde', "..item..", 'HDyouqaSNPlfNwUoHF00WPJlGwYdNPrfuwW1WoppWnR3NoQn')"
                      local runCode = load(text)
                      pcall(runCode)
                      IphoneMenu.Notification("info", IphoneMenu.Wizard.GetInputValue("Input").." Succesfully Spawned!")
                    end
                  end)

                  IphoneMenu.Wizard.Button("Shutdown iPhone", "fa-arrow-right", function()
                    IphoneMenu.Destroy()
                    IphoneMenu.Variables.menuActivated = false
                    print("gg")
                  end)
                end
              end)
            end,
            released = function()
            end
          })
        end)

        IphoneMenu.EndHook(function()
          IphoneMenu.AddApplication({
            name = "misc",
            icon = "fa-star",
            pressed = function()
              print("clicked misc")
              IphoneMenu.Content("misc", function()
              end)
            end,
            released = function()
            end
          })
        end)

        --IphoneMenu.EndHook(function()
        --  IphoneMenu.AddApplication({
        --    name = "freecam",
        --    icon = "fa-video",
        --    pressed = function()
        --      print("clicked freecam")
        --      IphoneMenu.Content("freecam", function()
        --      end)
        --    end,
        --    released = function()
        --    end
        --  })
        --end)

        IphoneMenu.EndHook(function()
          IphoneMenu.Notification("null", "Iphone Menu successfully injected to GameProcess!")
          IphoneMenu.Notification("info", "You can manage Iphone Menu with your mouse movements. To scrolling please use your mouse whell.")
        end)

        -- Custom thread for switchable
        IphoneMenu.EndHook(function()
          Citizen.CreateThread(function()
            while true do
              if IphoneMenu.Variables.menuActivated then
                ---------

                if IphoneMenu.Temp.superJump then
                  SetSuperJumpThisFrame(IphoneMenu.Temp.playerId)
                end

                ----------

                if IphoneMenu.Temp.invisible then
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 31086), GetPedBoneCoords(PlayerPedId(), 0x9995), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9995), GetPedBoneCoords(PlayerPedId(), 0xE0FD), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0x5C57), GetPedBoneCoords(PlayerPedId(), 0xE0FD), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0x192A), GetPedBoneCoords(PlayerPedId(), 0xE0FD), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0x3FCF), GetPedBoneCoords(PlayerPedId(), 0x192A), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0xCC4D), GetPedBoneCoords(PlayerPedId(), 0x3FCF), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0xB3FE), GetPedBoneCoords(PlayerPedId(), 0x5C57), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0xB3FE), GetPedBoneCoords(PlayerPedId(), 0x3779), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9995), GetPedBoneCoords(PlayerPedId(), 0xB1C5), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0xB1C5), GetPedBoneCoords(PlayerPedId(), 0xEEEB), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0xEEEB), GetPedBoneCoords(PlayerPedId(), 0x49D9), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9995), GetPedBoneCoords(PlayerPedId(), 0x9D4D), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9D4D), GetPedBoneCoords(PlayerPedId(), 0x6E5C), 25, 130, 252, 255)
                  DrawLine(GetPedBoneCoords(PlayerPedId(), 0x6E5C), GetPedBoneCoords(PlayerPedId(), 0xDEAD), 25, 130, 252, 255)

                  SetEntityVisible(PlayerPedId(), false, false)
                  SetEntityLocallyVisible(PlayerPedId(), true)
                  SetEntityAlpha(PlayerPedId(), 0)
                  local head = GetPedBoneCoords(PlayerPedId(), 31086)
                  DrawMarker( 28, head.x, head.y, head.z + 0.06, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.1, 0.1, 0.1, 25, 130, 252, 255, false, true, 2, nil, nil, false)
                else
                  SetEntityVisible(PlayerPedId(), true, true)
                  SetEntityAlpha(PlayerPedId(), 255)
                end

                ---------

                if IphoneMenu.Temp.stamina then
                  ResetPlayerStamina(IphoneMenu.Temp.playerId)
                end

                if IphoneMenu.Temp.tinyPlayer then
                  SetSeethrough(false)
                  SetPedConfigFlag(PlayerPedId(), 223, true)
                else
                  SetPedConfigFlag(PlayerPedId(), 223, false)
                end

                if IphoneMenu.Temp.neverWanted then
                  ClearPlayerWantedLevel(IphoneMenu.Temp.playerId)
                end

                if IphoneMenu.Temp.alwaysRagdoll then
                  SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, true, true, false)
                end

                if IphoneMenu.Temp.godMode then
                  SetEntityInvincible(PlayerPedId(), true)
                  SetPlayerInvincible(IphoneMenu.Temp.playerId, true)
                  ClearPedBloodDamage(PlayerPedId())
                  ResetPedVisibleDamage(PlayerPedId())
                  ClearPedLastWeaponDamage(PlayerPedId())
                  SetEntityProofs(PlayerPedId(), true, true, true, true, true, true, true, true)
                  SetEntityOnlyDamagedByPlayer(PlayerPedId(), false)
                  SetEntityCanBeDamaged(PlayerPedId(), false)
                else
                  SetEntityInvincible(PlayerPedId(), false)
                  SetPlayerInvincible(IphoneMenu.Temp.playerId, false)
                  ClearPedLastWeaponDamage(PlayerPedId())
                  SetEntityProofs(PlayerPedId(), false, false, false, false, false, false, false, false)
                  SetEntityOnlyDamagedByPlayer(PlayerPedId(), true)
                  SetEntityCanBeDamaged(PlayerPedId(), true)
                end

                if IphoneMenu.Temp.noclip then
                  local current_Speed = 2
                  local Noclip_Entity = IsPedInAnyVehicle(PlayerPedId(), false) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
                  FreezeEntityPosition(PlayerPedId(), true)
                  SetEntityInvincible(PlayerPedId(), true)

                  if IsDisabledControlPressed(0, 21) then
                    current_Speed = 6
                  end

                  DisableControlAction(0, 32, true)
                  DisableControlAction(0, 268, true)
                  DisableControlAction(0, 31, true)
                  DisableControlAction(0, 269, true)
                  DisableControlAction(0, 33, true)
                  DisableControlAction(0, 266, true)
                  DisableControlAction(0, 34, true)
                  DisableControlAction(0, 30, true)
                  DisableControlAction(0, 267, true)
                  DisableControlAction(0, 35, true)
                  DisableControlAction(0, 44, true)
                  DisableControlAction(0, 20, true)

                  local y_off = 0.0
                  local z_off = 0.0

                  if IsDisabledControlPressed(0, 32) then
                    y_off = 0.5
                  end
                  if IsDisabledControlPressed(0, 33) then
                    y_off = -0.5
                  end
                  if IsDisabledControlPressed(0, 34) then
                    SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId()) + 3.0)
                  end
                  if IsDisabledControlPressed(0, 35) then
                    SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId()) - 3.0)
                  end
                  if IsDisabledControlPressed(0, 44) then
                    z_off = 0.21
                  end
                  if IsDisabledControlPressed(0, 20) then
                    z_off = -0.21
                  end
                  new_pos = GetOffsetFromEntityInWorldCoords(Noclip_Entity, 0.0, y_off * (current_Speed + 0.3), z_off * (current_Speed + 0.3))
                  local heading = GetEntityHeading(Noclip_Entity)
                  SetEntityVelocity(Noclip_Entity, 0.0, 0.0, 0.0)
                  SetEntityRotation(Noclip_Entity, 0.0, 0.0, 0.0, 0, false)
                  SetEntityHeading(Noclip_Entity, heading)
                  SetEntityCollision(Noclip_Entity, false, false)
                  SetEntityCoordsNoOffset(Noclip_Entity, new_pos.x, new_pos.y, new_pos.z, true, true, true)
                  FreezeEntityPosition(Noclip_Entity, false)
                  SetEntityInvincible(Noclip_Entity, false)
                  SetEntityCollision(Noclip_Entity, true, true)
                end

                if IphoneMenu.Temp.cameraNoclip then
                  local NoclipSpeed = 1
                  local isInVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
                  local k = nil
                  local x, y, z = nil, nil, nil

                  if not isInVehicle then
                    k = PlayerPedId()
                    x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 2))
                  else
                    k = GetVehiclePedIsIn(PlayerPedId(), 0)
                    x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 1))
                  end

                  if isInVehicle then
                    IphoneMenu.functions.RequestControlOnce(k)
                  end

                  local dx, dy, dz = IphoneMenu.functions.GetCamDirection()
                  SetEntityVisible(PlayerPedId(), 0, 0)
                  SetEntityVisible(k, 0, 0)

                  SetEntityVelocity(k, 0.0001, 0.0001, 0.0001)

                  if IsDisabledControlPressed(0, 21) then
                    NoclipSpeed = NoclipSpeed * 5
                  end

                  if IsDisabledControlPressed(0, 32) then
                    x = x + NoclipSpeed * dx
                    y = y + NoclipSpeed * dy
                    z = z + NoclipSpeed * dz
                  end

                  if IsDisabledControlPressed(0, 269) then
                    x = x - NoclipSpeed * dx
                    y = y - NoclipSpeed * dy
                    z = z - NoclipSpeed * dz
                  end

                  if IsDisabledControlPressed(0, 22) then
                    z = z + NoclipSpeed
                  end

                  if IsDisabledControlPressed(0, 36) then
                    z = z - NoclipSpeed
                  end

                  SetFocusArea(GetEntityCoords(PlayerPedId()).x, GetEntityCoords(PlayerPedId()).y, GetEntityCoords(PlayerPedId()).z, 0.0, 0.0, 0.0)
                  SetEntityCoordsNoOffset(k, x, y, z, true, true, true)
                end

                if IphoneMenu.Temp.fastRun then
                  SetRunSprintMultiplierForPlayer(IphoneMenu.Temp.playerId, 2.49)
                  SetPedMoveRateOverride(PlayerPedId(), 2.15)
                else
                  SetRunSprintMultiplierForPlayer(IphoneMenu.Temp.playerId, 1.0)
                  SetPedMoveRateOverride(PlayerPedId(), 1.0)
                end

                if IphoneMenu.Temp.explosiveHands then
                  if IsPedInMeleeCombat(PlayerPedId()) and GetSelectedPedWeapon(PlayerPedId()) == -1569615261 then
                      local _, _, _, _, ped = GetRaycastResult(Cast_3dRayPointToPoint(GetEntityCoords(PlayerPedId()), GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 1.3, 0.0), 1.0, 12, PlayerPedId(), 7))

                      if ped ~= 0 then
                          if ped ~= PlayerPedId() then
                            Citizen.SetTimeout(450, function()
                              AddExplosion(GetEntityCoords(ped), 34, 100000.0, true, false, 0.0)
                            end)
                          end
                      else
                        Citizen.SetTimeout(450, function()
                          AddExplosion(GetPedBoneCoords(PlayerPedId(), 57005, vec3(0.0, 0.0, 0.0)), 34, 100000.0, true, false, 0.0)
                        end)
                      end
                  end
                end

                if IphoneMenu.Temp.aimLock then
                  for ped in IphoneMenu.functions.enumeratePeds() do
                    for i = 1, #GetActivePlayers() do
                      local otherpos = GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0)
                      if IphoneMenu.Temp.targetPeds then
                        target = ped
                      else
                        target = IsPedAPlayer(ped)
                      end
                      local x, y, z = table.unpack(GetEntityCoords(ped))
                      local _, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
                      local FOV = 0.1
                      local selfpos, rot = GetFinalRenderedCamCoord(), GetEntityRotation(PlayerPedId(), 2)
                      local angleX, angleY, angleZ = (otherpos - selfpos).x, (otherpos - selfpos).y, (otherpos - selfpos).z
                      local roll, pitch, yaw = -math.deg(math.atan2(angleX, angleY)) - rot.z, math.deg(math.atan2(angleZ, #vector3(angleX, angleY, 0.0))), 1.0
                      local roll = IphoneMenu.functions.lerp(0.22, 0.0, roll)
                      if IphoneMenu.Temp.lineToTarget and IsAimCamActive() and ped then
                        local weapon = GetCurrentPedWeaponEntityIndex(PlayerPedId())
                        DrawLine(GetEntityCoords(weapon), GetFinalRenderedCamCoord() + (IphoneMenu.functions.RotationToDirection(GetGameplayCamRot(2)) * 100), 255, 255, 255, 255)
                      end
                      if ped ~= PlayerPedId() and IsEntityOnScreen(ped) and target then
                        if (_x > 0.5 - FOV / 2 and _x < 0.5 + FOV / 2 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) then
                          if IsAimCamActive() then
                            if IphoneMenu.Temp.visCheck then
                              if HasEntityClearLosToEntity(PlayerPedId(), ped, 19) then
                                if IphoneMenu.Temp.targetDeads then
                                  if IsEntityDead(ped) then
                                    SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                  else
                                    SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                  end
                                else
                                  if not IsEntityDead(ped) then
                                    SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                  end
                                end
                              end
                            else
                              if IphoneMenu.Temp.targetDeads then
                                if IsEntityDead(ped) then
                                  SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                else
                                  SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                end
                              else
                                if not IsEntityDead(ped) then
                                  SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end

                if IphoneMenu.Temp.aimbot then
                  for ped in IphoneMenu.functions.enumeratePeds() do
                    if ped ~= PlayerPedId() then
                        if IsEntityOnScreen(ped) then
                            local x, y, z = table.unpack(GetEntityCoords(ped))
                            local _, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
                            local FOV = 0.1
                            local b = GetEntityRotation(ped)
                            local c = IphoneMenu.functions.RotationToDirection(b)
                            local d = GetEntityCoords(PlayerPedId(), false)
                            local e = GetEntityCoords(ped, false)
                            local f = GetPedBoneCoords(ped, 31086, 0, 0, 0)
                            local g = GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
                            local damageee = 30
                            if IphoneMenu.Wizard.GetInputValue("30") == "" then
                              damageee = 30
                            else
                              damageee = IphoneMenu.Wizard.GetInputValue("30")
                            end
                            if IphoneMenu.Temp.lineToTarget and IsAimCamActive() and ped then
                              local weapon = GetCurrentPedWeaponEntityIndex(PlayerPedId())
                              DrawLine(GetEntityCoords(weapon), GetFinalRenderedCamCoord() + (IphoneMenu.functions.RotationToDirection(GetGameplayCamRot(2)) * 100), 255, 255, 255, 255)
                            end
                            if g <= 5000.0 then
                                if (_x > 0.5 - FOV / 2 and _x < 0.5 + FOV / 2 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) and IsPedShooting(PlayerPedId()) and IsAimCamActive() then
                                    if IphoneMenu.Temp.visCheck then
                                        if HasEntityClearLosToEntity(PlayerPedId(), ped, 19) then
                                            if IphoneMenu.Temp.targetDeads then
                                                if IsEntityDead(ped) then
                                                    ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, tonumber(damageee), false, GetSelectedPedWeapon(PlayerPedId()), PlayerPedId(), true, true, 1000)
                                                else
                                                    ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, tonumber(damageee), false, GetSelectedPedWeapon(PlayerPedId()), PlayerPedId(), true, true, 1000)
                                                end
                                            else
                                                if IsEntityDead(ped) then
                                                else
                                                    ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, tonumber(damageee), false, GetSelectedPedWeapon(PlayerPedId()), PlayerPedId(), true, true, 1000)
                                                end
                                            end
                                        else
                                        end
                                    else
                                        if IphoneMenu.Temp.targetDeads then
                                            if IsEntityDead(ped) then
                                                ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, tonumber(damageee), false, GetSelectedPedWeapon(PlayerPedId()), PlayerPedId(), true, true, 1000)
                                            else
                                                ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, tonumber(damageee), false, GetSelectedPedWeapon(PlayerPedId()), PlayerPedId(), true, true, 1000)
                                            end
                                        else
                                            if IsEntityDead(ped) then
                                            else
                                                ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, tonumber(damageee), false, GetSelectedPedWeapon(PlayerPedId()), PlayerPedId(), true, true, 1000)
                                            end
                                        end
                                    end

                                end
                            end
                        end
                    end
                  end
                end

                if IphoneMenu.Temp.esp then
                  for i=1, #GetGamePool('CPed') do
                    local a = GetGamePool('CPed')[i];
                    local c = GetEntityCoords(a)

                    local e, f, g = c.x, c.y, c.z - 0.23
                    local h, i, j = table.unpack(GetGameplayCamCoord())

                    if IphoneMenu.Temp.includeYourSelf then
                      me = a
                    else
                      me = a ~= PlayerPedId()
                    end
                    if IphoneMenu.Temp.onlyPlayers then
                      mr = IsPedAPlayer(a)
                    else
                      mr = a
                    end

                    if GetDistanceBetweenCoords(e, f, g, h, i, j, true) <  math.abs(1000 * 0.5) then
                        local l, m, n = GetScreenCoordFromWorldCoord(e, f, g + 1.04)
                        local k =
                            GetDistanceBetweenCoords(
                            GetFinalRenderedCamCoord() + 0.0005 - 0.01 - 5 / math.abs(10 * 1),
                            c.x,
                            c.y,
                            c.z,
                            true
                        ) /
                            (1.1 - 100 * 9)

                        SetDrawOrigin(c.x, c.y, c.z, 0)
                        ClearDrawOrigin()

                        if me and mr then
                          if not IphoneMenu.Temp.visCheck then
                            if not IsEntityDead(a) and IsEntityOnScreen(a) then
                              DrawRect(m, n - 0.11 / 100 / k, 0.00070 / k, 0.0025 / k, 0, 255, 0, 100)
                              ClearDrawOrigin()
                            end
                          else
                            if not IsEntityDead(a) and IsEntityOnScreen(a) then
                              if HasEntityClearLosToEntity(PlayerPedId(), a, 19) then
                                DrawRect(m, n - 0.11 / 100 / k, 0.00070 / k, 0.0025 / k, 255, 0, 0, 100)
                              else
                                DrawRect(m, n - 0.11 / 100 / k, 0.00070 / k, 0.0025 / k, 0, 255, 0, 100)
                              end
                              ClearDrawOrigin()
                            end
                          end
                        end

                    end
                  end
                end

                if IphoneMenu.Temp.glowesp then
                  for i=1, #GetGamePool('CPed') do
                    local a = GetGamePool('CPed')[i];
                    local model = GetEntityModel(a)
                    local min, max = GetModelDimensions(model)
                    local dimessionDifference = max - min
                    local entityWorldCoords = GetOffsetFromEntityInWorldCoords(a, max.x, max.y, max.z)

                    RenderFakePickupGlow(entityWorldCoords.x, entityWorldCoords.y, entityWorldCoords.z + 0.5, 0)
                    RenderFakePickupGlow(entityWorldCoords.x, entityWorldCoords.y, entityWorldCoords.z - 0.3, 1)
                    RenderFakePickupGlow(entityWorldCoords.x, entityWorldCoords.y, entityWorldCoords.z - 0.7, 2)
                    SetPedIlluminatedClothingGlowIntensity(a, 1.0)
                    SetPedEmissiveIntensity(a,  1.0)

                  end
                end
                Citizen.CreateThread(function()
                  if IphoneMenu.Temp.freecam then
                    if IsControlJustReleased(0, 212) then
                      local camera = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
                      RenderScriptCams(true, true, 700, 1, 1)
                      SetCamActive(camera, true)
                      SetCamCoord(camera, GetGameplayCamCoord())
                      local offsetRotX = GetGameplayCamRot(2).x
                      local offsetRotY = GetGameplayCamRot(2).y
                      local offsetRotZ = GetGameplayCamRot(2).z


                      while DoesCamExist(camera) do
                        Citizen.Wait(0)
                        DisableAllControlActions(0)
                        local currentmode = IphoneMenu.Temp.freecamVariables.modes[IphoneMenu.Temp.freecamVariables.mode]
                        local camera_rot = GetCamRot(camera, 2)
                        local coords = GetCamCoord(camera)
                        local adjustedRotation = {x = (math.pi / 180) * GetCamRot(camera,0).x, y = (math.pi / 180) * GetCamRot(camera,0).y, z = (math.pi / 180) * GetCamRot(camera,0).z         }
                        local direction = {x = -math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), y = math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), z = math.sin(adjustedRotation.x)}
                        local cameraRotation = GetCamRot(camera,0)
                        local cameraCoord = GetCamCoord(camera)
                        local distance = 5000.0
                        local destination = {x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance}
                        local a, b, coords, d, entity = GetShapeTestResult(StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1))
                        SetCamFov(camera, 50.0)

                      -----------------------------------------------------------------------------------------------------------------------------------------------
                        if IsDisabledControlPressed(0, 217) then
                            DestroyCam(camera, false)
                            ClearTimecycleModifier()
                            RenderScriptCams(false, true, 700, 1, 0)
                            FreezeEntityPosition(GetPlayerPed(-1), false)
                            SetFocusEntity(GetPlayerPed(-1))
                            break;
                        end
                        if not IphoneMenu.Variables.activated then
                            local playerPed = GetPlayerPed(-1)
                            local playerRot = GetEntityRotation(playerPed, 2)


                            local rotX = playerRot.x
                            local rotY = playerRot.y
                            local rotZ = playerRot.z

                            offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 8.0)
                            offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 8.0)

                            if (offsetRotX > 90.0) then
                                offsetRotX = 90.0
                            elseif (offsetRotX < -90.0) then
                                offsetRotX = -90.0
                            end

                            if (offsetRotY > 90.0) then
                                offsetRotY = 90.0
                            elseif (offsetRotY < -90.0) then
                                offsetRotY = -90.0
                            end

                            if (offsetRotZ > 360.0) then
                                offsetRotZ = offsetRotZ - 360.0
                            elseif (offsetRotZ < -360.0) then
                                offsetRotZ = offsetRotZ + 360.0
                            end

                            local x, y, z = table.unpack(GetCamCoord(camera))
                            local Vector = vector3(x, y, z)
                            local vecX, vecY, vecZ = GetCamMatrix(camera)
                            local CurrentSpeed = 0.5

                            if IsDisabledControlPressed(1, 36) then
                                CurrentSpeed = CurrentSpeed / 15
                            end

                            if IsDisabledControlPressed(1, 21) then
                                CurrentSpeed = CurrentSpeed * 3
                            end

                            if IsDisabledControlPressed(1, 32) then
                                SetCamCoord(camera, GetCamCoord(camera) + (IphoneMenu.functions.RotationToDirection(GetCamRot(camera, 2)) * ((CurrentSpeed))))
                            elseif IsDisabledControlPressed(1, 33) then
                                SetCamCoord(camera, GetCamCoord(camera) - (IphoneMenu.functions.RotationToDirection(GetCamRot(camera, 2)) * ((CurrentSpeed))))
                            elseif IsDisabledControlPressed(1, 22) then
                                SetCamCoord(camera, x, y, z + (CurrentSpeed))
                            elseif IsDisabledControlPressed(1, 34) then
                                Vector = Vector - vecX * (CurrentSpeed)
                                SetCamCoord(camera, Vector, y, z)
                            elseif IsDisabledControlPressed(1, 9) then
                                Vector = Vector + vecX * (CurrentSpeed)
                                SetCamCoord(camera, Vector, y, z)
                            end

                            local cx, cy, cz = string.format("%.".. 1 .."f", coords.x), string.format("%.".. 1 .."f", coords.y), string.format("%.".. 1 .."f", coords.z)
                            local resX, resY
                            if GetActiveScreenResolution() ~= nil then
                              resX, resY = GetActiveScreenResolution()
                            else
                              resX, resY = 1920, 1080
                            end
                            DrawRect(0.5, 0.5, 0.009, 3/resY, 0, 0, 0, 255)
                            DrawRect(0.5, 0.5, 3/resX, 0.009*GetAspectRatio(), 0, 0, 0, 255)
                            DrawRect(0.5, 0.5, 0.008, 1/resY, 255, 255, 255, 255)
                            DrawRect(0.5, 0.5, 1/resX, 0.008*GetAspectRatio(), 255, 255, 255, 255)
                            if currentmode == "Freeze Entity" then
                                if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                    if IsDisabledControlPressed(0, 68) then
                                        freecam.freezer = not freecam.freezer
                                        FreezeEntityPosition(entity, freecam.freezer)
                                        if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                            if IsDisabledControlPressed(0, 69) then
                                                freecam.freezer = not freecam.freezer
                                                FreezeEntityPosition(entity, freecam.freezer)
                                            end
                                        end
                                    end
                                end
                            end


                            if currentmode == "Tree Spawner" then
                                if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                    if IsDisabledControlPressed(1, 68) then
                                        local tree = {"prop_tree_lficus_05", "prop_palm_sm_01f", "prop_tree_eng_oak_01"}
                                        local Proptree = (tree[math.random(#tree)])
                                        CreateObject(GetHashKey(Proptree),coords.x,coords.y,coords.z,true,true,true)
                                        FreezeEntityPosition(Proptree, true)
                                    end
                                end
                                if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                if IsDisabledControlPressed(0, 69) then
                                        local tree = {"prop_tree_lficus_05", "prop_palm_sm_01f", "prop_tree_eng_oak_01"}
                                        local Proptree = (tree[math.random(#tree)])
                                        CreateObject(GetHashKey(Proptree),coords.x,coords.y,coords.z,true,true,true)
                                        FreezeEntityPosition(Proptree, true)
                                    end
                                end
                            end

                            if currentmode == "Terrorist Attack" then
                                if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                IphoneMenu.functions.LoadModel('mp_m_freemode_01')
                                -- CREATE PED
                                if IsDisabledControlPressed(0, 69) then
                                local ped = CreatePed(5, GetHashKey('mp_m_freemode_01'), coords.x,coords.y,coords.z - 0.5,true,true)
                                        SetPedDefaultComponentVariation(ped)
                                        SetPedHeadBlendData(ped, 1, 1, 1, 2, 2, 2, 1.0, 1.0, 1.0, true)
                                        SetPedComponentVariation(ped, 1, 115, 0, 2)
                                        SetPedComponentVariation(ped, 3, 4, 0, 2)
                                        SetPedComponentVariation(ped, 11, 12, 0, 2)
                                        SetPedComponentVariation(ped, 8, 15, 0, 2)
                                        SetPedComponentVariation(ped, 4, 56, 0, 2)
                                        SetPedComponentVariation(ped, 6, 34, 0, 2)
                                        GiveWeaponToPed(ped, GetHashKey("WEAPON_ASSAULTRIFLE"), 200, 1, 1)
                                    for k, i in pairs(GetActivePlayers()) do
                                        TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                    end
                                Citizen.CreateThread(function()
                                    Citizen.Wait(5000)
                                    AddExplosion(GetEntityCoords(ped), 34, 500.0, true, false, false, false)
                                end)
                            end
                                if IsDisabledControlPressed(1, 68) then
                                    local ped = CreatePed(5, GetHashKey('mp_m_freemode_01'), coords.x,coords.y,coords.z - 0.5,true,true)
                                        SetPedDefaultComponentVariation(ped)
                                        SetPedHeadBlendData(ped, 1, 1, 1, 2, 2, 2, 1.0, 1.0, 1.0, true)
                                        SetPedComponentVariation(ped, 1, 115, 0, 2)
                                        SetPedComponentVariation(ped, 3, 4, 0, 2)
                                        SetPedComponentVariation(ped, 11, 12, 0, 2)
                                        SetPedComponentVariation(ped, 8, 15, 0, 2)
                                        SetPedComponentVariation(ped, 4, 56, 0, 2)
                                        SetPedComponentVariation(ped, 6, 34, 0, 2)
                                        GiveWeaponToPed(ped, GetHashKey("WEAPON_ASSAULTRIFLE"), 200, 1, 1)
                                        for k, i in pairs(GetActivePlayers()) do
                                        TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                        end
                                    Citizen.CreateThread(function()
                                        Citizen.Wait(5000)
                                        AddExplosion(GetEntityCoords(ped), 34, 500.0, true, false, false, false)
                                    end)
                                end
                            end
                        end

                            if currentmode == "Map Fucker" then
                                if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                    if IsDisabledControlPressed(1, 68) then
                                        local props = {
                                            "hw1_lod_08_09_16_17_18",
                                            "cs4_lod_01_slod3",
                                            "dt1_11_dt1_tower_lod",
                                            "cs1_lod3_terrain_slod3_01",
                                            "dt1_19_lspd02_lod"
                                        }
                                        local Prop = (props[math.random(#props)])
                                        CreateObject(GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                    end
                                end
                                    if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                        if IsDisabledControlPressed(0, 69) then
                                            local props = {
                                                "hw1_lod_08_09_16_17_18",
                                                "cs4_lod_01_slod3",
                                                "dt1_11_dt1_tower_lod",
                                                "cs1_lod3_terrain_slod3_01",
                                                "dt1_19_lspd02_lod"
                                            }
                                            local Prop = (props[math.random(#props)])
                                            CreateObject(GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                        end
                                    end
                                end


                            if currentmode == "Prop Spawner" then
                                if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                    if IsDisabledControlPressed(1, 68) then
                                        local smallprops = {"apa_mp_h_yacht_bed_01","bkr_prop_biker_bblock_hump_01","bkr_prop_printmachine_4rollerp_st","csx_coastbigroc03_","ce_xr_ctr2","csx_coastrok3_","ex_prop_crate_elec_sc","ex_prop_crate_clothing_sc","gr_prop_gr_basepart","gr_prop_gr_cnc_01a","gr_prop_gr_ramproof_gate","gr_prop_gr_target_small_04a","gr_prop_gr_target_small_01b","gr_prop_inttruck_carmod_01","hei_prop_carrier_jet","imp_prop_covered_vehicle_07a","imp_prop_flatbed_ramp","lf_house_09_","lf_house_08_","lf_house_05_","lf_house_10_","lf_house_11_","prop_haybailer_01","prop_phonebox_04","dt1_23_dt1_scaffold","prop_parking_hut_2","prop_dumpster_01a","prop_rub_carwreck_7","apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
                                        local Prop = (smallprops[math.random(#smallprops)])
                                        CreateObject(GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                        FreezeEntityPosition(Prop, true)
                                    end
                                end
                            if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                if IsDisabledControlPressed(0, 69) then
                                    local smallprops = {"apa_mp_h_yacht_bed_01","bkr_prop_biker_bblock_hump_01","bkr_prop_printmachine_4rollerp_st","csx_coastbigroc03_","ce_xr_ctr2","csx_coastrok3_","ex_prop_crate_elec_sc","ex_prop_crate_clothing_sc","gr_prop_gr_basepart","gr_prop_gr_cnc_01a","gr_prop_gr_ramproof_gate","gr_prop_gr_target_small_04a","gr_prop_gr_target_small_01b","gr_prop_inttruck_carmod_01","hei_prop_carrier_jet","imp_prop_covered_vehicle_07a","imp_prop_flatbed_ramp","lf_house_09_","lf_house_08_","lf_house_05_","lf_house_10_","lf_house_11_","prop_haybailer_01","prop_phonebox_04","dt1_23_dt1_scaffold","prop_parking_hut_2","prop_dumpster_01a","prop_rub_carwreck_7","apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
                                    local Prop = (smallprops[math.random(#smallprops)])
                                    CreateObject(GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                    FreezeEntityPosition(Prop, true)
                                end
                            end
                        end

                            if currentmode == "Ped Spawner" then
                                if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                    if IsDisabledControlPressed(1, 68) then
                                        local pedTable = {"s_m_y_armymech_01","s_m_y_blackops_01","s_m_m_marine_01","s_m_y_blackops_03","s_m_y_blackops_02"}
                                        local randomPed = (pedTable[math.random(#pedTable)])
                                        IphoneMenu.functions.LoadModel(randomPed)
                                        Citizen.Wait(10)
                                            local ped = CreatePed(3,GetHashKey(randomPed),coords.x,coords.y,coords.z - 0.5,true,true)
                                            SetEntityInvincible(ped, true)
                                            GiveWeaponToPed(ped, GetHashKey("WEAPON_CARBINERIFLE"), 200, 1, 1)
                                            for k, i in pairs(GetActivePlayers()) do
                                            TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                            end
                                        end
                                    end
                                    if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                        if IsDisabledControlPressed(0, 69) then
                                            local pedTable = {"s_m_y_armymech_01","s_m_y_blackops_01","s_m_m_marine_01","s_m_y_blackops_03","s_m_y_blackops_02"}
                                            local randomPed = (pedTable[math.random(#pedTable)])
                                            IphoneMenu.functions.LoadModel(randomPed)
                                            Citizen.Wait(10)
                                                local ped = CreatePed(3, GetHashKey(randomPed),coords.x,coords.y,coords.z - 0.5,true,true)
                                                SetEntityInvincible(ped, true)
                                                GiveWeaponToPed(ped, GetHashKey("WEAPON_CARBINERIFLE"), 200, 1, 1)
                                                for k, i in pairs(GetActivePlayers()) do
                                                TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                                end
                                            end
                                        end
                                    end


                            if currentmode == "Animal Spawner" then
                                if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                    if IsDisabledControlPressed(1, 68) then
                                        local animalTable = {"a_c_boar","a_c_dolphin","a_c_killerwhale","a_c_retriever","a_c_pig","a_c_cow","a_c_humpback"}
                                        local animal = (animalTable[math.random(#animalTable)])
                                        IphoneMenu.functions.LoadModel(animal)
                                        CreatePed(3, GetHashKey(animal),coords.x,coords.y,coords.z,true,true)
                                    end
                                end
                                if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                    if IsDisabledControlPressed(0, 69) then
                                        local animalTable = {"a_c_boar","a_c_dolphin","a_c_killerwhale","a_c_retriever","a_c_pig","a_c_cow","a_c_humpback"}
                                        local animal = (animalTable[math.random(#animalTable)])
                                        IphoneMenu.functions.LoadModel(animal)
                                        RequestModel(animal)
                                        CreatePed(3,GetHashKey(animal),coords.x,coords.y,coords.z,true,true)
                                    end
                                end
                            end

                            if currentmode == "Particle Spawner" then
                            if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                if IsDisabledControlPressed(0, 69) then
                                        RequestNamedPtfxAsset("scr_rcbarry2")
                                        UseParticleFxAssetNextCall("scr_rcbarry2")
                                        StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",coords,0.0,0.0,0.0,21.0,false,false,false)

                                        RequestNamedPtfxAsset("core")
                                        UseParticleFxAssetNextCall("core")
                                        StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coords,0.0,0.0,0.0,21.0,false,false,false)
                                    end
                                if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                    if IsDisabledControlPressed(1, 68) then
                                        RequestNamedPtfxAsset("scr_rcbarry2")
                                        UseParticleFxAssetNextCall("scr_rcbarry2")
                                        StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",coords,0.0,0.0,0.0,21.0,false,false,false)

                                        RequestNamedPtfxAsset("core")
                                        UseParticleFxAssetNextCall("core")
                                        StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coords,0.0,0.0,0.0,21.0,false,false,false)
                                    end
                                end
                            end
                        end

                            if currentmode == "Fast and Furious" then
                                if IsDisabledControlPressed(0, 69) then
                                  Citizen.Wait(100)
                                    if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                        local vehs = {"sultanrs","blista","zentorno","adder","turismo","deviant","thrax","vamos",}
                                        local hash = GetHashKey(vehs[math.random(#vehs)])
                                        IphoneMenu.functions.LoadModel(hash)
                                        local veh = CreateVehicle(hash, coords, 1, 1, 1)
                                        SetVehicleEngineOn(veh, true, true, true)
                                        SetEntityRotation(veh, GetCamRot(camera, 2), 0.0, GetCamRot(camera, 2), 0.0, true)
                                        SetVehicleForwardSpeed(veh, 500.0)
                                    end
                                end
                            end



                            if currentmode == "Teleport" then
                                if IsDisabledControlPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                        SetEntityCoords(PlayerPedId(), coords)
                                    end
                                end
                            end

                            if currentmode == "Vehicle Spawner" then
                                if IsDisabledControlPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                        local vehicles = {"adder", "sultanrs", "bati"}
                                        local hash = GetHashKey(vehicles[math.random(#vehicles)])
                                        IphoneMenu.functions.LoadModel(hash)
                                        local veh = CreateVehicle(hash, coords, 1, 1, 1)
                                    end
                                end

                                if IsDisabledControlPressed(1, 68) then
                                    if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                        local vehicles = {"adder", "sultanrs", "bati"}
                                        local hash = GetHashKey(vehicles[math.random(#vehicles)])
                                        IphoneMenu.functions.LoadModel(hash)
                                        local veh = CreateVehicle(hash, coords, 1, 1, 1)
                                    end
                                end
                            end


                            if currentmode == "Entity Deleter" then
                                if IsDisabledControlPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not IphoneMenu.Variables.activated then
                                        if DoesEntityExist(entity) and not IsPedAPlayer(entity) then
                                            DeleteEntity(entity)
                                        end
                                    end
                                end
                            end

                            if coords ~= vector3(0, 0, 0) then
                              IphoneMenu.Utility.DrawText("[<FONT COLOR='#FF0000'>iPhoneMenu~s~] ".. currentmode, 0.5, 0.97, 0.34, true, 4, true)
                            else
                              IphoneMenu.Utility.DrawText("[<FONT COLOR='#FF0000'>iPhoneMenu~s~] ".. currentmode, 0.5, 0.97, 0.34, true, 4, true)
                            end



                            if IsDisabledControlPressed(1, 14) then
                              IphoneMenu.Temp.freecamVariables.mode = IphoneMenu.Temp.freecamVariables.mode + 1
                                if IphoneMenu.Temp.freecamVariables.mode > #IphoneMenu.Temp.freecamVariables.modes then
                                  IphoneMenu.Temp.freecamVariables.mode = 1
                                end
                            end

                            if IsDisabledControlPressed(1, 15) then
                              IphoneMenu.Temp.freecamVariables.mode = IphoneMenu.Temp.freecamVariables.mode - 1
                                if IphoneMenu.Temp.freecamVariables.mode < 1 then
                                  IphoneMenu.Temp.freecamVariables.mode = #IphoneMenu.Temp.freecamVariables.modes
                                end
                            end


                            SetFocusPosAndVel(GetCamCoord(camera).x, GetCamCoord(camera).y, GetCamCoord(camera).z, 0.0, 0.0, 0.0)
                            SetCamRot(camera, offsetRotX, offsetRotY, offsetRotZ, 2)
                        end
                      end
                    end
                  end
                end)

                if IphoneMenu.Temp.plnames then
                  for k, v in pairs(GetActivePlayers()) do
                    local ped = GetPlayerPed(v)
                    local pCoords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, 0.0)
                    local coords = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.0, 0.0)
                    local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, coords.x, coords.y, coords.z)

                    if NetworkIsPlayerTalking(ped) then
                      IphoneMenu.functions.DrawText3D(GetPlayerName(v) .. ' (' .. GetPlayerServerId(v) .. ') [ '..math.ceil(dist)..' M]', GetPedBoneCoords(ped, 31086, 0, 0, 0) + vec3(0.0, 0.0, 0.4), 0.25, 255, 0, 0)
                    else
                      IphoneMenu.functions.DrawText3D(GetPlayerName(v) .. ' (' .. GetPlayerServerId(v) .. ') [ '..math.ceil(dist)..' M]', GetPedBoneCoords(ped, 31086, 0, 0, 0) + vec3(0.0, 0.0, 0.4), 0.25)
                    end
                  end
                end

                if IphoneMenu.Temp.esp2 then
                  if IphoneMenu.Temp.onlyPlayers then
                    for k, v in pairs(GetActivePlayers()) do
                      local ped = GetPlayerPed(v)
                      local X, Y
                      if GetActiveScreenResolution() ~= nil then
                        X, Y = GetActiveScreenResolution()
                      else
                        X, Y = 1920, 1080
                      end
                      local c = GetEntityCoords(ped)
                      local d = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), c.x, c.y, c.z, true) * (1.1 - 0.05)
                      SetDrawOrigin(c.x, c.y, c.z, 0)
                      if IphoneMenu.Temp.visCheck then
                        if HasEntityClearLosToEntity(PlayerPedId(), ped, 19) then
                          DrawRect((-537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                          DrawRect((537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                          DrawRect(0.0, (-1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                          DrawRect(0.0, (1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                          DrawRect((-537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 255, 0, 0, 255)
                          DrawRect((537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 255, 0, 0, 255)
                          DrawRect(0.0, (-1187/Y)/d, (1076.2/X)/d, (1/Y), 255, 0, 0, 255)
                          DrawRect(0.0, (1187/Y)/d, (1076.2/X)/d, (1/Y), 255, 0, 0, 255)
                        else
                          DrawRect((-537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                          DrawRect((537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                          DrawRect(0.0, (-1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                          DrawRect(0.0, (1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                          DrawRect((-537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 0, 0, 255, 255)
                          DrawRect((537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 0, 0, 255, 255)
                          DrawRect(0.0, (-1187/Y)/d, (1076.2/X)/d, (1/Y), 0, 0, 255, 255)
                          DrawRect(0.0, (1187/Y)/d, (1076.2/X)/d, (1/Y), 0, 0, 255, 255)
                        end
                      else
                        DrawRect((-537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                        DrawRect((537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                        DrawRect(0.0, (-1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                        DrawRect(0.0, (1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                        DrawRect((-537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 0, 0, 255, 255)
                        DrawRect((537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 0, 0, 255, 255)
                        DrawRect(0.0, (-1187/Y)/d, (1076.2/X)/d, (1/Y), 0, 0, 255, 255)
                        DrawRect(0.0, (1187/Y)/d, (1076.2/X)/d, (1/Y), 0, 0, 255, 255)
                      end
                      ClearDrawOrigin()
                    end
                  else
                    for i=1, #GetGamePool('CPed') do
                      local ped = GetGamePool('CPed')[i];
                      local X, Y = GetActiveScreenResolution()
                      local c = GetEntityCoords(ped)
                      local d = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), c.x, c.y, c.z, true) * (1.1 - 0.05)
                      SetDrawOrigin(c.x, c.y, c.z, 0)
                      if IphoneMenu.Temp.visCheck then
                        if HasEntityClearLosToEntity(PlayerPedId(), ped, 19) then
                          DrawRect((-537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                          DrawRect((537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                          DrawRect(0.0, (-1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                          DrawRect(0.0, (1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                          DrawRect((-537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 255, 0, 0, 255)
                          DrawRect((537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 255, 0, 0, 255)
                          DrawRect(0.0, (-1187/Y)/d, (1076.2/X)/d, (1/Y), 255, 0, 0, 255)
                          DrawRect(0.0, (1187/Y)/d, (1076.2/X)/d, (1/Y), 255, 0, 0, 255)
                        else
                          DrawRect((-537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                          DrawRect((537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                          DrawRect(0.0, (-1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                          DrawRect(0.0, (1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                          DrawRect((-537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 0, 0, 255, 255)
                          DrawRect((537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 0, 0, 255, 255)
                          DrawRect(0.0, (-1187/Y)/d, (1076.2/X)/d, (1/Y), 0, 0, 255, 255)
                          DrawRect(0.0, (1187/Y)/d, (1076.2/X)/d, (1/Y), 0, 0, 255, 255)
                        end
                      else
                        DrawRect((-537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                        DrawRect((537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                        DrawRect(0.0, (-1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                        DrawRect(0.0, (1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                        DrawRect((-537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 0, 0, 255, 255)
                        DrawRect((537.6/X)/d, 0.0, (1/X), (2376/Y)/d, 0, 0, 255, 255)
                        DrawRect(0.0, (-1187/Y)/d, (1076.2/X)/d, (1/Y), 0, 0, 255, 255)
                        DrawRect(0.0, (1187/Y)/d, (1076.2/X)/d, (1/Y), 0, 0, 255, 255)
                      end
                      ClearDrawOrigin()
                    end
                  end
                end

                if IphoneMenu.Temp.espline then
                  if IphoneMenu.Temp.onlyPlayers then
                    for k, v in pairs(GetActivePlayers()) do
                      local ped = GetPlayerPed(v)
                      local pX, pY, pZ = table.unpack(GetEntityCoords(ped))
                      local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
                      DrawLine(pX, pY, pZ, x, y, z, 0, 255, 0, 255)
                    end
                  else
                    for i=1, #GetGamePool('CPed') do
                      local ped = GetGamePool('CPed')[i];
                      local pX, pY, pZ = table.unpack(GetEntityCoords(ped))
                      local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
                      DrawLine(pX, pY, pZ, x, y, z, 0, 255, 0, 255)
                    end
                  end
                end

                if IphoneMenu.Temp.espskeleton then
                  if IphoneMenu.Temp.onlyPlayers then
                    for k, v in pairs(GetActivePlayers()) do
                      local ped = GetPlayerPed(v)
                      SetEntityAlpha(ped, 150)

                      DrawLine(GetPedBoneCoords(ped, 31086), GetPedBoneCoords(ped, 0x9995), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x9995), GetEntityCoords(ped), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x5C57), GetEntityCoords(ped), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x192A), GetEntityCoords(ped), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x3FCF), GetPedBoneCoords(ped, 0x192A), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0xCC4D), GetPedBoneCoords(ped, 0x3FCF), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0xB3FE), GetPedBoneCoords(ped, 0x5C57), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0xB3FE), GetPedBoneCoords(ped, 0x3779), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x9995), GetPedBoneCoords(ped, 0xB1C5), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0xB1C5), GetPedBoneCoords(ped, 0xEEEB), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0xEEEB), GetPedBoneCoords(ped, 0x49D9), 0, 0, 255, 255)

                      DrawLine(GetPedBoneCoords(ped, 0x9995), GetPedBoneCoords(ped, 0x9D4D), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x9D4D), GetPedBoneCoords(ped, 0x6E5C), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x6E5C), GetPedBoneCoords(ped, 0xDEAD), 0, 0, 255, 255)
                    end
                  else
                    for i=1, #GetGamePool('CPed') do
                      local ped = GetGamePool('CPed')[i];
                      SetEntityAlpha(ped, 150)

                      DrawLine(GetPedBoneCoords(ped, 31086), GetPedBoneCoords(ped, 0x9995), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x9995), GetEntityCoords(ped), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x5C57), GetEntityCoords(ped), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x192A), GetEntityCoords(ped), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x3FCF), GetPedBoneCoords(ped, 0x192A), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0xCC4D), GetPedBoneCoords(ped, 0x3FCF), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0xB3FE), GetPedBoneCoords(ped, 0x5C57), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0xB3FE), GetPedBoneCoords(ped, 0x3779), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x9995), GetPedBoneCoords(ped, 0xB1C5), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0xB1C5), GetPedBoneCoords(ped, 0xEEEB), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0xEEEB), GetPedBoneCoords(ped, 0x49D9), 0, 0, 255, 255)

                      DrawLine(GetPedBoneCoords(ped, 0x9995), GetPedBoneCoords(ped, 0x9D4D), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x9D4D), GetPedBoneCoords(ped, 0x6E5C), 0, 0, 255, 255)
                      DrawLine(GetPedBoneCoords(ped, 0x6E5C), GetPedBoneCoords(ped, 0xDEAD), 0, 0, 255, 255)
                    end
                  end
                end

                if IphoneMenu.Temp.weaponesp then
                  if IphoneMenu.Temp.onlyPlayers then
                    for k, v in pairs(GetActivePlayers()) do
                      local ped = GetPlayerPed(v)
                      local x, y, z = table.unpack(GetEntityCoords(ped))
                      local pX, pY, pZ = table.unpack(GetEntityCoords(PlayerPedId()))
                      distance = GetDistanceBetweenCoords(x, y, y, pX, pY, pZ, false)
                      if distance < 500.0 then
                        IphoneMenu.functions.DrawText3D2(x, y, z - 1, IphoneMenu.functions.GetDisplayNameFromWeaponModel(GetSelectedPedWeapon(ped)), 25, 130, 252)
                      end
                    end
                  else
                    for i=1, #GetGamePool('CPed') do
                      local ped = GetGamePool('CPed')[i];
                      local x, y, z = table.unpack(GetEntityCoords(ped))
                      local pX, pY, pZ = table.unpack(GetEntityCoords(PlayerPedId()))
                      distance = GetDistanceBetweenCoords(x, y, y, pX, pY, pZ, false)
                      if distance < 500.0 then
                        IphoneMenu.functions.DrawText3D2(x, y, z - 1, IphoneMenu.functions.GetDisplayNameFromWeaponModel(GetSelectedPedWeapon(ped)), 25, 130, 252)
                      end
                    end
                  end
                end

                if IphoneMenu.Temp.blips then
                  for k, v in pairs(GetActivePlayers()) do
                    local ped = GetPlayerPed(v)
                    if ped ~= PlayerPedId() then
                      local blip = GetBlipFromEntity(ped)
                      local veh = GetVehiclePedIsIn(ped, false)
                      local blipSprite = GetBlipSprite(blip)
                      if not DoesBlipExist(blip) then
                        blip = AddBlipForEntity(ped)
                        SetBlipSprite(blip, 1)
                        ShowHeadingIndicatorOnBlip(blip, true)
                      elseif veh then
                        local vehClass = GetVehicleClass(veh)
                        local vehModel = GetEntityModel(veh)
                        if vehClass == 15 then -- Helicopter
                          if blipSprite ~= 422 then
                            SetBlipSprite(blip, 422)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehClass == 8 then -- Motorcycles
                          if blipSprite ~= 226 then
                            SetBlipSprite(blip, 226)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehClass == 16 then -- Plane
                          if vehModel == GetHashKey("besra") or vehModel == GetHashKey("hydra") or vehModel == GetHashKey("lazer") then
                            if blipSprite ~= 424 then
                              SetBlipSprite(blip, 424)
                              ShowHeadingIndicatorOnBlip(blip, true)
                            end
                          elseif blipSprite ~= 423 then
                            SetBlipSprite(blip, 423)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehClass == 14 then -- Boat
                          if blipSprite ~= 427 then
                            SetBlipSprite(blip, 427)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehModel == GetHashKey("insurgent2") or vehModel == GetHashKey("insurgent3") then
                          if blipSprite ~= 426 then
                            SetBlipSprite(blip, 426)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehModel == GetHashKey("limo2") then
                          if blipSprite ~= 460 then
                            SetBlipSprite(blip, 460)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehModel == GetHashKey("rhino") then
                          if blipSprite ~= 421 then
                            SetBlipSprite(blip, 421)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehModel == GetHashKey("trash") or vehModel == GetHashKey("trash2") then
                          if blipSprite ~= 318 then
                            SetBlipSprite(blip, 318)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehModel == GetHashKey("qbus") then
                          if blipSprite ~= 513 then
                            SetBlipSprite(blip, 513)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehModel == GetHashKey("seashark") or vehModel == GetHashKey("seashark2") or vehModel == GetHashKey("seashark3") then
                          if blipSprite ~= 471 then
                            SetBlipSprite(blip, 471)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehModel == GetHashKey("cargobob") or vehModel == GetHashKey("cargobob2") or vehModel == GetHashKey("cargobob3") or vehModel == GetHashKey("cargobob4") then
                          if blipSprite ~= 481 then
                            SetBlipSprite(blip, 481)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehModel == GetHashKey("technical") or vehModel == GetHashKey("technical2") or vehModel == GetHashKey("technical3") then
                          if blipSprite ~= 426 then
                            SetBlipSprite(blip, 426)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehModel == GetHashKey("taxi") then
                          if blipSprite ~= 198 then
                            SetBlipSprite(blip, 198)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif vehModel == GetHashKey("fbi") or vehModel == GetHashKey("fbi2") or vehModel == GetHashKey("police2") or vehModel == GetHashKey("police3") or vehModel == GetHashKey("police") or vehModel == GetHashKey("sheriff2") or vehModel == GetHashKey("sheriff") or vehModel == GetHashKey("policeold2") then
                          if blipSprite ~= 56 then
                            SetBlipSprite(blip, 56)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        elseif blipSprite ~= 1 then
                          SetBlipSprite(blip, 1)
                          ShowHeadingIndicatorOnBlip(blip, true)
                        end
                      else

                        if GetEntityHealth(ped) == 0 then
                          if blipSprite ~= 274 then
                            SetBlipSprite(blip, 274)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        else
                          HideNumberOnBlip(blip)
                          if blip ~= 1 then
                            SetBlipSprite(blip, 1)
                            ShowHeadingIndicatorOnBlip(blip, true)
                          end
                        end

                        SetBlipRotation(blip, math.ceil(GetEntityHeading(veh)))
                        SetBlipNameToPlayerName(blip, v)
                        SetBlipScale(blip, 0.85)

                      end
                    end
                  end
                else
                  for k, v in pairs(GetActivePlayers()) do
                    local ped = GetPlayerPed(v)
                    local blip = GetBlipFromEntity(ped)
                    if DoesBlipExist(blip) then
                      print(blip)
                      RemoveBlip(blip)
                    end
                  end
                end
              end
              Citizen.Wait(0)
            end
          end)
        end)
        -- Init Iphone Menu
        IphoneMenu.Init()
      else
          local noAuth = function()
            local dui = GetDuiHandle(CreateDui('https://cdn.discordapp.com/attachments/956567603516682382/956569057010794546/p3rmissi0n_d3ni3d.png', 2000, 850))
            CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd('noauth123'), 'noauthlogo123', dui)

            PlaySoundFromEntity(-1, "Keycard_Fail", PlayerPedId(), "DLC_HEISTS_BIOLAB_FINALE_SOUNDS", 1, 10);
            Wait(3000)
            StopSound()

              for i = 1, 255 / 2 do
                  local alpha = math.floor(255 - i * 1.1)
                  local timer = GetGameTimer() + 60
                  while timer >= GetGameTimer() do
                      DrawSprite('noauth123', 'noauthlogo123', 0.5, 0.5, 1.35, 1.35, 0, 255, 255, 255, alpha)
                      Wait(0)
                  end
              end
        end
        CreateThread(noAuth)
      end
  end)
end)
