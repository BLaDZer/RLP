name = "Russification Pack for DST"
version = "3.0b_beta"

local desc = {
	en = "\nThe best russian localisation at the moment. Soure code was taken from the Russian Language Pack. Special thanks to Some1 and Alevastor!\n\nVersion: "..version,
	ru = "\nЛучший, на данный момент, русификатор. Код для базы был взят из мода Russian Language Pack. Огромное спасибо Some1'у и Alevastor'у за проделанную работу!\n\nНовый логотип был сделан Globalastick'ом.\n\t\nВерсия: "..version
}

language = language or "en"
description = desc[language] or desc["en"]

name = language == "ru" and "Русификатор для DST" or "Russification Pack for DST"

folder_name = folder_name or "workshop-"
is_beta = version:find("beta")
git_build = not folder_name:find("workshop-")

if is_beta then
	name = (language == "ru" and "[Бета]" or "[Beta]") .. name
end

if git_build then
	name = name.." (GitHub "..(language == "ru" and "Версия" or "Version")..")"
	description = description.."\n\n" .. (language == "ru" and "Не забывайте обновлять мод вручную!" or "Don't forget to update RLP manually!")
end

author = "Cunning fox, ma3ok, 何も, Hunger Artist, Sky Fly, Demi, Sinimolik" --Макс. 67 символов

forumthread = ""

api_version = 10

local icon_name = is_beta and "rlp_icon_beta" or "rlp_icon"
icon_atlas = "images/"..icon_name..".xml"
icon = icon_name..".tex"

priority = 10.1251526619

dont_starve_compatible = false
dst_compatible = true

client_only_mod = true

forge_compatible = true
gorge_compatible = true
