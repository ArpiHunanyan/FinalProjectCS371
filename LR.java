///hight resulation --- > low resulation (pixel size decreas)
import ij.plugin.filter.PlugInFilter;
import ij.ImagePlus;
import ij.process.ImageProcessor;
import ij.process.ColorProcessor;


public class LR implements PlugInFilter {

    ImagePlus inputImage;

    public int setup(String args, ImagePlus im) {

		inputImage = im;

		return DOES_RGB;
	}

    public void run(ImageProcessor inputIP) { 

        int width = inputIP.getWidth()/ 5 , height = inputIP.getHeight() / 5 ;
        ImageProcessor outputIP = new ColorProcessor(width, height);

        for (int col = 0; col < width; col++) 
            for (int row = 0; row < height; row++) 
                outputIP.putPixel(col, row, inputIP.getPixel(col * 5, row * 5));


        (new ImagePlus("Task6_high_resolutionTaskResult_" + inputImage.getShortTitle() + ".jpg", outputIP)).show(); 
    }


}


