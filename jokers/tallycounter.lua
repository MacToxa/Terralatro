
SMODS.Joker{ --Tally Counter
    key = "tallycounter",
    config = {
        extra = {
            currentMult = 0
        }
    },
    loc_txt = {
        ['name'] = 'Tally Counter',
        ['text'] = {
            [1] = '{C:red}+1 Mult{} every scoring hand',
            [2] = 'Current {C:red}Mult{} bonus: #1#'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
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
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.currentMult}}
    end,
    
    calculate = function(self, card, context)
        if context.after and context.cardarea == G.jokers  then
            return {
                func = function()
                    card.ability.extra.currentMult = (card.ability.extra.currentMult) + 1
                    return true
                end
            }
        end
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                mult = card.ability.extra.currentMult
            }
        end
    end
}