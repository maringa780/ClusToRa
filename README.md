<img width="6438" height="2169" alt="githubmain" src="https://github.com/user-attachments/assets/2f8e09b6-779b-4d39-b03a-e8c3dca362e4" /> 

# ClusToRa
`ClusToRa` (Cluster-to-Randomization) is a spatial omics framework that distinguishes organized cellular niches from stochastic proximity by using high-density territory identification and a fixed-position null model. It accurately quantifies cell-type colocalization and recruitment while suppressing density-driven false positives common in conventional analysis methods.
### citation
Githaka J.M., Lerner E.P. (2026). ClusToRa: A niche-centric framework for identifying structural recruitment and infiltration in spatial omics
## Installation Guide 
#### Option 1: Windows Standalone Application 
`ClusToRa` can be installed either as a standalone application (pre-compiled standalone if you do not have access to MATLAB license).
#### Option 2: `ClusToRa` toolbox 
Search for `ClusToRa` in MATLAB addons and install the toolbox. Call `ClusToRa_GUI` in your command window to star `ClusToRa'
#### Option 3: `ClusToRa` manual download 
Download this repository and add all it's contents/sub-folders to your MATLAB path.

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
   
1. **Step 1. Loading Metadata** \
-Prepare your metadata file. The app accepts the following formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`. \
-ClusToRa automatically detects the delimiter, or you can manually specify it using the **Delimiter** dropdown menu. \
-If your metadata contains long numeric barcodes, open the **Advanced** dropdown and enable **Long barcodes**. \
-Columns may have any names and can appear in any order, but column headers must be included in the first row. \
-Cell data can begin on row 2 or 3; the app will automatically detect the starting row. \
-A minimum of three fields is required: \
  _(i). X coordinate
  (ii). Y coordinate
  (iii). Cell type_

-Click the **Metadata** icon and select your metadata file. \
-Once loaded, the detected column names will populate the **Columns** text field. \
-After loading is complete, click the red **Preview** button with the **meta** checkbox selected to preview the imported metadata. \

2. **Assigning fields**
- Prepare your metadata file. The app accepts the following formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`.
- ClusToRa automatically detects the delimiter, or you can manually specify it using the **Delimiter** dropdown menu.
- If your metadata contains long numeric barcodes, open the **Advanced** dropdown and enable **Long barcodes**.
- Columns may have any names and can appear in any order, but column headers must be included in the first row.
- Cell data can begin on row 2 or 3; the app will automatically detect the starting row.
- A minimum of three fields is required:
  1. X coordinate
  2. Y coordinate
  3. Cell type

- Click the **Metadata** icon and select your metadata file.
- Once loaded, the detected column names will populate the **Columns** text field.
- After loading is complete, click the red **Preview** button with the **meta** checkbox selected to preview the imported metadata.

3. **Setting parameters and starting analysis**
   - Find **"iughbujk"** in the results.  
   - Click the **Add** button to install the toolbox.
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
