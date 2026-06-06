
SMODS.Joker{ --Panic Necklace
    key = "panicnecklace",
    config = {
        extra = {
            discards0 = 2
        }
    },
    loc_txt = {
        ['name'] = 'Panic Necklace',
        ['text'] = {
            [1] = '{C:red}+2 discards{} on triggering the boss blind\'s ability'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 2
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
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if G.GAME.blind.triggered then
                return {
                    
                    func = function()
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(2).." Discards", colour = G.C.GREEN})
                        
                        G.GAME.current_round.discards_left = G.GAME.current_round.discards_left + 2
                        return true
                    end
                }
            end
        end
    end
}