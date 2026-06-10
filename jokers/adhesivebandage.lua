
SMODS.Joker{ --Adhesive Bandage
    key = "adhesivebandage",
    config = {
        extra = {
            odds = 6
        }
    },
    loc_txt = {
        ['name'] = 'Adhesive Bandage',
        ['text'] = {
            [1] = '#1# in #2# {C:attention}chance{} per card played to',
            [2] = 'create a random seal for that card'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 5,
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
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_terralat_adhesivebandage') 
        return {vars = {new_numerator, new_denominator}}
    end,
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_15f43884', 1, card.ability.extra.odds, 'j_terralat_adhesivebandage', false) then
                    local scored_card = context.other_card
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            
                            local random_seal = SMODS.poll_seal({mod = 10, guaranteed = true})
                            if random_seal then
                                scored_card:set_seal(random_seal, true)
                            end
                            card_eval_status_text(scored_card, 'extra', nil, nil, nil, {message = "Card Modified!", colour = G.C.ORANGE})
                            return true
                        end
                    }))
                    
                end
            end
        end
    end
}