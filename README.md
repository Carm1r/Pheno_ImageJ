# Phenotyping tools and scripts for ImageJ

This repository contains our tools and scripts for image analysis using ImageJ

---

Script usage: To make scripts available as menu commands in ImageJ, it is
sufficient to put the script files into a _subfolder_ of `ImageJ.app/scripts/`.

---

## Functions included

1. CIELab_ROI: Calculate average CIELab L, a and b values for auto-identified ROIs in a 
picture: This script has been developed within the APPLECUT project for automated calculation 
of average color assessment of browning in fresh-cut apple slices. The script allows to set 
the minimum size (in pixels) that should be  considered in the automated ROI detection. 


4. Edit `pom.xml` to reflect your project information.

5. Run `mvn` to build your jar file, or
   `mvn -Dscijava.app.directory=/path/to/your/ImageJ.app` to directly copy the
   jar file and possible dependencies into your ImageJ/Fiji installation.

5. Make your initial
   [commit](https://help.github.com/en/desktop/contributing-to-projects/committing-and-reviewing-changes-to-your-project) and
   [push the results](https://help.github.com/en/articles/pushing-commits-to-a-remote-repository)!

