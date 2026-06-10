
SMODS.Joker{ --Necromatic Scroll
    key = "necromaticscroll",
    config = {
        extra = {
            handSizeBefore = 0,
            currenthandsize = 0,
            hand_size0 = 2
        }
    },
    loc_txt = {
        ['name'] = 'Necromatic Scroll',
        ['text'] = {
            [1] = '{C:attention}+2{} temporary hand size each hand for {C:planet}10 mana{}'
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
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["terralat_terralat_jokers"] = true },
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.handSizeBefore, ((G.hand and G.hand.config.card_limit or 0) or 0)}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if ((function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_terralat_manacrystal" then 
                        return true
                    end
                end
            end)() or (function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_terralat_bandofstarpower" then 
                        return true
                    end
                end
            end)()) then
                card.ability.extra.handSizeBefore = (G.hand and G.hand.config.card_limit or 0)
                return {
                    
                    func = function()
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(2).." Hand Limit", colour = G.C.BLUE})
                        
                        G.hand:change_size(2)
                        return true
                    end
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval  then
            return {
                
                func = function()
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Hand Limit set to "..tostring(card.ability.extra.handSizeBefore), colour = G.C.BLUE})
                    
                    local current_hand_size = (G.hand.config.card_limit or 0)
                    local target_hand_size = card.ability.extra.handSizeBefore
                    local difference = target_hand_size - current_hand_size
                    G.hand:change_size(difference)
                    return true
                end
            }
        end
    end
}