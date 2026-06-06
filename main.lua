SMODS.Atlas({
    key = "modicon", 
    path = "ModIcon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "balatro", 
    path = "balatro.png", 
    px = 333,
    py = 216,
    prefix_config = { key = false },
    atlas_table = "ASSET_ATLAS"
})


SMODS.Atlas({
    key = "CustomJokers", 
    path = "CustomJokers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomDecks", 
    path = "CustomDecks.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

local NFS = require("nativefs")
to_big = to_big or function(a) return a end
lenient_bignum = lenient_bignum or function(a) return a end
-- this function is used to load everything within a folder.-- Jokerforge doesnt use it because it doesnt make loading order easy
local function load_folder(path)
    local files = NFS.getDirectoryItemsInfo(mod_path .. "/" .. path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file(path .. file_name))()
        end
    end
end
-- load the jokers
if true then
    assert(SMODS.load_file("jokers/avengeremblem.lua"))()
    assert(SMODS.load_file("jokers/heartsemblem.lua"))()
    assert(SMODS.load_file("jokers/spadeemblem.lua"))()
    assert(SMODS.load_file("jokers/diamondemblem.lua"))()
    assert(SMODS.load_file("jokers/clubemblem.lua"))()
    assert(SMODS.load_file("jokers/avengeremblemrecipe.lua"))()
    assert(SMODS.load_file("jokers/demonheart.lua"))()
    assert(SMODS.load_file("jokers/eyeofthegolem.lua"))()
    assert(SMODS.load_file("jokers/cobaltshield.lua"))()
    assert(SMODS.load_file("jokers/frozenturtleshell.lua"))()
    assert(SMODS.load_file("jokers/manacrystal.lua"))()
    assert(SMODS.load_file("jokers/bandofstarpower.lua"))()
    assert(SMODS.load_file("jokers/blizzardinabottle.lua"))()
    assert(SMODS.load_file("jokers/shinyredballoon.lua"))()
    assert(SMODS.load_file("jokers/sailfishboots.lua"))()
    assert(SMODS.load_file("jokers/starcloak.lua"))()
    assert(SMODS.load_file("jokers/blackbelt.lua"))()
    assert(SMODS.load_file("jokers/magmastone.lua"))()
    assert(SMODS.load_file("jokers/palladinsshield.lua"))()
    assert(SMODS.load_file("jokers/shackle.lua"))()
    assert(SMODS.load_file("jokers/sharktoothnecklace.lua"))()
    assert(SMODS.load_file("jokers/panicnecklace.lua"))()
    assert(SMODS.load_file("jokers/pygmynecklace.lua"))()
    assert(SMODS.load_file("jokers/necromaticscroll.lua"))()
    assert(SMODS.load_file("jokers/papyrusscarab.lua"))()
    assert(SMODS.load_file("jokers/lifecrystal.lua"))()
    assert(SMODS.load_file("jokers/platinumset.lua"))()
end
-- load the decks
if true then
    assert(SMODS.load_file("decks/platinum_armor.lua"))()
end

function SMODS.current_mod.reset_game_globals(run_start)
    local jokerPool = {}
    for k, v in pairs(G.P_CENTERS) do
        if v.set == 'Joker' then
            if (not v.mod) then
                G.GAME.banned_keys[k] = true
            end
        end
    end
end



assert(SMODS.load_file("rarities.lua"))()

SMODS.ObjectType({
    key = "terralat_food",
    cards = {
        ["j_gros_michel"] = true,
        ["j_egg"] = true,
        ["j_ice_cream"] = true,
        ["j_cavendish"] = true,
        ["j_turtle_bean"] = true,
        ["j_diet_cola"] = true,
        ["j_popcorn"] = true,
        ["j_ramen"] = true,
        ["j_selzer"] = true
    },
})

SMODS.ObjectType({
    key = "terralat_terralat_jokers",
    cards = {
        ["j_terralat_avengeremblem"] = true,
        ["j_terralat_heartsemblem"] = true,
        ["j_terralat_spadeemblem"] = true,
        ["j_terralat_diamondemblem"] = true,
        ["j_terralat_clubemblem"] = true,
        ["j_terralat_avengeremblemrecipe"] = true,
        ["j_terralat_demonheart"] = true,
        ["j_terralat_eyeofthegolem"] = true,
        ["j_terralat_cobaltshield"] = true,
        ["j_terralat_frozenturtleshell"] = true,
        ["j_terralat_manacrystal"] = true,
        ["j_terralat_bandofstarpower"] = true,
        ["j_terralat_blizzardinabottle"] = true,
        ["j_terralat_shinyredballoon"] = true,
        ["j_terralat_sailfishboots"] = true,
        ["j_terralat_starcloak"] = true,
        ["j_terralat_blackbelt"] = true,
        ["j_terralat_magmastone"] = true,
        ["j_terralat_palladinsshield"] = true,
        ["j_terralat_shackle"] = true,
        ["j_terralat_sharktoothnecklace"] = true,
        ["j_terralat_panicnecklace"] = true,
        ["j_terralat_pygmynecklace"] = true,
        ["j_terralat_necromaticscroll"] = true,
        ["j_terralat_papyrusscarab"] = true,
        ["j_terralat_lifecrystal"] = true,
        ["j_terralat_platinumset"] = true
    },
})


SMODS.current_mod.optional_features = function()
    return {
        cardareas = {} 
    }
end