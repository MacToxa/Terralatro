
SMODS.Joker{ --Mana Crystal
    key = "manacrystal",
    config = {
        extra = {
            mana = 0,
            manaLimit = 0,
            var1 = 0
        }
    },
    loc_txt = {
        ['name'] = 'Mana Crystal',
        ['text'] = {
            [1] = '{C:planet}+20 Mana{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 0.8
    },
    cost = 5,
    rarity = "terralat_permanent",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["terralat_terralat_jokers"] = true },
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.mana, card.ability.extra.manaLimit, card.ability.extra.var1}}
    end,
    
    set_ability = function(self, card, initial)
        card:set_eternal(true)
        card:set_edition("e_negative", true)
    end,
    
    calculate = function(self, card, context)
        if context.after and context.cardarea == G.jokers  then
            if to_big((card.ability.extra.var1 or 0)) < to_big(card.ability.extra.manaLimit) then
                return {
                    func = function()
                        card.ability.extra.mana = (card.ability.extra.mana) + 5
                        return true
                    end
                }
            end
        end
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