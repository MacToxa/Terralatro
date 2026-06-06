
SMODS.Joker{ --Avenger Emblem Recipe
    key = "avengeremblemrecipe",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Avenger Emblem Recipe',
        ['text'] = {
            [1] = 'Recipe; can be sold to craft Avenger Emblem',
            [2] = 'Requirements:',
            [3] = '- {C:spades}Spade{} Emblem',
            [4] = '- {C:hearts}Hearts{} Emblem',
            [5] = '- {C:diamonds}Diamonds{} Emblem',
            [6] = '- {C:clubs}Clubs{} Emblem'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 5,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 0.8
    },
    cost = 5,
    rarity = "terralat_recipes",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["terralat_terralat_jokers"] = true },
    
    set_ability = function(self, card, initial)
        card:set_edition("e_negative", true)
    end,
    
    calculate = function(self, card, context)
        if context.selling_self  then
            if ((function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_terralat_spadeemblem" then 
                        return true
                    end
                end
            end)() and (function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_terralat_heartsemblem" then 
                        return true
                    end
                end
            end)() and (function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_terralat_diamondemblem" then 
                        return true
                    end
                end
            end)() and (function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_terralat_clubemblem" then 
                        return true
                    end
                end
            end)()) then
                return {
                    func = function()
                        
                        local created_joker = false
                        if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                            created_joker = true
                            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_terralat_avengeremblem' })
                                    if joker_card then
                                        
                                        
                                    end
                                    G.GAME.joker_buffer = 0
                                    return true
                                end
                            }))
                        end
                        if created_joker then
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
                        end
                        return true
                    end,
                    extra = {
                        func = function()
                            local target_joker = nil
                            for i, joker in ipairs(G.jokers.cards) do
                                if joker.config.center.key == "j_terralat_spadeemblem" and not SMODS.is_eternal(joker) and not joker.getting_sliced then
                                    target_joker = joker
                                    break
                                end
                            end
                            
                            if target_joker then
                                target_joker.getting_sliced = true
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                                        return true
                                    end
                                }))
                                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Destroyed!", colour = G.C.RED})
                            end
                            return true
                        end,
                        colour = G.C.RED,
                        extra = {
                            func = function()
                                local target_joker = nil
                                for i, joker in ipairs(G.jokers.cards) do
                                    if joker.config.center.key == "j_terralat_heartsemblem" and not SMODS.is_eternal(joker) and not joker.getting_sliced then
                                        target_joker = joker
                                        break
                                    end
                                end
                                
                                if target_joker then
                                    target_joker.getting_sliced = true
                                    G.E_MANAGER:add_event(Event({
                                        func = function()
                                            target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                                            return true
                                        end
                                    }))
                                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Destroyed!", colour = G.C.RED})
                                end
                                return true
                            end,
                            colour = G.C.RED,
                            extra = {
                                func = function()
                                    local target_joker = nil
                                    for i, joker in ipairs(G.jokers.cards) do
                                        if joker.config.center.key == "j_terralat_diamondemblem" and not SMODS.is_eternal(joker) and not joker.getting_sliced then
                                            target_joker = joker
                                            break
                                        end
                                    end
                                    
                                    if target_joker then
                                        target_joker.getting_sliced = true
                                        G.E_MANAGER:add_event(Event({
                                            func = function()
                                                target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                                                return true
                                            end
                                        }))
                                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Destroyed!", colour = G.C.RED})
                                    end
                                    return true
                                end,
                                colour = G.C.RED,
                                extra = {
                                    func = function()
                                        local target_joker = nil
                                        for i, joker in ipairs(G.jokers.cards) do
                                            if joker.config.center.key == "j_terralat_clubemblem" and not SMODS.is_eternal(joker) and not joker.getting_sliced then
                                                target_joker = joker
                                                break
                                            end
                                        end
                                        
                                        if target_joker then
                                            target_joker.getting_sliced = true
                                            G.E_MANAGER:add_event(Event({
                                                func = function()
                                                    target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                                                    return true
                                                end
                                            }))
                                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Destroyed!", colour = G.C.RED})
                                        end
                                        return true
                                    end,
                                    colour = G.C.RED
                                }
                            }
                        }
                    }
                }
            end
        end
    end
}