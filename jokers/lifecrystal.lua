
SMODS.Joker{ --Life Crystal
    key = "lifecrystal",
    config = {
        extra = {
            chips0 = 20
        }
    },
    loc_txt = {
        ['name'] = 'Life Crystal',
        ['text'] = {
            [1] = '{C:blue}+20 Chips{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = "terralat_permanent",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["terralat_terralat_jokers"] = true },
    
    set_ability = function(self, card, initial)
        card:set_eternal(true)
        card:set_edition("e_negative", true)
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                chips = 20
            }
        end
    end
}