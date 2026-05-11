<img width="800" height="500" alt="Illustrations1" src="https://github.com/user-attachments/assets/7e96f27d-5928-4ce5-8c5c-4be68f1eb1e6" /> 

### • ClusToRa Analysis
[Watch Illustration Video](https://youtu.be/oK7yI0D0D3o) \
_ClusToRa Analysis_ tab allows you to load your metadata file containing coordinates, cell types (minimum requirement), and additional data such as sample groups, sample IDs, and barcodes/cell IDs (etc) for analysis. Highlighted section (1-5) are detailed below. \
💡**Tip:** <sub> Hover your cursor over any section of the app to view helpful information describing that part of the interface and its functionality.</sub> 

[**Section 1 (Loading metadata)**](#) \
-`Metadata` <sub>**button** used to load your metadata file (cells as rows, variables as columns). Supported formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`.</sub> \
-`delimiter` <sub>**dropdown** menu allowing manual specification of the metadata delimiter. Default: `auto`</sub> \
-`advanced` <sub>**dropdown** menu containing the `Long barcodes` option. Enable this if your metadata contains long numeric barcodes (common in some Vizgen MERFISH datasets).</sub> \
-`Columns` <sub>**text area** that populates with detected column names after the metadata file is successfully loaded.</sub> \
-`Assign>` <sub>**button** that assigns the selected column to the checked field(s) in **Section 2**. </sub> \
-`Clear<` <sub>that removes the assigned column from the checked field(s) in **Section 2**.</sub> \
⚠️ <sub>**Critical:** Metadata columns may have any names and appear in any order, but column headers MUST be included in the first row. Cell data may begin on row 2 or 3; the app automatically detects the starting row. A minimum of three fields is required: (i) $${\color{red}X coordinates \space}$$ (ii) $${\color{red}Y coordinates \space}$$ (iii) $${\color{red}Cell types \space}$$  </sub>

[**Section 2 (Assigning columns to use)**](#) \
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
⚠️ <sub>**Critical:** If you plan to perform differential analysis later, you **MUST** use `assign barcodes` before starting `ClusToRa Analysis` </sub>  

[**Section 3 (Preview table and spatial distribution of X/Y coordinates)**](#) \
-`☑☐` <sub>**checkboxes** used to specify which type of preview will be displayed.</sub> \
---`meta` <sub>**checkbox** indicating that the preview will display the loaded metadata table.</sub> \
---`xyg` <sub>**checkbox** indicating that the preview will display the spatial X/Y distribution of cells, with cell types pseudo-colored by annotation. This is ⚠️ useful/critical for verifying that the correct sample grouping and assignments were used.</sub> \
-`Preview` <sub>**button** used to generate and display the selected preview.</sub> 

[**Section 4 (ClusToRa parameters setup)**](#) \
-`epsilon` <sub>**dropdown** menu used to define the DBSCAN epsilon parameter. Default: `auto`, as described in the ClusToRa manuscript.</sub> \
-`min cells` <sub>**numeric input** defining the minimum number of cells required to form a DBSCAN cluster. Default: `4` </sub> \
-`random` <sub>**numeric input** defining the number of iterations per cell type used for null-model generation. Default: `1000` </sub> \
-`clumpiness` <sub>**checkbox** indicating whether to compute the Clark–Evans index for cluster centroids.</sub> \
-`Threads>` <sub>**numeric input** defining the number of threads to use for parallel computation. Default: maximum available threads (automatically determined by the app once the minimum required assignments are completed).</sub> \
-`self` <sub>**checkbox** indicating whether ClusToRa analysis should include interactions of cell types with themselves.</sub> \

[**Section 5 (ClusToRa analysis and saving)**](#) \
-`auto save` <sub>**checkbox** indicating that ClusToRa results will be automatically saved. When selected, you will be prompted to choose a folder in which results will be saved as a MATLAB `.mat` file.. </sub> \
-`save` <sub>**button** used to manually save results when `auto save` is unchecked. </sub> \
-`Start ClusToRa` <sub>**button** used to start the analysis. The progress bar in the `ClusToRa Analysis` tab displays the percentage completion of the current analysis.</sub> \
-`load` <sub>**button** used to load previously saved ClusToRa analysis runs.</sub> \
