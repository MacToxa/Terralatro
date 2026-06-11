
SMODS.Joker{ --Band of Regeneration
    key = "bandofregeneration",
    config = {
        extra = {
            currentMult = 2,
            handsPlayed = 0
        }
    },
    loc_txt = {
        ['name'] = 'Band of Regeneration',
        ['text'] = {
            [1] = '{C:red}+2 Mult{}',
            [2] = '{C:red}+3 Mult{} every 3 hands',
            [3] = 'Current {C:red}Mult{}: #1#'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
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
        
        return {vars = {card.ability.extra.currentMult, card.ability.extra.handsPlayed}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if to_big((card.ability.extra.handsPlayed or 0)) >= to_big(2) then
                card.ability.extra.currentMult = (card.ability.extra.currentMult) + 3
                card.ability.extra.handsPlayed = 0
                return {
                    message = "+3"
                }
            else
                card.ability.extra.handsPlayed = (card.ability.extra.handsPlayed) + 1
                return {
                    mult = card.ability.extra.currentMult
                }
            end
        end
    end
}