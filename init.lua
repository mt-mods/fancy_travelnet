travelnet.register_travelnet_box({
	nodename = ":fancy_travelnet:fancy_travelnet", color = "#FFFFF", dye = "dye:white"
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

if minetest.get_modpath("default") then
    minetest.register_craft({
        type = "shapeless",
        output = "fancy_travelnet:fancy_travelnet",
        recipe = {"group:travelnet", "default:gold_ingot"}
    })
end