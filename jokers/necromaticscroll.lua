
SMODS.Joker{ --Necromatic Scroll
    key = "necromaticscroll",
    config = {
        extra = {
            hand_size0 = 2,
            hand_size = 2
        }
    },
    loc_txt = {
        ['name'] = 'Necromatic Scroll',
        ['text'] = {
            [1] = '{C:attention}+2{} hand size for {C:planet}10 mana{}'
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
    
    calculate = function(self, card, context)
        if context.setting_blind  then
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
                return {
                    
                    func = function()
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(2).." Hand Limit", colour = G.C.BLUE})
                        
                        G.hand:change_size(2)
                        return true
                    end
                }
            end
        end
        if context.starting_shop  then
            return {
                
                func = function()
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "-"..tostring(2).." Hand Limit", colour = G.C.BLUE})
                    
                    G.hand:change_size(-2)
                    return true
                end
            }
        end
    end
}