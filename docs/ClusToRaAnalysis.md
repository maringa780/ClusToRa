<img width="800" height="500" alt="Illustrations1" src="https://github.com/user-attachments/assets/7e96f27d-5928-4ce5-8c5c-4be68f1eb1e6" /> 

### • ClusToRa Analysis
[Watch Illustration Video](https://youtu.be/oK7yI0D0D3o) \
_ClusToRa Analysis_ tab allows you to load your metadata file containing coordinates, cell types (minimum requirement), and additional data such as sample groups, sample IDs, and barcodes/cell IDs (etc) for analysis. Highlighted section (1-5) are detailed below. \
💡**Tip:** <sub> Hover your cursor over any section of the app to view helpful information describing that part of the interface and its functionality.</sub> 

**Section 1 (Loading metadata)** \
-`Metadata` <sub>**button** used to load your metadata file (cells as rows, variables as columns). Supported formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`.</sub> \
-`delimiter` <sub>**dropdown** menu allowing manual specification of the metadata delimiter. Default: `auto`</sub> \
-`advanced` <sub>**dropdown** menu containing the `Long barcodes` option. Enable this if your metadata contains long numeric barcodes (common in some Vizgen MERFISH datasets).</sub> \
-`Columns` <sub>**text area** that populates with detected column names after the metadata file is successfully loaded.</sub> \
-`Assign>` <sub>**button** that assigns the selected column to the checked field(s) in **Section 2**. </sub> \
-`Clear<` <sub>that removes the assigned column from the checked field(s) in **Section 2**.</sub> \
⚠️ <sub>**Critical:** Metadata columns may have any names and appear in any order, but column headers MUST be included in the first row. Cell data may begin on row 2 or 3; the app automatically detects the starting row. A minimum of three fields is required: (i) $${\color{red}X coordinates \space}$$ (ii) $${\color{red}Y coordinates \space}$$ (iii) $${\color{red}Cell types \space}$$  </sub>

**Section 2 (Assigning columns to use)** \
💡<sub> **Tip:** Preview the metadata table as outlined in **Section 3**.</sub> \
-`☑☐` <sub>**checkboxes** used to specify where the selected column from Section 1 should be assigned.</sub> \

---`X coord` <sub>**checkbox** checked informs `Assign>` or `Clear<` that the column to be asigned or cleared is for x coordinates(required).</sub> \
---`Y coord` <sub>**checkbox** checked informs `Assign>` or `Clear<` that the column to be asigned or cleared is for y coordinates(required).</sub> \
---`Cell type (Level 1)` <sub>**checkbox** checked informs `Assign>` or `Clear<` that the column to be asigned or cleared is for cell types (required).</sub> \

---`Cell type (Level 2)` <sub>**checkbox** checked informs `Assign>` or `Clear<` that the column to be asigned or cleared is for cell types groups (optional: Useful if you wish to sort your cell types by groups)..</sub> \
💡<sub> **Tip:** If you wish your cell types to be arranged by a predefined grouping (say lineage), use `dropdown` next to `Cell type (Level 2)` to export the unique assigned cellt tyes from level 1. This saves a tab delimited `txt` file in the same folder as your metadat, which you can add your broader group(s) of cells, say lineage, to column 2 or more colums. Use same `dropdown` to import your edited `txt`, the app will add the new colums to `column` **text area** that allows you to assign level 2 for ClusToRa to sort your cell types.</sub> \
---`Samples (Level 1)` <sub>**checkbox** checked informs `Assign>` or `Clear<` that the column to be asigned or cleared is for the different groups or samples (Omit if you loaded just one sample, required if your metadata has more than one sample. If your data has groups of samples, this would be the level to assign those groups, in which case, the individual samples would be asigned in `Samples (Level 2)`).</sub> \
---`Samples (Level 2)` <sub>**checkbox** checked informs `Assign>` or `Clear<` that the column to be asigned or cleared is for the different samples of the group(s) in `Samples (Level 1)`.</sub> \
-`assign barcodes` <sub>**button** assigns the selected column to be the barcodes of your dataset (required if exploring differential analysis later).</sub> \
⚠️ <sub>**Critical:** If you will be exploring differential analysis later, you MUST `assign barcodes` before you start `ClusToRa Analysis` </sub>  \

**Section 3 (confirming columns and samples setup)**
   - Find **"iughbujk"** in the results.  
   - Click the **Add** button to install the toolbox. \
-After loading is complete, click the red **Preview** button with the **meta** checkbox selected to preview the imported metadata. 
**Section 4 (ClusToRa parameters setup)**
   - Find **"iughbujk"** in the results.  
   - Click the **Add** button to install the toolbox. \

**Section 3 (ClusToRa analysis and saving)**
   - Find **"iughbujk"** in the results.  
   - Click the **Add** button to install the toolbox. \
⚠️ $${\color{red}Critical: \space}$$ Analysis must be performed using coordinates from the same tissue section, as null model randomizations are generated within that same tissue. See the _ClusToRa Analysis_ section below for instructions on setting up sample levels and previewing your configuration for a sanity check.
