<img width="800" height="500" alt="Illustrations1" src="https://github.com/user-attachments/assets/7e96f27d-5928-4ce5-8c5c-4be68f1eb1e6" /> 

### • ClusToRa Analysis
[Illustration Video](https://youtu.be/oK7yI0D0D3o) \
_ClusToRa Analysis_ tab allows you to load your metadata file containing coordinates, cell types (minimum requirement), and additional data such as sample groups, sample IDs, and barcodes/cell IDs (etc) for analysis. Highlighted section (1-5) are detailed below.
   
**Section 1** \
-`Metadata` <sub>button allows you to load your metadata file (cells are rows, variables are columns). The app accepts the following formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`.</sub> \
-`delimiter` <sub>dropdown menu allows manual specification of your metadata delimiter, default:auto.</sub> \
-`advanced` <sub>dropdown enables 'Long barcodes' option, use it if your metadata contains long numeric barcodes (common with some Vizgen MERFISH datasets).</sub> \
-Columns may have any names and can appear in any order, but column headers must be included in the first row. \
-Cell data can begin on row 2 or 3; the app will automatically detect the starting row. \
-A minimum of three fields is required: _(i) X coordinate, (ii) Y coordinate, (iii). Cell type_ \
-Click the **Metadata** icon and select your metadata file. \
-Once loaded, the detected column names will populate the **Columns** text field. \
-After loading is complete, click the red **Preview** button with the **meta** checkbox selected to preview the imported metadata. \

**Section 2**
Prepare your metadata file. The app accepts the following formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`.
ClusToRa automatically detects the delimiter, or you can manually specify it using the **Delimiter** dropdown menu.
If your metadata contains long numeric barcodes, open the **Advanced** dropdown and enable **Long barcodes**.
Columns may have any names and can appear in any order, but column headers must be included in the first row.
Cell data can begin on row 2 or 3; the app will automatically detect the starting row.

**Section 3**
   - Find **"iughbujk"** in the results.  
   - Click the **Add** button to install the toolbox. \
⚠️ $${\color{red}Critical: \space}$$ Analysis must be performed using coordinates from the same tissue section, as null model randomizations are generated within that same tissue. See the _ClusToRa Analysis_ section below for instructions on setting up sample levels and previewing your configuration for a sanity check.
