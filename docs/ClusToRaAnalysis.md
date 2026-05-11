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
> Required assignments

---`X coord` <sub>**checkbox** indicating that the selected column should be assigned as the X coordinates (required).</sub> \
---`Y coord` <sub>**checkbox** indicating that the selected column should be assigned as the Y coordinates (required).</sub> \
---`Cell type (Level 1)` <sub>**checkbox** indicating that the selected column should be assigned as the primary cell type annotation (required).</sub> \
> Optional assignments

---`Cell type (Level 2)` <sub>**checkbox** indicating that the selected column should be assigned as a higher-level grouping of cell types (optional). Useful for organizing cell types into broader categories such as lineage or functional classes.</sub> \
💡<sub> **Tip:** If you want your cell types grouped by predefined categories (e.g., lineage), use the `dropdown` next to `Cell type (Level 2)` to export the unique cell types assigned in `Level 1`. This creates a tab-delimited `.txt` file in the same folder as your metadata. You can then add broader group labels (e.g., lineage) in column 2 or additional columns. Re-import the edited `.txt` file using the same `dropdown`; the new columns will be added to the `Columns` text area, allowing assignment to `Cell type (Level 2)` for sorting and grouping within `ClusToRa`. </sub> \
---`Samples (Level 1)` <sub>**checkbox** indicating that the selected column should be assigned as the sample group or condition. Omit this if analyzing only one sample. Required if the metadata contains multiple samples. If your dataset contains grouped samples, assign the group/category here and assign individual samples under `Samples (Level 2)`.</sub> \
---`Samples (Level 2)` <sub>**checkbox** indicating that the selected column should be assigned as the individual sample identifiers corresponding to the groups defined in `Samples (Level 1)`.</sub> \
-`assign barcodes` <sub>**button** used to assign the selected column as the barcode/cell ID field for the dataset (required if computing downstream differential analysis).</sub> \
⚠️ <sub>**Critical:** If you plan to perform differential analysis later, you **MUST** use `assign barcodes` before starting `ClusToRa Analysis` </sub>  \

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
