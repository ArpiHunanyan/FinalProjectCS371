name = "146-11";
open("/Users/apple/Desktop/Image Processing/Final Project/images/"+ name + ".jpg");
run("Compile and Run...", "compile=/Applications/ImageJ/plugins/CS260/LR.java");

selectWindow(name + ".jpg");
run("Close");

run("Gaussian Blur...", "sigma=1");
run("Binary Layers");




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



saveAs("jpg", "/Users/apple/Desktop/Image Processing/Final Project/Task 6/Task 3/Task6_high_resolutionTaskResult_"+ name +".jpg");
close();
