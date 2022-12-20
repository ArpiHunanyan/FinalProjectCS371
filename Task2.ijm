run("Binary Layers");

selectWindow("layer_0_");
close();

selectWindow("layer_1_");
run("Convert to Mask");
run("Fill Holes");

selectWindow("layer_2_");
run("Convert to Mask");
run("Fill Holes");

selectWindow("layer_3_");
run("Convert to Mask");
run("Fill Holes");

imageCalculator("AND create", "layer_1_","layer_2_");

imageCalculator("AND create", "Result of layer_1_","layer_3_");


run("Set Measurements...", "centroid redirect=None decimal=3");
run("Analyze Particles...");



selectWindow("layer_2_");
close();
selectWindow("layer_1_");
close();
selectWindow("layer_3_");
close();
selectWindow("Result of layer_1_");
close();

