name = "146-11";
open("/Users/apple/Desktop/Image Processing/Final Project/images/"+ name + ".jpg");

run("Compile and Run...", "compile=/Applications/ImageJ/plugins/CS260/LR.java");


selectWindow(name +".jpg");
close();

selectWindow("Task6_high_resolutionTaskResult_" + name + ".jpg");
run("Gaussian Blur...", "sigma=1");
run("Binary Layers");

selectWindow("Task6_high_resolutionTaskResult_" + name + ".jpg");
run("Close");


selectWindow("layer_0_");
run("Close");

selectWindow("layer_1_");
setOption("BlackBackground", false);
run("Convert to Mask");

run("Dilate");
run("Median...", "radius=3");





selectWindow("layer_2_");
setOption("BlackBackground", false);
run("Convert to Mask");

run("Close-");
run("Median...", "radius=6");

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




selectWindow("Drawing of layer_1_");
run("Fill Holes");

selectWindow("Drawing of layer_2_");
run("Fill Holes");

selectWindow("Drawing of layer_3_");
run("Fill Holes");


imageCalculator("XOR create", "Drawing of layer_1_","Drawing of layer_2_");

selectWindow("Result of Drawing of layer_1_");
setOption("BlackBackground", false);
run("Convert to Mask");

imageCalculator("OR create", "Result of Drawing of layer_1_","Drawing of layer_3_");

selectWindow("Result of Result of Drawing of layer_1_");
setOption("BlackBackground", false);
run("Convert to Mask");



imageCalculator("Difference create", "Result of Result of Drawing of layer_1_","Result of Drawing of layer_1_");

selectWindow("Result of Drawing of layer_1_");
run("Close");

selectWindow("Result of Result of Drawing of layer_1_");
run("Close");

selectWindow("Drawing of layer_1_");
run("Close");

selectWindow("Drawing of layer_2_");
run("Close");

selectWindow("Drawing of layer_3_");
run("Close");

run("Erode");

run("Analyze Particles...", "  show=Nothing display");

Table.rename("Results", "Task6Task3P5_"+ name +".csv");
saveAs("Results", "/Users/apple/Desktop/Image Processing/Final Project/Task 6/Task 3/Task6Task3P5_"+ name +".csv");


rename("Task6_high_resolutionTaskResult_"+ name +".jpg");
saveAs("jpg", "/Users/apple/Desktop/Image Processing/Final Project/Task 6/Task 3/Task6Task3P5_"+ name +".jpg");
close();run("Close");
