
SMODS.Joker{ --Diamonds Emblem
    key = "diamondsemblem",
    config = {
        extra = {
            mult0 = 2
        }
    },
    loc_txt = {
        ['name'] = 'Diamonds Emblem',
        ['text'] = {
            [1] = '{C:red}+2 Mult{} every {C:diamonds}Diamonds{} card scored'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 0.5
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
        if context.individual and context.cardarea == G.play  then
            if context.other_card:is_suit("Diamonds") then
                return {
                    mult = 2
                }
            end
        end
    end
}