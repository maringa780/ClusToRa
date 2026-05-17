<img width="800" height="500" alt="image" src="https://github.com/user-attachments/assets/0e2b4eba-14ac-4f01-8ecb-5b7c4a39fe83" />

## • ClusToRa Differential
**::** [Watch Illustration Video on Setting up Differential analysis](https://youtu.be/oK7yI0D0D3o) \
**::** [Watch Illustration Video on calling gene enrichment analysis](https://youtu.be/oK7yI0D0D3o) \
_ClusToRa Differential_ tab allows you to load expression data and perform niche-centric differential gene expression and enrichment analyses. Highlighted sections (1–4) are detailed below. \
💡**Tip:** <sub> Hover your cursor over any section of the app to view helpful information describing that part of the interface and its functionality.</sub> \
⚠️ <sub>**Critical:** To enable functions in this tab, metadata barcodes must have been assigned in the ClusToRa Analysis tab. This ensures ClusToRa analysis contains barcodes that can be matched to the expression data loaded here. The app automatically handles barcode alignment between metadata and expression datasets.</sub>

[**Section 1 (Loading expression data)**](#) 
>**Option 1:**

`ALL in one` <sub>**button** used to load a complete expression dataset where cells are rows and features (e.g., genes) are columns. Barcodes should be located in column 1, and column headers (row 1) should contain feature/gene names. Loaded barcodes must be present in the metadata barcodes used during ClusToRa Analysis. Supported formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`.</sub> 
>**Option 2:**

`barcodes` <sub>**button** used to load expression dataset barcodes separately. If multiple columns exist, only column 1 will be used. Successful loading activates the features button. Supported formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`. </sub> \
`features` <sub>**button** used to load feature/gene names separately. If multiple columns exist, only column 1 will be used. Successful loading activates the `MTX file` button. Supported formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`. </sub> \
`MTX file` <sub>**button** used to load the expression matrix (`.mtx` format; sparse or dense supported). Matrix row count must match barcode count, and column count must match feature/gene count. </sub> 

`Preview load` <sub>**button** opens a preview table displaying up to 100 rows and 100 columns of the loaded barcodes, features/genes, and expression matrix. </sub> \
`Preview Exp` <sub>**button** randomly selects 50 cells and generates boxplots of feature/gene expression distributions. Total counts per cell are displayed on the x-axis, which is useful for assessing whether the data may already be normalized. </sub> \
`normalize` <sub>**checkbox** specifying whether expression data should be normalized. When enabled, each cell is normalized to a total count equal to the median total count across all cells prior to normalization. </sub> 

[**Section 2 (Differential gene analysis & enrichment analysis)**](#) \
-`Z-thresh` <sub>**numeric input** defining the positive `Z-score` threshold used to determine which interactions will undergo differential analysis. Default: `1.96`. </sub> \
-`RunDiff` <sub>**button** performs differential gene expression analysis on all interactions passing the selected `Z-thresh` across all samples. </sub> \
-`Preview Diff` (enabled using adjacent `☐` **checkbox**) <sub>**button** generates a table of differential analysis results for the currently selected sample or group from the ClusToRa Plotting tab. </sub> \
-`export` <sub>**button** saves all differential analysis results for individual samples. If grouped samples exist, combined group-level results are also exported. The adjacent **dropdown** menu defines the export format. </sub> 

-`Gene Analysis` <sub>**button** performs over-representation analysis (ORA) on significantly upregulated and downregulated genes (analyzed separately) comparing cells co-localizing with clusters versus non-co-localizing cells for the selected interaction (Section 3 below). Enrichment analysis is performed using selected Enrichr database libraries from `Select GeneSet database` (Section 4 below). Genes included in the analysis are determined using the thresholds below. Background gene list is all the genes in the loaded expression data </sub> \
---`Diff alpha` <sub>**numeric input** defining the significance threshold (`alpha`) used for differential gene analysis based on either p-value or FDR.</sub> \
---`type` <sub>**dropdown** menu specifying whether `Diff alpha` should be applied to raw p-values or FDR-adjusted values.</sub> \
---`Enrichr alpha` <sub>**numeric input** defining the significance threshold (`alpha`) used for enrichment hits returned by Enrichr.</sub> \
---`minGenes` <sub>**numeric input** defining the minimum number of overlapping genes required for an enrichment hit to be retained.</sub> 

[**Section 3 (Selecting interactions to probe)**](#) \
-`☐` Four **text area** are provided to facilitate exploration of enrichment analyses from differential gene results associated with selected interactions.\
---Top <sub>**text area** displaying the currently selected sample or group. Sample/group selection is controlled from the `Level1` and `Level2` options in the ClusToRa Plotting tab.</sub> \
---Main <sub>**text area** (`Interaction for Enrichr analysis`) displaying interactions identified within the selected sample or group.</sub> \
---`pairs` <sub>**text area** displaying the total number of interactions listed in the main text area.</sub> \
---`search interaction` <sub>**text area** allowing rapid searching for interactions of interest within the main interaction list.</sub> 

[**Section 4 (Selecting enrichment database(s))**](#) \
-`Select GeneSet database` <sub>**tree node** used to select Enrichr database(s) for enrichment analysis of the selected interaction from Section 3. </sub> \
-`Add database` <sub>**button** allowing addition of Enrichr databases not currently listed in the tree node. </sub> \
💡<sub> **Tip:** Click the `Database libraries` link within the app to view the complete list of Enrichr-supported databases. Additional databases of interest may be manually added using the `Add database` **button**.</sub> 

