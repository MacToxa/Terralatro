
SMODS.Joker{ --Black Belt
    key = "blackbelt",
    config = {
        extra = {
            odds = 10,
            echips0 = 100
        }
    },
    loc_txt = {
        ['name'] = 'Black Belt',
        ['text'] = {
            [1] = '#1# in #2# {C:attention}chance{} to {X:blue,C:white}Chips^100{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 7,
        y = 1
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
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_terralat_blackbelt') 
        return {vars = {new_numerator, new_denominator}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_3abdf7c6', 1, card.ability.extra.odds, 'j_terralat_blackbelt', false) then
                    SMODS.calculate_effect({e_chips = 100}, card)
                end
            end
        end
    end
}