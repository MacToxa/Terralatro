
SMODS.Joker{ --Treasure Magnet
    key = "treasuremagnet",
    config = {
        extra = {
            shop_slots_increase = '1',
            booster_slots_increase = '1'
        }
    },
    loc_txt = {
        ['name'] = 'Treasure Magnet',
        ['text'] = {
            [1] = '{C:attention}+1{} to shop item and booster slots'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
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
    end,
    
    add_to_deck = function(self, card, from_debuff)
        change_shop_size(1)
        SMODS.change_booster_limit(1)
    end,
    
    remove_from_deck = function(self, card, from_debuff)
        change_shop_size(-1)
        SMODS.change_booster_limit(-1)
    end
}