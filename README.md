# Phenotyping tools and scripts for ImageJ

This repository contains our tools and scripts for image analysis using ImageJ

---

Script usage: To make scripts available as menu commands in ImageJ, it is
sufficient to put the script files into a _subfolder_ of `ImageJ.app/scripts/`.

---

## How to use

1. Visit [this link](https://github.com/imagej/example-script-collection/generate)
   to create a new repository in your space using this one as a template.

2. Delete `src/test/java` if you don't require tests.

3. Put your scripts into a *subfolder* of `src/main/resources/scripts` (the
   name of the subfolder[s] corresponds to the menu[s] where the commands will
   appear).

4. Edit `pom.xml` to reflect your project information.

5. Run `mvn` to build your jar file, or
   `mvn -Dscijava.app.directory=/path/to/your/ImageJ.app` to directly copy the
   jar file and possible dependencies into your ImageJ/Fiji installation.

5. Make your initial
   [commit](https://help.github.com/en/desktop/contributing-to-projects/committing-and-reviewing-changes-to-your-project) and
   [push the results](https://help.github.com/en/articles/pushing-commits-to-a-remote-repository)!

