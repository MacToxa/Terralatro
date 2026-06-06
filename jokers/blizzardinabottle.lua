
SMODS.Joker{ --Blizzard in a Bottle
    key = "blizzardinabottle",
    config = {
        extra = {
            hands0 = 1,
            hands = 1
        }
    },
    loc_txt = {
        ['name'] = 'Blizzard in a Bottle',
        ['text'] = {
            [1] = '+1 {C:blue}hand{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
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
        if context.selling_self  then
            return {
                
                func = function()
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "-"..tostring(1).." Hands", colour = G.C.RED})
                    
                    G.GAME.round_resets.hands = G.GAME.round_resets.hands - 1
                    ease_hands_played(-1)
                    
                    return true
                end
            }
        end
        if context.buying_card and context.card.config.center.key == self.key and context.cardarea == G.jokers  then
            return {
                
                func = function()
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(1).." Hands", colour = G.C.GREEN})
                    
                    G.GAME.round_resets.hands = G.GAME.round_resets.hands + 1
                    ease_hands_played(1)
                    
                    return true
                end
            }
        end
    end
}