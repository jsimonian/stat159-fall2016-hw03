## Components of this Directory:

### scripts:
Compute summary statistics on the Advertising dataset, and produce histograms, scatterplots, and correlation matrixes. All of these are saved to the images directory, as `.png` files. Also save data on regressions created via `lm`, and on correlation between variables. This data is saved to the data directory in `.RData` files.

### functions
Compute regression information such as RSS, $R^2$, F-statistics etc.

### tests
Tests for the functions defined in the functions subdirectory.

### test-that.R
Run all tests from the tests subdirectory.

### install-packages.R
Install the necessary packages to run the scripts in the scripts subdirectory.
