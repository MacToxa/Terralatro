
SMODS.Joker{ --Shark Tooth Necklace
    key = "sharktoothnecklace",
    config = {
        extra = {
            xmult0 = 5
        }
    },
    loc_txt = {
        ['name'] = 'Shark Tooth Necklace',
        ['text'] = {
            [1] = '{X:red,C:white}x5{} {C:red}Mult{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
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
            return {
                Xmult = 5
            }
        end
    end
}