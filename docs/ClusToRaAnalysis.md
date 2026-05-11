<img width="800" height="500" alt="Illustrations1" src="https://github.com/user-attachments/assets/7e96f27d-5928-4ce5-8c5c-4be68f1eb1e6" /> 

### • ClusToRa Analysis
[Illustration Video](https://youtu.be/oK7yI0D0D3o) \
_ClusToRa Analysis_ tab allows you to load your metadata file containing coordinates, cell types (minimum requirement), and additional data such as sample groups, sample IDs, and barcodes/cell IDs (etc) for analysis. Highlighted section (1-5) are detailed below. \
💡**Tip:** <sub> Hover your cursor over any section of the app to view helpful information describing that part of the interface and its functionality.</sub> 

**Section 1 (loading metadata)** \
-`Metadata` <sub>button allows you to load your metadata file (cells are rows, variables are columns). The app accepts the following formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`.</sub> \
-`delimiter` <sub>dropdown menu allows manual specification of your metadata delimiter, default:auto.</sub> \
-`advanced` <sub>dropdown enables 'Long barcodes' option, use it if your metadata contains long numeric barcodes (common with some Vizgen MERFISH datasets).</sub> \
-`Columns` <sub>text area populates with detected column names once metadata file is succefuly loaded.</sub> \
⚠️**Critical:** <sub> metadata columns may have any names and can appear in any order, but column headers MUST be included in the first row. Cell data can begin on row 2 or 3; the app will automatically detect the starting row. A minimum of three fields is required: _(i) X coordinate, (ii) Y coordinate, (iii). Cell type_ </sub>  

**Section 2 (assigning columns to use)**
-After loading is complete, click the red **Preview** button with the **meta** checkbox selected to preview the imported metadata. 

**Section 3 (confirming columns and samples setup)**
   - Find **"iughbujk"** in the results.  
   - Click the **Add** button to install the toolbox. \

**Section 4 (ClusToRa parameters setup)**
   - Find **"iughbujk"** in the results.  
   - Click the **Add** button to install the toolbox. \

**Section 3 (ClusToRa analysis and saving)**
   - Find **"iughbujk"** in the results.  
   - Click the **Add** button to install the toolbox. \
⚠️ $${\color{red}Critical: \space}$$ Analysis must be performed using coordinates from the same tissue section, as null model randomizations are generated within that same tissue. See the _ClusToRa Analysis_ section below for instructions on setting up sample levels and previewing your configuration for a sanity check.
