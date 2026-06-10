
SMODS.Joker{ --Rocket Boots
    key = "rocketboots",
    config = {
        extra = {
            repetitions = 1,
            chips0 = 10
        }
    },
    loc_txt = {
        ['name'] = 'Rocket Boots',
        ['text'] = {
            [1] = '{C:blue}+10 Chips{} for each {C:red}discard{} left'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 4
    },
    display_size = {
        w = 71 * 1.2, 
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
                    SMODS.calculate_effect({chips = 10}, card)
                end
            end
        end
    end
}