
SMODS.Joker{ --Shiny Red Balloon
    key = "shinyredballoon",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Shiny Red Balloon',
        ['text'] = {
            [1] = 'Allows 1 card gaps in {C:attention}straights{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 1
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
        -- Shortcut straights enabled
    end,
    
    remove_from_deck = function(self, card, from_debuff)
        -- Shortcut straights disabled
    end
}


local smods_shortcut_ref = SMODS.shortcut
function SMODS.shortcut()
    if next(SMODS.find_card("j_terralat_shinyredballoon")) then
        return true
    end
    return smods_shortcut_ref()
end