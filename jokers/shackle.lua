
SMODS.Joker{ --Shackle
    key = "shackle",
    config = {
        extra = {
            chips0 = 10
        }
    },
    loc_txt = {
        ['name'] = 'Shackle',
        ['text'] = {
            [1] = '{C:blue}+10 Chips{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
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
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                chips = 10
            }
        end
    end
}