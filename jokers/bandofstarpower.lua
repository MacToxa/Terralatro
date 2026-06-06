
SMODS.Joker{ --Band of Starpower
    key = "bandofstarpower",
    config = {
        extra = {
            mana = 0,
            manaLimit = 0
        }
    },
    loc_txt = {
        ['name'] = 'Band of Starpower',
        ['text'] = {
            [1] = '{C:planet}+20 Mana{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 0.8
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
        
        return {vars = {card.ability.extra.mana, card.ability.extra.manaLimit}}
    end,
    
    calculate = function(self, card, context)
        if context.buying_card and context.card.config.center.key == self.key and context.cardarea == G.jokers  then
            return {
                func = function()
                    card.ability.extra.manaLimit = (card.ability.extra.manaLimit) + 20
                    return true
                end
            }
        end
        if context.selling_self  then
            return {
                func = function()
                    card.ability.extra.manaLimit = math.max(0, (card.ability.extra.manaLimit) - 20)
                    return true
                end
            }
        end
    end
}