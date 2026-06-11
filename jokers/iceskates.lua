
SMODS.Joker{ --Ice Skates
    key = "iceskates",
    config = {
        extra = {
            hands_change = '2',
            discards_change = '0'
        }
    },
    loc_txt = {
        ['name'] = 'Ice Skates',
        ['text'] = {
            [1] = '{C:blue}+2 hands{}, but no {C:red}discards{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
        y = 3
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
    end,
    
    add_to_deck = function(self, card, from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + 2
        card.ability.extra.original_discards = G.GAME.round_resets.discards
        G.GAME.round_resets.discards = 0
    end,
    
    remove_from_deck = function(self, card, from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands - 2
        if card.ability.extra.original_discards then
            G.GAME.round_resets.discards = card.ability.extra.original_discards
        end
    end
}