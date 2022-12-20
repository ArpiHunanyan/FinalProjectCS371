open("/Users/apple/Desktop/Image Processing/Final Project/images/150-11.jpg");
run("Gaussian Blur...", "sigma=1");
run("Binary Layers");

selectWindow("layer_3_");
close();

selectWindow("layer_2_");
close();

selectWindow("layer_0_");
setOption("BlackBackground", false);
run("Convert to Mask");
run("Dilate");

selectWindow("layer_1_");
setOption("BlackBackground", false);
run("Convert to Mask");
run("Dilate");


imageCalculator("AND create", "layer_0_","layer_1_");


selectWindow("layer_1_");
close();

selectWindow("layer_0_");
close();



run("Save");
run("Save");
close();


