
SMODS.Joker{ --Cobalt Shield
    key = "cobaltshield",
    config = {
        extra = {
            xchips0 = 2
        }
    },
    loc_txt = {
        ['name'] = 'Cobalt Shield',
        ['text'] = {
            [1] = '{X:blue,C:white}x2{} {C:blue}Chips{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 0.8
    },
    cost = 4,
    rarity = 1,
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
                x_chips = 2
            }
        end
    end
}