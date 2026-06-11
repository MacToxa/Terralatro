
SMODS.Joker{ --Frozen Turtle Shell
    key = "frozenturtleshell",
    config = {
        extra = {
            chips0 = 50
        }
    },
    loc_txt = {
        ['name'] = 'Frozen Turtle Shell',
        ['text'] = {
            [1] = 'While hands are {C:attention}below or equal to 2{}, grants {C:blue}+50 Chips{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
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
            if to_big(G.GAME.current_round.hands_left) <= to_big(2) then
                return {
                    chips = 50
                }
            end
        end
    end
}