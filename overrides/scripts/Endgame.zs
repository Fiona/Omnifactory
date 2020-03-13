import mods.gregtech.recipe.RecipeMap;

//Dense Ores
reactor.recipeBuilder().inputs(<densemetals:dense_redstone_ore>).fluidInputs(<liquid:nitric_acid> * 1000).outputs([<gregtech:ore_redstone_0> * 16]).duration(200).EUt(500).buildAndRegister();
reactor.recipeBuilder().inputs(<densemetals:dense_emerald_ore>).fluidInputs(<liquid:nitric_acid> * 1000).outputs([<gregtech:ore_emerald_0> * 16]).duration(200).EUt(500).buildAndRegister();
reactor.recipeBuilder().inputs(<densemetals:dense_diamond_ore>).fluidInputs(<liquid:nitric_acid> * 1000).outputs([<gregtech:ore_diamond_0> * 16]).duration(200).EUt(500).buildAndRegister();
reactor.recipeBuilder().inputs(<densemetals:dense_iron_ore>).fluidInputs(<liquid:nitric_acid> * 1000).outputs([<gregtech:ore_iron_0> * 16]).duration(200).EUt(500).buildAndRegister();
reactor.recipeBuilder().inputs(<densemetals:dense_lapis_ore>).fluidInputs(<liquid:nitric_acid> * 1000).outputs([<gregtech:ore_lapis_0> * 16]).duration(200).EUt(500).buildAndRegister();
reactor.recipeBuilder().inputs(<densemetals:dense_gold_ore>).fluidInputs(<liquid:nitric_acid> * 1000).outputs([<gregtech:ore_gold_0> * 16]).duration(200).EUt(500).buildAndRegister();
reactor.recipeBuilder().inputs(<densemetals:dense_coal_ore>).fluidInputs(<liquid:nitric_acid> * 1000).outputs([<gregtech:ore_coal_0> * 16]).duration(200).EUt(500).buildAndRegister();
reactor.recipeBuilder().inputs(<contenttweaker:denseoilshale>).fluidInputs(<liquid:nitric_acid> * 1000).outputs([<gregtech:ore_oilsands_0:2> * 16]).duration(200).EUt(500).buildAndRegister();

<deepmoblearning:glitch_fragment>.addTooltip(format.aqua(format.italic("Obtained by crushing Glitch Hearts against Obsidian.")));
<appliedenergistics2:material:1>.addTooltip(format.aqua(format.italic("Obtained by charging with RF power in the AE2 Charger.")));



//Gravistar
autoclave.findRecipe(7680, [<minecraft:nether_star>], [<liquid:neutronium> * 288]).remove();
autoclave.recipeBuilder().inputs(<minecraft:nether_star>).fluidInputs(<liquid:neutronium> * 36).outputs([<gregtech:meta_item_1:32726>]).duration(480).EUt(7680).buildAndRegister();

recipes.addShaped(<advsolars:sunnarium_plate> * 4, [
	[<gregtech:meta_item_2:32435>,<gregtech:meta_item_2:32435>,<gregtech:meta_item_2:32435>],
	[<gregtech:meta_item_2:32435>,<advsolars:sunnarium>,<gregtech:meta_item_2:32435>],
	[<gregtech:meta_item_2:32435>,<gregtech:meta_item_2:32435>,<gregtech:meta_item_2:32435>]]);

recipes.addShaped(<advsolars:sunnarium_enriched> * 4, [
	[<contenttweaker:stabilizedneptunium>,<contenttweaker:stabilizedamericium>,<contenttweaker:stabilizedneptunium>],
	[<contenttweaker:stabilizedamericium>,<advsolars:sunnarium>,<contenttweaker:stabilizedamericium>],
	[<contenttweaker:stabilizedneptunium>,<contenttweaker:stabilizedamericium>,<contenttweaker:stabilizedneptunium>]]);
	
recipes.addShaped(<advsolars:sunnarium_enriched_plate>, [
	[null,<advsolars:sunnarium_enriched>,null],
	[<advsolars:sunnarium_enriched>,<advsolars:sunnarium_plate>,<advsolars:sunnarium_enriched>],
	[null,<advsolars:sunnarium_enriched>,null]]);
	
//Radon
electrolyzer.recipeBuilder().inputs([<ore:dustSphalerite> * 3]).outputs([<gregtech:meta_item_1:2079>,<gregtech:meta_item_1:1079> * 2, <gregtech:meta_item_1:2065>,<gregtech:meta_item_1:1025>]).duration(200).EUt(30).buildAndRegister();
electrolyzer.recipeBuilder().inputs([<contenttweaker:radiumsalt>]).outputs([<gregtech:meta_item_1:2151>]).fluidOutputs(<liquid:radon> * 1000).duration(200).EUt(2000).buildAndRegister();
electrolyzer.recipeBuilder().inputs([<minecraft:glass> * 4]).outputs([<minecraft:quartz>]).duration(100).EUt(20).buildAndRegister();
reactor.findRecipe(8, [<gregtech:meta_item_1:10052> * 3], [null]).remove();
autoclave.findRecipe(40, [<gregtech:meta_item_1:2012>], [<liquid:platinum> * 1]).remove();

//Gem Sensor
recipes.addShaped(<contenttweaker:gemsensor>, [
	[null,<advancedrocketry:satelliteprimaryfunction>,null],
	[<ore:plateTungstenCarbide>,<metaitem:sensor.iv>,<ore:plateTungstenCarbide>],
	[null,<ore:plateTungstenCarbide>,null]]);

//Composition Sensor
recipes.remove(<advancedrocketry:satelliteprimaryfunction:1>);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction:1>, [
	[null,<advancedrocketry:satelliteprimaryfunction>,null],
	[<ore:plateStainlessSteel>,<metaitem:sensor.hv>,<ore:plateStainlessSteel>],
	[null,<ore:plateStainlessSteel>,null]]);	
	
//Cutting Gemstones

saw.recipeBuilder().inputs([<ore:gemExquisiteEmerald>]).fluidInputs([<liquid:water> * 90]).outputs([<ore:gemFlawlessEmerald>.firstItem * 2]).duration(120).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemExquisiteEmerald>]).fluidInputs([<liquid:distilled_water> * 67]).outputs([<ore:gemFlawlessEmerald>.firstItem * 2]).duration(78).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemExquisiteEmerald>]).fluidInputs([<liquid:lubricant> * 22]).outputs(<ore:gemFlawlessEmerald>.firstItem * 2).duration(30).EUt(300).buildAndRegister();

saw.recipeBuilder().inputs([<ore:gemFlawlessEmerald>]).fluidInputs([<liquid:water> * 90]).outputs([<ore:gemEmerald>.firstItem * 4]).duration(120).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemFlawlessEmerald>]).fluidInputs([<liquid:distilled_water> * 67]).outputs([<ore:gemEmerald>.firstItem * 4]).duration(78).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemFlawlessEmerald>]).fluidInputs([<liquid:lubricant> * 22]).outputs([<ore:gemEmerald>.firstItem * 4]).duration(30).EUt(300).buildAndRegister();

saw.recipeBuilder().inputs([<ore:gemExquisiteDiamond>]).fluidInputs([<liquid:water> * 90]).outputs([<ore:gemFlawlessDiamond>.firstItem * 2]).duration(120).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemExquisiteDiamond>]).fluidInputs([<liquid:distilled_water> * 67]).outputs([<ore:gemFlawlessDiamond>.firstItem * 2]).duration(78).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemExquisiteDiamond>]).fluidInputs([<liquid:lubricant> * 22]).outputs(<ore:gemFlawlessDiamond>.firstItem * 2).duration(30).EUt(300).buildAndRegister();

saw.recipeBuilder().inputs([<ore:gemFlawlessDiamond>]).fluidInputs([<liquid:water> * 90]).outputs([<ore:gemDiamond>.firstItem * 4]).duration(120).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemFlawlessDiamond>]).fluidInputs([<liquid:distilled_water> * 67]).outputs([<ore:gemDiamond>.firstItem * 4]).duration(78).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemFlawlessDiamond>]).fluidInputs([<liquid:lubricant> * 22]).outputs([<ore:gemDiamond>.firstItem * 4]).duration(30).EUt(300).buildAndRegister();

saw.recipeBuilder().inputs([<ore:gemExquisiteRuby>]).fluidInputs([<liquid:water> * 90]).outputs([<ore:gemFlawlessRuby>.firstItem * 2]).duration(120).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemExquisiteRuby>]).fluidInputs([<liquid:distilled_water> * 67]).outputs([<ore:gemFlawlessRuby>.firstItem * 2]).duration(78).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemExquisiteRuby>]).fluidInputs([<liquid:lubricant> * 22]).outputs(<ore:gemFlawlessRuby>.firstItem * 2).duration(30).EUt(300).buildAndRegister();

saw.recipeBuilder().inputs([<ore:gemFlawlessRuby>]).fluidInputs([<liquid:water> * 90]).outputs([<ore:gemRuby>.firstItem * 4]).duration(120).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemFlawlessRuby>]).fluidInputs([<liquid:distilled_water> * 67]).outputs([<ore:gemRuby>.firstItem * 4]).duration(78).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemFlawlessRuby>]).fluidInputs([<liquid:lubricant> * 22]).outputs([<ore:gemRuby>.firstItem * 4]).duration(30).EUt(300).buildAndRegister();

saw.recipeBuilder().inputs([<ore:gemExquisiteLapis>]).fluidInputs([<liquid:water> * 90]).outputs([<ore:gemFlawlessLapis>.firstItem * 2]).duration(120).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemExquisiteLapis>]).fluidInputs([<liquid:distilled_water> * 67]).outputs([<ore:gemFlawlessLapis>.firstItem * 2]).duration(78).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemExquisiteLapis>]).fluidInputs([<liquid:lubricant> * 22]).outputs(<ore:gemFlawlessLapis>.firstItem * 2).duration(30).EUt(300).buildAndRegister();

saw.recipeBuilder().inputs([<ore:gemFlawlessLapis>]).fluidInputs([<liquid:water> * 90]).outputs([<ore:gemLapis>.firstItem * 12]).duration(120).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemFlawlessLapis>]).fluidInputs([<liquid:distilled_water> * 67]).outputs([<ore:gemLapis>.firstItem * 12]).duration(78).EUt(300).buildAndRegister();
saw.recipeBuilder().inputs([<ore:gemFlawlessLapis>]).fluidInputs([<liquid:lubricant> * 22]).outputs([<ore:gemLapis>.firstItem * 12]).duration(30).EUt(300).buildAndRegister();

//Wetware Boards

assembler.findRecipe(480, [<metaitem:board.multilayer.fiber_reinforced>,<metaitem:circuit.good>], [<liquid:polystyrene> * 144]).remove();
reactor.recipeBuilder().inputs([<metaitem:board.multilayer.fiber_reinforced>,<contenttweaker:draconicstemcells> * 8]).fluidInputs(<liquid:sterilized_growth_medium> * 4000).outputs([<metaitem:board.wetware>]).fluidOutputs(<liquid:raw_growth_medium> * 3000).duration(6000).EUt(3000).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:dragon_egg>]).fluidInputs(<liquid:sterilized_growth_medium> * 10000).outputs([<contenttweaker:draconicstemcells> * 64]).duration(6000).EUt(25000).buildAndRegister();

//Growth Medium
reactor.recipeBuilder().inputs([<gregtech:meta_item_1:2938>]).fluidInputs(<liquid:distilled_water> * 1000).fluidOutputs([<liquid:raw_growth_medium> * 1000]).duration(200).EUt(200).buildAndRegister();

//Neutronium Plating
blast_furnace.recipeBuilder().inputs([<avaritia:resource:2> * 9]).fluidInputs([<liquid:xenon> * 250]).outputs(<avaritia:resource:3>).property("temperature", 9600).duration(40).EUt(500000).buildAndRegister();

//Neutron Reflector
assembler.findRecipe(120, [<gregtech:meta_item_1:12007> * 30, <gregtech:meta_item_1:12300> * 3, <gregtech:meta_item_2:32435>], [<liquid:tin_alloy> * 13824]).remove();



//Superconductor Wires
assembler.findRecipe(512, [<gregtech:cable:200> * 3, <ore:plateTungstenSteel>.firstItem * 3, <metaitem:electric.pump.lv>], [<liquid:nitrogen> * 2000]).remove();
assembler.findRecipe(512, [<gregtech:cable:135> * 3, <ore:plateTungstenSteel>.firstItem * 3, <metaitem:electric.pump.lv>], [<liquid:nitrogen> * 2000]).remove();
assembler.findRecipe(512, [<gregtech:cable:195> * 3, <ore:plateTungstenSteel>.firstItem * 3, <metaitem:electric.pump.lv>], [<liquid:nitrogen> * 2000]).remove();
freezer.recipeBuilder().inputs(<gregtech:cable:710>).fluidInputs([<liquid:moltennetherstar> * 144]).outputs(<gregtech:cable:354>).duration(100).EUt(6000).buildAndRegister();

//2nd t6 circuits
assembler.findRecipe(32800, [<metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <gregtech:meta_item_2:16200> * 2, <metaitem:board.wetware>, <gregtech:meta_item_2:32474>, <gregtech:meta_item_2:32481>], [<liquid:tin> * 144]).remove();
assembler.findRecipe(32800, [<metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <gregtech:meta_item_2:16200> * 2, <metaitem:board.wetware>, <gregtech:meta_item_2:32474>, <gregtech:meta_item_2:32481>], [<liquid:soldering_alloy> * 72]).remove();

//t7 circuits
assembler.findRecipe(34400, [<gregtech:meta_item_2:16200> * 6, <gregtech:meta_item_2:32456> * 4, <metaitem:component.smd.capacitor> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.wetware_processor> * 2, <metaitem:board.wetware>], [<liquid:tin> * 288]).remove();
assembler.findRecipe(34400, [<gregtech:meta_item_2:16200> * 6, <gregtech:meta_item_2:32456> * 4, <metaitem:component.smd.capacitor> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.wetware_processor> * 2, <metaitem:board.wetware>], [<liquid:soldering_alloy> * 144]).remove();

//t8 circuits
assembler.findRecipe(34400, [<gregtech:meta_item_2:16200> * 6, <metaitem:component.smd.diode> * 4, <metaitem:plate.nor_memory_chip> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.wetware_assembly> * 3, <metaitem:board.wetware> * 2], [<liquid:tin> * 288]).remove();
assembler.findRecipe(34400, [<gregtech:meta_item_2:16200> * 6, <metaitem:component.smd.diode> * 4, <metaitem:plate.nor_memory_chip> * 4, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.wetware_assembly> * 3, <metaitem:board.wetware> * 2], [<liquid:soldering_alloy> * 144]).remove();

recipes.remove(<gregtech:meta_item_2:26708>);
recipes.remove(<gregtech:meta_item_2:26707>);

//neuroprocessor
assembly_line.findRecipe(80000, [<gregtech:meta_item_1:19391> * 64, <gtadditions:ga_meta_item:32018> * 8, <gregtech:meta_item_2:32454> * 8, <gregtech:meta_item_1:12026> * 8, <gregtech:meta_item_1:12183> * 4, <metaitem:board.wetware>], [<liquid:sterilized_growth_medium> * 250, <liquid:uumatter> * 100, <liquid:water> * 250, <liquid:lava> * 1000]).remove();
extractor.findRecipe(512, [<minecraft:egg>], [null]).remove();
assembly_line.recipeBuilder().inputs(<contenttweaker:draconicstemcells> * 8, <gregtech:cable:708> * 32, <gregtech:meta_item_2:32498> * 8, <metaitem:board.wetware> * 4).fluidInputs(<liquid:sterilized_growth_medium> * 16000).outputs(<gtadditions:ga_meta_item:32015>).duration(200).EUt(80000).buildAndRegister();


extractor.recipeBuilder().inputs(<contenttweaker:impossiblerealmdata>).outputs([<contenttweaker:quantumflux>]).duration(100).EUt(3000).buildAndRegister();


recipes.remove(<extrautils2:rainbowgenerator>);
recipes.addShaped(<extrautils2:rainbowgenerator>, [
	[<extrautils2:opinium:8>,<extrautils2:rainbowgenerator:2>,<extrautils2:opinium:8>],
	[<extrautils2:opinium:8>,<contenttweaker:heartofauniverse>,<extrautils2:opinium:8>],
	[<extrautils2:opinium:8>,<extrautils2:rainbowgenerator:1>,<extrautils2:opinium:8>]]);

recipes.remove(<craftelytra:elytra_wing>);
recipes.remove(<minecraft:elytra>);

recipes.addShaped(<craftelytra:elytra_wing>, [
	[null,<gregtech:meta_item_1:12049>,<gregtech:meta_item_1:12049>],
	[<gregtech:meta_item_1:12049>,<gregtech:meta_item_2:25113>,null],
	[<gregtech:meta_item_1:12049>,<gregtech:meta_item_1:12049>,null]]);

recipes.addShaped(<minecraft:elytra>, [
	[null,null,null],
	[<craftelytra:elytra_wing>,<enderio:item_material:7>,<craftelytra:elytra_wing>],
	[null,null,null]]);

//ZPM Field Generator
assembly_line.recipeBuilder().inputs(<gregtech:meta_item_2:16047> *64, <gregtech:meta_item_2:16047> *64,<gregtech:meta_item_2:16047> *64,<gregtech:meta_item_2:16047> *64,<gregtech:meta_item_2:16047> *64,<gregtech:meta_item_2:16047> *64,<gregtech:meta_item_1:32686> * 4,<gregtech:frame_tritanium>,<moreplates:awakened_draconium_plate>*8,<gregtech:cable:6307>*6,<extendedcrafting:material:40>).fluidInputs(<liquid:soldering_alloy> * 1152).outputs(<gregtech:meta_item_1:32676>).duration(600).EUt(122880).buildAndRegister();

fluidextractor.recipeBuilder().inputs(<contenttweaker:sentientgear>).fluidOutputs([<liquid:tungsten_carbide> * 40320]).duration(1000).EUt(3000).buildAndRegister();

fusion_reactor.findRecipe(4096, [null], [<liquid:deuterium> * 125, <liquid:tritium> * 125]).remove();	

	fusion_reactor.recipeBuilder()
	.fluidInputs([<liquid:berkelium> * 16, <liquid:californium> * 16])
    .fluidOutputs(<liquid:einsteinium> * 16)
    .duration(100)
    .EUt(15360)
    .property("eu_to_start", 400000)
    .buildAndRegister();

recipes.remove(<gregtech:machine_casing:6>);
recipes.remove(<gregtech:machine:506>);
recipes.addShaped(<gregtech:machine:506>, [
	[<ore:platePlastic>, <ore:plateLumium>, <ore:platePlastic>], 
	[<ore:cableGtSingleVanadiumGallium>, <gregtech:machine_casing:6>, <ore:cableGtSingleVanadiumGallium>]]);
assembler.findRecipe(16, [<ore:plateChrome>.firstItem * 8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], [null]).remove();	
assembler.recipeBuilder().inputs(<ore:plateLumium> * 8).outputs([<gregtech:machine_casing:6>]).duration(30).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:plateNeutronium> * 3, <gregtech:meta_item_1:14972> * 5]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1})).outputs([<gregtech:frame_neutronium> * 4]).duration(200).EUt(8).buildAndRegister();







//Rare Earth
centrifuge.findRecipe(24, [<gregtech:meta_item_1:3215>], [null]).remove();
centrifuge.recipeBuilder().inputs(<gregtech:meta_item_1:3215>).outputs([<minecraft:redstone>, <gregtech:meta_item_1:326>]).duration(900).EUt(24).buildAndRegister();


//Bismuth
centrifuge.findRecipe(24, [<gregtech:meta_item_1:3035>], [null]).remove();
centrifuge.recipeBuilder().inputs(<gregtech:meta_item_1:3035>).outputs([<gregtech:meta_item_1:2035>, <gregtech:meta_item_1:8> * 3]).duration(900).EUt(24).buildAndRegister();
centrifuge.findRecipe(24, [<gregtech:meta_item_1:3158>], [null]).remove();
centrifuge.recipeBuilder().inputs(<gregtech:meta_item_1:3158>).outputs([<gregtech:meta_item_1:2158>, <gregtech:meta_item_1:8> * 3]).duration(900).EUt(24).buildAndRegister();


//Nuclear Stuff

centrifuge.findRecipe(320, [<gregtech:meta_item_1:2075>], [null]).remove();
chemical_bath.findRecipe(384, [<minecraft:ender_eye>], [<liquid:plutonium> * 288]).remove();
chemical_bath.findRecipe(384, [<minecraft:nether_star>], [<liquid:plutonium> * 1152]).remove();
chemical_bath.recipeBuilder().inputs(<minecraft:ender_eye>).fluidInputs(<liquid:radon> * 500).outputs([<gregtech:meta_item_1:32724>]).duration(480).EUt(384).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<minecraft:nether_star>).fluidInputs(<liquid:radon> * 2000).outputs([<gregtech:meta_item_1:32725>]).duration(1920).EUt(384).buildAndRegister();

recipes.addShaped(<nuclearcraft:cell_block>, [
	[<ore:ingotTough>, <gtadditions:ga_transparent_casing>, <ore:ingotTough>], 
	[<gtadditions:ga_transparent_casing>, null, <gtadditions:ga_transparent_casing>], 
	[<ore:ingotTough>, <gtadditions:ga_transparent_casing>, <ore:ingotTough>]]);



recipes.remove(<extendedcrafting:trimmed>);
recipes.remove(<extendedcrafting:trimmed:1>);
recipes.remove(<extendedcrafting:trimmed:2>);
recipes.remove(<extendedcrafting:trimmed:3>);
recipes.remove(<extendedcrafting:trimmed:4>);
recipes.remove(<extendedcrafting:trimmed:5>);
recipes.addShaped(<extendedcrafting:trimmed>, [[<ore:nuggetIron>, null, <ore:nuggetIron>], [null, <gregtech:compressed_10:10>, null], [<ore:nuggetIron>, null, <ore:nuggetIron>]]);
recipes.addShaped(<extendedcrafting:trimmed:1>, [[<ore:nuggetGold>, null, <ore:nuggetGold>], [null, <gregtech:compressed_10:10>, null], [<ore:nuggetGold>, null, <ore:nuggetGold>]]);
recipes.addShaped(<extendedcrafting:trimmed:3>, [[<ore:nuggetEmerald>, null, <ore:nuggetEmerald>], [null, <gregtech:compressed_10:10>, null], [<ore:nuggetEmerald>, null, <ore:nuggetEmerald>]]);
recipes.addShaped(<extendedcrafting:trimmed:2>, [[<ore:nuggetDiamond>, null, <ore:nuggetDiamond>], [null, <gregtech:compressed_10:10>, null], [<ore:nuggetDiamond>, null, <ore:nuggetDiamond>]]);
recipes.addShaped(<extendedcrafting:trimmed:4>, [[<extendedcrafting:material:25>, null, <extendedcrafting:material:25>], [null, <gregtech:compressed_10:10>, null], [<extendedcrafting:material:25>, null, <extendedcrafting:material:25>]]);
recipes.addShaped(<extendedcrafting:trimmed:5>, [[<extendedcrafting:material:33>, null, <extendedcrafting:material:33>], [null, <gregtech:compressed_10:10>, null], [<extendedcrafting:material:33>, null, <extendedcrafting:material:33>]]);













