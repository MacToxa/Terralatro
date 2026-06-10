
SMODS.Joker{ --Feral Claws
    key = "feralclaws",
    config = {
        extra = {
            repetitions = 1,
            mult0 = 2
        }
    },
    loc_txt = {
        ['name'] = 'Feral Claws',
        ['text'] = {
            [1] = '{C:red}+2 Mult{} for every joker you have'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 7,
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
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if true then
                for i = 1, card.ability.extra.repetitions do
                    SMODS.calculate_effect({mult = 2}, card)
                end
            end
        end
    end
}