open("/Users/apple/Desktop/Image Processing/Final Project/images/150-11.jpg");

run("Compile and Run...", "compile=/Applications/ImageJ/plugins/CS260/LR.java");


selectWindow("150-11.jpg");
close();

selectWindow("Task6_high_resolutionTaskResult_150-11.jpg");

run("Gaussian Blur...", "sigma=1");

run("Binary Layer 0");

run("Convert to Mask");
run("Skeletonize");
run("Close-");
run("Save");
close();


