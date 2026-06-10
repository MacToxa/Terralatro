
SMODS.Joker{ --Avenger Emblem
    key = "avengeremblem",
    config = {
        extra = {
            xmult0 = 12,
            mult0 = 2
        }
    },
    loc_txt = {
        ['name'] = 'Avenger Emblem',
        ['text'] = {
            [1] = 'The combination of all suit emblems',
            [2] = 'Every card scored gives {C:red}+2 Mult{}',
            [3] = '{X:red,C:white}x12{} {C:red}Mult{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
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
    in_pool = function(self, args)
        return (
            not args 
            or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
            or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra'
        )
        and true
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                Xmult = 12
            }
        end
        if context.individual and context.cardarea == G.play  then
            return {
                mult = 2
            }
        end
    end
}