
SMODS.Joker{ --Star Cloak
    key = "starcloak",
    config = {
        extra = {
            chips0 = 10,
            mult0 = 30
        }
    },
    loc_txt = {
        ['name'] = 'Star Cloak',
        ['text'] = {
            [1] = 'Uses {C:planet}30 Mana{} to add {C:red}30 Mult{} and {C:blue}10 Chips{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 5,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["terralat_terralat_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if ((function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_terralat_manacrystal" then 
                        return true
                    end
                end
            end)() and (function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_terralat_bandofstarpower" then 
                        return true
                    end
                end
            end)()) then
                return {
                    chips = 10,
                    extra = {
                        mult = 30
                    }
                }
            end
        end
    end
}