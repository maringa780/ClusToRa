<img width="6438" height="2169" alt="githubmain" src="https://github.com/user-attachments/assets/2f8e09b6-779b-4d39-b03a-e8c3dca362e4" /> 

# ClusToRa
`ClusToRa` (Cluster-to-Randomization) is a spatial omics framework that distinguishes organized cellular niches from stochastic proximity by using high-density territory identification and a fixed-position null model. It accurately quantifies cell-type recruitment while suppressing density-driven false positives common in conventional analysis methods.
### citation
Githaka J.M., Lerner E.P. (2026). ClusToRa: A niche-centric framework for identifying structural recruitment and infiltration in spatial omics
## Installation Guide 
#### Option 1: Windows Standalone Application 
`ClusToRa` can be installed either as a standalone application (pre-compiled standalone if you do not have access to MATLAB license).
#### Option 2: `ClusToRa` toolbox 
Search for `ClusToRa` in MATLAB addons and install the toolbox. Call `ClusToRa_GUI` in your command window to star `ClusToRa'
#### Option 3: `ClusToRa` manual download 
Download this repository and add all it's contents/sub-folders to your MATLAB path. Call `ClusToRa_GUI` in your command window to star `ClusToRa'

## Running ClusToRa
`ClusToRa` has three main components — **Analysis**, **Plotting**, and **Differential** — each accessible through its own tab within the app. A file containing only cell XY coordinates and cell types is sufficient to use the first two components. The Differential module additionally requires an expression matrix. 
#### Launching ClusToRa
- **Windows:** To start using ClusToRa on Windows, click the shortcut icon created during installation.
- **MATLAB:** To start using ClusToRa in MATLAB, enter:
```matlab
ClusToRa_GUI
```

💡**Tip:** Hover your cursor over any section of the app to view helpful information describing that part of the interface and its functionality. 

⚠️ **Warning:** Analysis must be performed using coordinates from the same tissue section, as null model randomizations are generated within that same tissue. See the _ClusToRa Analysis_ section below for instructions on setting up sample levels and previewing your configuration for a sanity check.

Below, we use the dataset from Tzouanas et al. (download and extract the compressed `TzouanasDataset.tar.gz` file included in this repository), as analyzed in our cited work, to demonstrate how to navigate and use `ClusToRa`.

### • ClusToRa Analysis
_ClusToRa Analysis_ tab allows you to load your coordinates, cell types, and additional data such as sample groups, sample IDs, and barcodes/cell IDs (if you plan to load a differential matrix later) for analysis. _See details_
<details>
   <img width="600" height="299" alt="image" src="https://github.com/user-attachments/assets/414cfdaf-4c8e-484f-a7fc-14277630524b" />
   <br>
1. **Open the Add-On Explorer**
   - In MATLAB, go to the **Home** tab.  
   - Click on the **Add-Ons** icon to open the Add-On Explorer.

2. **Search for scGEAToolbox**
   - In the search bar, type **"scGEAToolbox"** and press Enter.

3. **Select and Install**
   - Find **"scGEAToolbox (single-cell Gene Expression Analysis Toolbox)"** in the results.  
   - Click the **Add** button to install the toolbox.

5. **Launch scGEAToolbox**  
   - To start using scGEAToolbox, enter:
     ```matlab
     scgeatool
     ```
   - This will open the graphical user interface for single-cell transcriptomic data analysis.
</details>

### • ClusToRa Plotting
<details>
   <img width="600" height="302" alt="image" src="https://github.com/user-attachments/assets/3a7470e1-8da6-4b32-b175-553ed43fb614" />
   dbefededf
   </details>
   
### • ClusToRa Differential
<details>
<img width="600" height="303" alt="image" src="https://github.com/user-attachments/assets/4ee28030-74fa-494d-812c-4432edb55a03" />
   fhfb
</details>

# Dependencies

## MATLAB
•_Image Processing Toolbox_ \
•_Statistics and Machine Learning Toolbox_ \
•_Parallel Computing Toolbox_ \
•_Bioinformatics Toolbox_ \
•_biChordChart (**included**)_ https://github.com/slandarer/MATLAB-chord-diagram \
•_Maximally perceptually-distinct colors Generator (**included**)_ https://www.mathworks.com/matlabcentral/fileexchange/29702-generate-maximally-perceptually-distinct-colors

## Optional
•_EnrichrAPI modified from scGEAToolbox (**included**)_ https://github.com/jamesjcai/scGEAToolbox \
•_Matrix Market file reader/writer (**included**)_ https://math.nist.gov/MatrixMarket/mmio/matlab/mmiomatlab.html \
•_Colorspace Transformations (**included**)_ https://www.mathworks.com/matlabcentral/fileexchange/28790-colorspace-transformations
