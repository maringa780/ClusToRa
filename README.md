<img width="6438" height="2169" alt="githubmain" src="https://github.com/user-attachments/assets/2f8e09b6-779b-4d39-b03a-e8c3dca362e4" /> 

# ClusToRa
`ClusToRa` (Cluster-to-Randomization) is a spatial omics framework that distinguishes organized cellular niches from stochastic proximity by using high-density territory identification and a fixed-position null model. It accurately quantifies cell-type colocalization and recruitment while suppressing density-driven false positives common in conventional analysis methods.
### citation
Githaka J.M., Lerner E.P. (2026). ClusToRa: A niche-centric framework for identifying structural recruitment and infiltration in spatial omics
## Installation Guide 
#### Option 1: `ClusToRa` in MATLAB 
###### Option 1.1 MATLAB online
Clone `ClusToRa` in MATLAB online (_link below_) 
> **Note:** You only need the last command when starting the app in future sessions.
```matlab
%% Confirm you have Git
!git --version

%% Clone ClusToRa repository
!git clone https://github.com/maringa780/ClusToRa.git

%% Start ClusToRa
ClusToRa_startup
```
[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=maringa780/ClusToRa) \
💡**Tip:** If you don’t have a MATLAB license, you can sign up for [MATLAB Online](https://www.mathworks.com/products/matlab-online/matlab-online-versions.html) (Basic), which currently includes 20 free hours per month. Alternatively, you can install the standalone application for free (Option 2 below), which does not require a license.
###### Option 1.2 Desktop MATLAB
Open your locally installed MATLAB application and run the same code shown above.
> For local MATLAB, ensure you have the MATLAB toolboxes listed in the dependencies below.

#### Option 2: Install `ClusToRa` as a Standalone Application on Windows/macOS  
##### Windows
1. Download `WindowsClusToRa.exe` from the `app` folder.
2. Double-click the installer/application file
3. Follow the on-screen installation prompts
4. Launch `ClusToRa` from the Start Menu or desktop shortcut
> If Windows displays a security warning, click **More info** → **Run anyway**.
##### macOS
> A precompiled macOS installer is not currently available because the application must be compiled on a macOS system. However, macOS users can still install and run `ClusToRa` by compiling the application from the source code. Once compiled, the standalone application can be installed and used on any macOS system without requiring MATLAB..
1. Download or clone the `ClusToRa` source code repository
2. Install the required dependencies (see below for toolboxes not included)
3. Follow the build instructions to compile the standalone macOS application (see: https://www.youtube.com/watch?v=dUcODJ6Hbv0 )
4. After compilation, the generated application can be moved into the `Applications` folder on any macOS system and is ready for use
> The first time you open the app, macOS may display a security warning because the app was downloaded from the internet.  
> Go to **System Settings → Privacy & Security** and click **Open Anyway** if needed.

## Running ClusToRa
Start `ClusToRa` as described above. \
The app has three main components — **Analysis**, **Plotting**, and **Differential** — each accessible through its own tab within the app. \
💡**Tip:** Hover your cursor over any section of the app to view helpful information describing that part of the interface and its functionality. 

Below, we use the dataset from Tzouanas _et al._, as analyzed in our cited work, to demonstrate how to navigate and use ClusToRa. Cloning the repository should automatically download the dataset; otherwise, download it manually. Extract the compressed file using: `untar('TzouanasDataset.tar.gz')`.

### • ClusToRa Analysis
_ClusToRa Analysis_ tab allows you to load and analyze your spatial data. **_See details_**
<details>
   
   [More detailed ClusToRa Analysis instructions](docs/ClusToRaAnalysis.md) \
<img width="661" height="331" alt="image" src="https://github.com/user-attachments/assets/381d3268-2792-43fa-83d9-680b7d769ffe" />
</details>

### • ClusToRa Plotting
_ClusToRa Plotting_ tab allows you to plot results. **_See details_**
<details>
   
   [More detailed ClusToRa Plotting instructions](docs/ClusToRaPlotting.md) \
<img width="661" height="332" alt="image" src="https://github.com/user-attachments/assets/5efdd34c-f3d0-4540-b8b3-1ea48daa8432" />
   </details>
   
### • ClusToRa Differential
_ClusToRa Differential_ tab allows you to load your expression files for niche-centric differential & GSEA. **_See details_**
<details>
   
   [More detailed ClusToRa Differential instructions](docs/ClusToRaDifferential.md) \
<img width="657" height="332" alt="image" src="https://github.com/user-attachments/assets/5c23ba7d-c5bc-48db-8ab2-1f60c94d344d" />
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
•_Colorspace Transformations (**included**)_ https://www.mathworks.com/matlabcentral/fileexchange/28790-colorspace-transformations \
•_Natural-Order Sort (**included**)_ https://www.mathworks.com/matlabcentral/fileexchange/34464-customizable-natural-order-sort
