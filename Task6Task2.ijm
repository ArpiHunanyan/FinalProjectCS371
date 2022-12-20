name = "146-11";
open("/Users/apple/Desktop/Image Processing/Final Project/images/"+ name +".jpg");

run("Compile and Run...", "compile=/Applications/ImageJ/plugins/CS260/LR.java");


selectWindow(name +".jpg");
close();

selectWindow("Task6_high_resolutionTaskResult_"+ name +".jpg");
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

selectWindow("layer_2_");
run("Dilate");

imageCalculator("AND create", "layer_1_","layer_2_");

selectWindow("layer_3_");
run("Dilate");

selectWindow("Result of layer_1_");
run("Dilate");

imageCalculator("AND create", "Result of layer_1_","layer_3_");


run("Set Measurements...", "centroid redirect=None decimal=3");
run("Analyze Particles...");

Table.rename("Results", "Task6_high_resolutionTaskResult_"+ name +".csv");
saveAs("Results", "/Users/apple/Desktop/Image Processing/Final Project/Task 6/Task 2/Task6_high_resolutionTaskResult_"+ name +".csv");



selectWindow("layer_2_");
close();
selectWindow("layer_1_");
close();
selectWindow("layer_3_");
close();
selectWindow("Result of layer_1_");
close();
selectWindow("Task6_high_resolutionTaskResult_"+ name +".jpg");
close();

selectWindow("Result of Result of layer_1_");
rename("Task6_high_resolutionTaskResult_"+ name +".jpg");
saveAs("jpg", "/Users/apple/Desktop/Image Processing/Final Project/Task 6/Task 2/Task6_high_resolutionTaskResult_"+ name +".jpg");
close();


