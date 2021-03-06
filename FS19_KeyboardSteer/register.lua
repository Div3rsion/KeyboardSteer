source(Utils.getFilename("keyboardSteerMogli.lua", g_currentModDirectory))
source(Utils.getFilename("keyboardSteerMogliScreen.lua", g_currentModDirectory))

keyboardSteerMogli_Register = {};
keyboardSteerMogli_Register.g_currentModDirectory = g_currentModDirectory

function keyboardSteerMogli_Register:loadMap(name)
	print("--- loading "..g_i18n:getText("ksmVERSION").." by mogli ---")
	
---- make l10n global 
--for n,t in pairs( g_i18n.texts ) do
--	if string.sub( n, 1, 3 ) == "ksm" and g_i18n.globalI18N.texts[n] == nil then
--		g_i18n.globalI18N.texts[n] = t
--	end
--end
--
--local l10nFilenamePrefixFull = Utils.getFilename("modDesc_l10n", keyboardSteerMogli_Register.g_currentModDirectory);
--local l10nXmlFile;
--local l10nFilename
--local langs = {g_languageShort, "en", "de"};
--for _, lang in ipairs(langs) do
--	l10nFilename = l10nFilenamePrefixFull.."_"..lang..".xml";
--	if fileExists(l10nFilename) then
--		l10nXmlFile = loadXMLFile("TempConfig", l10nFilename);
--		break;
--	end
--end
--if l10nXmlFile ~= nil then
--	local textI = 0;
--	while true do
--		local key = string.format("l10n.longTexts.longText(%d)", textI);
--		if not hasXMLProperty(l10nXmlFile, key) then
--			break;
--		end;
--		local name = getXMLString(l10nXmlFile, key.."#name");
--		local text = getXMLString(l10nXmlFile, key);
--		if name ~= nil and text ~= nil then
--			g_i18n.globalI18N.texts[name] = text:gsub("\r\n", "\n")
--		end;
--		textI = textI+1;
--	end;
--	delete(l10nXmlFile);
--end
	
	-- settings screen
	g_keyboardSteerMogliScreen = keyboardSteerMogliScreen:new()
	g_gui:loadGui(keyboardSteerMogli_Register.g_currentModDirectory .. "keyboardSteerMogliScreen.xml", "keyboardSteerMogliScreen", g_keyboardSteerMogliScreen)	
	FocusManager:setGui("MPLoadingScreen")
	
end;

function keyboardSteerMogli_Register:deleteMap()
  
end;

function keyboardSteerMogli_Register:keyEvent(unicode, sym, modifier, isDown)

end;

function keyboardSteerMogli_Register:mouseEvent(posX, posY, isDown, isUp, button)

end;

function keyboardSteerMogli_Register:update(dt)
	
end;

function keyboardSteerMogli_Register:draw()
  
end;

addModEventListener(keyboardSteerMogli_Register);