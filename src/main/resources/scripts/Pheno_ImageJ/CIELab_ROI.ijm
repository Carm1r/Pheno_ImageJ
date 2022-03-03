// CIELab_ROI
// Calculate average CIELab L, a and b values for auto-identified ROIs in a picture
// Script developed within the APPLECUT project for automated calculation of average
// color assessment of browning in fresh-cut apple slices.
// The script allows to set the minimum size (in pixels) that should be
// considered in the automated ROI detection. 
//
// Author: Carlos Miranda carlos.miranda@unavarra.es
// 
original = getImageID();
imageTitle=getTitle();//returns a string with the image title 
run("Duplicate...", " ");
copy = getImageID();
selectImage(original);
selectImage(copy);
Fruit_size = getNumber("Min Fruit size (in px)", 0);
run("8-bit");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Analyze Particles...", "size=Fruit_size-Infinity show=Nothing display exclude clear include add");
roiManager("Deselect");
selectImage(imageTitle);
run("RGB to CIELAB");
selectImage(imageTitle+" Lab");
//calculate mean L-, a-, and b-values for individual ROIs
for (i=0; i<roiManager("count"); i++) {
roiManager("Select", i);
setSlice(1);
LValue = getValue("Mean");
setResult("LValue ", i, LValue);
setSlice(2);
aValue = getValue("Mean");
setResult("aValue ", i, aValue);
setSlice(3);
bValue = getValue("Mean");
setResult("bValue ", i, bValue);
}

//calculate mean L-, a-, and b-values for surrounding area
roiManager("deselect");
roiManager("combine");
run("Make Inverse");
setSlice(1);
LValueSurrounding = getValue("Mean");
setResult("LValueSurrounding ", 0, LValueSurrounding);
setSlice(2);
aValueSurrounding = getValue("Mean");
setResult("aValueSurrounding ", 0, aValueSurrounding);
setSlice(3);
bValueSurrounding = getValue("Mean");
setResult("bValueSurrounding ", 0, bValueSurrounding);
path = getDirectory("Choose output directory");
saveAs("Results",path + "CIELab_"+ imageTitle + ".csv");


