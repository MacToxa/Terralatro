SMODS.Rarity {
    key = "permanent",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.2,
    badge_colour = HEX('9013fe'),
    loc_txt = {
        name = "Permanent"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "armor",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.1,
    badge_colour = HEX('b8e986'),
    loc_txt = {
        name = "Armor"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}