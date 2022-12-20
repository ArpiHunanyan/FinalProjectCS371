name = "145-11";
open("/Users/apple/Desktop/Image Processing/Final Project/images/"+ name +".jpg");

run("Compile and Run...", "compile=/Applications/ImageJ/plugins/CS260/LR.java");


selectWindow(name +".jpg");
close();

selectWindow("Task6_high_resolutionTaskResult_"+ name +".jpg");
run("Gaussian Blur...", "sigma=1");

run("All Layers");





saveAs("jpg", "/Users/apple/Desktop/Image Processing/Final Project/Task 6/Task 1/Task6_high_resolutionTaskResult_"+ name +".jpg");
close();





