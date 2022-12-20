name = "150-11";
open("/Users/apple/Desktop/Image Processing/Final Project/images/"+ name + ".jpg");
run("Gaussian Blur...", "sigma=1");
run("Binary Layers");

selectWindow(name + ".jpg");
run("Close");


selectWindow("layer_0_");
run("Close");

selectWindow("layer_1_");
setOption("BlackBackground", false);
run("Convert to Mask");

run("Close-");
run("Median...", "radius=5");



selectWindow("layer_2_");
setOption("BlackBackground", false);
run("Convert to Mask");

run("Close-");
run("Median...", "radius=5");

selectWindow("layer_3_");
setOption("BlackBackground", false);
run("Convert to Mask");

run("Close-");
run("Median...", "radius=5");


selectWindow("layer_1_");
run("Analyze Particles...", "  show=Ellipses");

selectWindow("layer_2_");
run("Analyze Particles...", "  show=Ellipses");

selectWindow("layer_3_");
run("Analyze Particles...", "  show=Ellipses");



selectWindow("layer_1_");
run("Close");

selectWindow("layer_2_");
run("Close");

selectWindow("layer_3_");
run("Close");

selectWindow("Drawing of layer_1_");
setOption("BlackBackground", false);
run("Convert to Mask");

selectWindow("Drawing of layer_2_");
setOption("BlackBackground", false);
run("Convert to Mask");

selectWindow("Drawing of layer_3_");
setOption("BlackBackground", false);
run("Convert to Mask");



imageCalculator("OR create", "Drawing of layer_1_","Drawing of layer_2_");


selectWindow("Result of Drawing of layer_1_");
setOption("BlackBackground", false);
run("Convert to Mask");


imageCalculator("OR create", "Result of Drawing of layer_1_","Drawing of layer_3_");

selectWindow("Drawing of layer_1_");
run("Close");

selectWindow("Drawing of layer_2_");
run("Close");

selectWindow("Drawing of layer_3_");
run("Close");

selectWindow("Result of Drawing of layer_1_");
run("Close");



saveAs("jpg", "/Users/apple/Desktop/Image Processing/Final Project/Task 3/Task3_" + name + ".jpg");
close();
