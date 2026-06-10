
SMODS.Joker{ --Papyrus Scarab
    key = "papyrusscarab",
    config = {
        extra = {
            hand_size_increase = '1'
        }
    },
    loc_txt = {
        ['name'] = 'Papyrus Scarab',
        ['text'] = {
            [1] = '{C:attention}+1{} hand size'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 7,
        y = 2
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
    end,
    
    add_to_deck = function(self, card, from_debuff)
        G.hand:change_size(1)
    end,
    
    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(-1)
    end
}