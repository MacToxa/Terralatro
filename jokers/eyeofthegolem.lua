
SMODS.Joker{ --Eye of the Golem
    key = "eyeofthegolem",
    config = {
        extra = {
            mod_probability0 = 2
        }
    },
    loc_txt = {
        ['name'] = 'Eye of the Golem',
        ['text'] = {
            [1] = '{C:attention}Doubles{} all probabilities'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 0.8
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
        if context.mod_probability  then
            local numerator, denominator = context.numerator, context.denominator
            numerator = numerator * (2)
            return {
                numerator = numerator, 
                denominator = denominator
            }
        end
    end
}