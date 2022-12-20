open("/Users/apple/Desktop/Image Processing/Final Project/images/146-11.jpg");
run("Gaussian Blur...", "sigma=1");
run("Binary Layer 0");
run("Convert to Mask");
run("Skeletonize");
run("Save");
saveAs("JPG", "/Users/apple/Desktop/Image Processing/Final Project/Task 5/Task5M1_147-11.jpg");
close();
