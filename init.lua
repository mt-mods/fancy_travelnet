travelnet.register_travelnet_box({
	nodename = ":fancy_travelnet:fancy_travelnet", color = "#FFFFF", dye = "dye:white"
})

travelnet.register_travelnet_box({
	nodename = ":fancy_travelnet:undercore", color = "#FFFFF", dye = "dye:white"
})

minetest.override_item("fancy_travelnet:fancy_travelnet", {
    description = "fancy travelnet",
    tiles = {
        "fancy_travelnet_front.png",
        "fancy_travelnet_back.png",
        "fancy_travelnet_side.png",
        "travelnet_top.png",
        "travelnet_bottom.png",
    },
    inventory_image = "travelnet_inv_base.png^(travelnet_inv_colorable.png^[multiply:#f3b252)",
})

minetest.override_item("fancy_travelnet:undercore", {
    description = "fancy travelnet",
    tiles = {
        {
            image = "fancy_travelnet_undercore_front.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 32,
                length = 1.5
            },
        },
        "fancy_travelnet_undercore_back.png",
        "fancy_travelnet_undercore_side.png",
        "[combine:16x16:0,-16=fancy_travelnet_undercore_side.png",
        {
            image = "fancy_travelnet_undercore_bottom.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 1
            },
        },
    },
    inventory_image = "fancy_travelnet_undercore_inv.png",
})

if minetest.get_modpath("default") then
    minetest.register_craft({
        type = "shapeless",
        output = "fancy_travelnet:fancy_travelnet",
        recipe = {"group:travelnet", "default:gold_ingot"}
    })
end