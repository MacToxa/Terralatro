
SMODS.Joker{ --Palladins Shield
    key = "palladinsshield",
    config = {
        extra = {
            palladinJokerCount = 0,
            jokercount = 0,
            repetitions = 1,
            chips0 = 10,
            chips = 50
        }
    },
    loc_txt = {
        ['name'] = 'Palladins Shield',
        ['text'] = {
            [1] = '{C:blue}+50 Chips{}',
            [2] = '{C:blue}+10 Chips{} for every joker excluding this one'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["terralat_terralat_jokers"] = true },
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.palladinJokerCount, #(G.jokers and (G.jokers and G.jokers.cards or {}) or {})}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if true then
                card.ability.extra.palladinJokerCount = #(G.jokers and G.jokers.cards or {})
                for i = 1, card.ability.extra.repetitions do
                    SMODS.calculate_effect({chips = 10}, card)
                end
            else
                return {
                    chips = 50
                }
            end
        end
    end
}