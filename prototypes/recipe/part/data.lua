
--Base Overrides

--Base "electronic-circuit"
data.raw.recipe["electronic-circuit"].normal = {energy_required = 2, enabled = false, ingredients = {{"etched-1", 1}, {"wire-solder-1", 1}, {"data-1", 1}, 
	{"secondary-1", 1}}, result = "electronic-circuit"}
data.raw.recipe["electronic-circuit"].expensive = {energy_required = 2, enabled = false, ingredients = {{"etched-1", 2}, {"wire-solder-1", 2}, {"data-1", 2}, 
	{"secondary-1", 2}}, result = "electronic-circuit"}

--Base "advanced-circuit"
data.raw.recipe["advanced-circuit"].category = "advanced-crafting"
data.raw.recipe["advanced-circuit"].normal = {energy_required = 5, enabled = false, ingredients = {{"etched-2", 1}, {"wire-solder-1", 2}, 
	{"data-2", 1}, {"secondary-2", 1}, {"gear-2", 1}, {"rubber", 2}}, result = "advanced-circuit"}
data.raw.recipe["advanced-circuit"].expensive = {energy_required = 5, enabled = false, ingredients = {{"etched-2", 1}, {"wire-solder-1", 4}, 
	{"data-2", 2}, {"secondary-2", 4}, {"gear-2", 2}, {"rubber", 4}}, result = "advanced-circuit"}

--Base "processing-unit"
data.raw.recipe["processing-unit"].category = "advanced-crafting"
data.raw.recipe["processing-unit"].normal = {energy_required = 10, enabled = false, ingredients = {{"etched-3", 1}, {"wire-solder-2", 2}, 
	{"data-3", 1}, {"secondary-3", 1}, {"aluminum-plate", 2}, {"plastic-bar", 2}}, result = "processing-unit"}
data.raw.recipe["processing-unit"].expensive = {energy_required = 10, enabled = false, ingredients = {{"etched-3", 1}, {"wire-solder-2", 4}, 
	{"data-3", 2}, {"secondary-3", 4}, {"aluminum-plate", 4}, {"plastic-bar", 4}}, result = "processing-unit"}


data:extend(
{

--
--DATA PARTS
--
--WIRES
--Fine Copper Wire
{
	type = "recipe",
    name = "wire-copper",
	category = "basic-machine",
	energy_required = 1,
	enabled = false,
	ingredients = {{"copper-cable", 1}},
	result = "wire-copper",
	result_count = 4
},
--Tinned Fine Copper Wire
{
	type = "recipe",
    name = "wire-tinned",
	category = "basic-machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"copper-cable", 2}, {"tin-plate", 1}},
	result = "wire-tinned",
	result_count = 8
},
--Gold Wire
{
	type = "recipe",
    name = "wire-gold",
	category = "machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"gold-plate", 1}},
	result = "wire-gold",
	result_count = 4
},
--Fluxed Solder Wire
{
	type = "recipe",
    name = "wire-solder-1",
	category = "basic-machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"solder-1-plate", 2}, {"solder-flux", 1}},
	result = "wire-solder-1",
	result_count = 8
},
--Fluxed Silver Solder Wire
{
	type = "recipe",
    name = "wire-solder-2",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"solder-2-plate", 2}, {"solder-flux", 1}},
	result = "wire-solder-2",
	result_count = 8
},
--
--SECONDARY PARTS
--Resistor
{
	type = "recipe",
    name = "secondary-1",
	category = "basic-machine",
	energy_required = 2,
	enabled = false,
	ingredients = {{"wire-tinned", 1}, {"graphite-powder", 1}},
	result = "secondary-1",
	result_count = 1
},
--Capacitor
{
	type = "recipe",
    name = "secondary-2",
	category = "machine",
	energy_required = 4,
	enabled = false,
	ingredients = {{"wire-tinned", 2}, {type = "fluid", name = "lubricant", amount = 10}, {"plastic-bar", 2}},
	result = "secondary-2"
},
--Resonator
{
	type = "recipe",
    name = "secondary-3",
	category = "advanced-machine",
	energy_required = 5,
	enabled = false,
	ingredients = {{"wire-gold", 2}, {"crystal-quartz", 1}, {"plastic-bar", 1}},
	result = "secondary-3"
},
--
--SILICON WAFERS
--Clean Silicon Wafer
{
	type = "recipe",
    name = "wafer-1",
	category = "machine",
	energy_required = 8,
	enabled = false,
	ingredients = {{"silicon-boule", 1}, {type = "fluid", name = "phosphoric-acid", amount = 10}},
	result = "wafer-1",
	result_count = 4
},
--Circuit Etched Silicon Wafer
{
	type = "recipe",
    name = "wafer-2",
	category = "chemistry",
	energy_required = 50,
	enabled = false,
	ingredients = {{"wafer-1", 10}, {"boron-oxide", 1}, {"sodium-hydroxide", 5}, {type = "fluid", name = "oxygen", amount = 20}},
	result = "wafer-2",
	result_count = 10
},
--VLSI (Very Large Scale Integration) Silicon Wafer
{
	type = "recipe",
    name = "wafer-3",
	category = "chemistry",
	energy_required = 200,
	enabled = false,
	ingredients = {{"wafer-2", 40}, {"crystal-ruby", 1}, {type = "fluid", name = "nitrogen", amount = 100}, {type = "fluid", name = "carbon-tetrafluoride", amount = 20}},
	result = "wafer-3",
	result_count = 20
},
--Solar Cell Wafer
{
	type = "recipe",
    name = "wafer-solar",
	category = "advanced-crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"wafer-2", 2}, {"wire-tinned", 2}},
	result = "wafer-solar"
},
--
--PRIMARY DATA PARTS
--Solenoid Relay
{
	type = "recipe",
    name = "data-1",
	category = "crafting",
	energy_required = 5,
	enabled = false,
	ingredients = {{"wire-tinned", 2}, {"wire-copper", 8}, {"rod-2", 1}, {"bronze-plate", 1}},
	result = "data-1",
	result_count = 2
},
--Integrated Transistor Package
{
	type = "recipe",
    name = "data-2",
	category = "crafting-with-fluid",
	energy_required = 10,
	enabled = false,
	ingredients = {{"wire-tinned", 2}, {"wafer-2", 2}, {type = "fluid", name = "uncured-resol", amount = 10}, {"chromium-plate", 1}, 
		{"silver-plate", 1}},
	result = "data-2",
	result_count = 2
},
--Central Processing Unit
{
	type = "recipe",
    name = "data-3",
	category = "crafting-with-fluid",
	energy_required = 20,
	enabled = false,
	ingredients = {{"wire-gold", 4}, {"wafer-3", 2}, {type = "fluid", name = "uncured-epoxy", amount = 10}, {"tungsten-block", 1}, {"platinum-plate", 1}},
	result = "data-3",
	result_count = 2
},


--
--BOARD
--
--METALLIZED BOARD
--Metallized Board 1 A
{
	type = "recipe",
    name = "metallized-1-a",
	category = "crafting",
	energy_required = 2,
	enabled = false,
	ingredients = {{"wood", 1}, {"sheet-tinned", 2}},
	result = "metallized-1"
},
--Metallized Board 1 B
{
	type = "recipe",
    name = "metallized-1-b",
	category = "crafting-with-fluid",
	energy_required = 2,
	enabled = false,
	ingredients = {{"fiber-plastic", 1}, {"sheet-tinned", 2}, {type = "fluid", name = "uncured-resol", amount = 10}},
	result = "metallized-1"
},
--Metallized Board 1 C
{
	type = "recipe",
    name = "metallized-1-c",
	category = "crafting-with-fluid",
	energy_required = 2,
	enabled = false,
	ingredients = {{"fiber-glass", 2}, {"sheet-tinned", 2}, {type = "fluid", name = "uncured-epoxy", amount = 10}},
	result = "metallized-1",
	result_count = 2
},
--Metallized Board 2 A
{
	type = "recipe",
    name = "metallized-2-a",
	category = "crafting-with-fluid",
	energy_required = 4,
	enabled = false,
	ingredients = {{"fiber-plastic", 2}, {"sheet-tinned", 2}, {type = "fluid", name = "uncured-resol", amount = 10}},
	result = "metallized-2"
},
--Metallized Board 2 B
{
	type = "recipe",
    name = "metallized-2-b",
	category = "crafting-with-fluid",
	energy_required = 5,
	enabled = false,
	ingredients = {{"fiber-glass", 2}, {"sheet-tinned", 1}, {"sheet-gilded", 1}, {type = "fluid", name = "uncured-epoxy", amount = 10}},
	result = "metallized-2",
	result_count = 2
},
--Metallized Board 3
{
	type = "recipe",
    name = "metallized-3",
	category = "crafting-with-fluid",
	energy_required = 5,
	enabled = false,
	ingredients = {{"fiber-glass", 1}, {"sheet-gilded", 1}, {type = "fluid", name = "uncured-epoxy", amount = 10}},
	result = "metallized-3"
},
--
--ETCHED BOARD
--Etched Board 1 A
{
	type = "recipe",
    name = "etched-1-a",
	icon = "__xander-mod__/graphics/recipe/board/etched-1.png",
	category = "basic-chemistry",
	energy_required = 8,
	enabled = false,
	ingredients = {{"metallized-1", 8}, {type = "fluid", name = "sulfuric-acid", amount = 10}},
	results = {{"etched-1", 8}},
	subgroup = "board"
},
--Etched Board 1 B
{
	type = "recipe",
    name = "etched-1-b",
	icon = "__xander-mod__/graphics/recipe/board/etched-1.png",
	category = "chemistry",
	energy_required = 4,
	enabled = false,
	ingredients = {{"metallized-1", 8}, {type = "fluid", name = "sulfuric-acid", amount = 10}, {"hematite", 1}},
	results = {{"etched-1", 8}},
	subgroup = "board"
},
--Etched Board 2
{
	type = "recipe",
    name = "etched-2",
	icon = "__xander-mod__/graphics/recipe/board/etched-2.png",
	category = "chemistry",
	energy_required = 8,
	enabled = false,
	ingredients = {{"metallized-2", 8}, {type = "fluid", name = "nitric-acid", amount = 10}, {type = "fluid", name = "hydrogen-chloride", amount = 10}, 
		{"hematite", 1}},
	results = {{"etched-2", 8}, {type = "fluid", name = "waste-water", amount = 20}},
	subgroup = "board"
},
--Etched Board 3
{
	type = "recipe",
    name = "etched-3",
	icon = "__xander-mod__/graphics/recipe/board/etched-2.png",
	category = "chemistry",
	energy_required = 10,
	enabled = false,
	ingredients = {{"metallized-3", 8}, {type = "fluid", name = "chlorine", amount = 10}, {type = "fluid", name = "hydrogen-chloride", amount = 10}},
	results = {{"etched-3", 8}, {type = "fluid", name = "waste-water", amount = 10}},
	subgroup = "board"
},
--
--COMPLETE CIRCUITS
--Base "electronic-circuit" placeholder
--Base "advanced-circuit" placeholder
--Base "processing-unit" placeholder

})