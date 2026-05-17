<img width="800" height="500" alt="image" src="https://github.com/user-attachments/assets/0e2b4eba-14ac-4f01-8ecb-5b7c4a39fe83" />

## • ClusToRa Differential
**::** [Watch Illustration Video on Setting up Differential analysis](https://youtu.be/oK7yI0D0D3o) \
**::** [Watch Illustration Video on calling gene enrichment analysis](https://youtu.be/oK7yI0D0D3o) \
_ClusToRa Differential_ tab allows you to load your expression files for niche-centric differential gene analysis . Highlighted sections (1–4) are detailed below. \
💡**Tip:** <sub> Hover your cursor over any section of the app to view helpful information describing that part of the interface and its functionality.</sub> \
⚠️ <sub>**Critical:** To enable functions of this tab, metadata barcodes must have been setup in the ClusTora analsysis tab to ensure Clustora analysis has barcodes that will be matched to the expression data loaded here (the app handles alignment of metadata and expresion adta barcodes).</sub>

[**Section 1 (Loading expression data)**](#) \
-Option 1: \ 
`ALL in one` <sub>**button** used to load your expression data file (cells as rows, features like genes as columns) barcodes should be in column one, column headders (row one) should be our feature names. Your barcodes must be present in the metadata barcodes (file you did Clustora analysis on). Supported formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`..</sub> \
-Option 2: \
`barcodes` <sub>**button** used to load your expression data barcodes (if file has multiple columns,column one will be used). Suceeful loading of barcodes activates `features` button. Supported formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`. </sub> \
`features` <sub>**button** used to load your expression data features (genes) (if file has multiple columns,column one will be used). Succesful loading of featutres activates `MTX file` button. Supported formats: `.txt`, `.csv`, `.tsv`, `.xlsx`, and `.xls`. </sub> \
`MTX file` <sub>**button** used to load your expression data (`mtx` file, can be sparse or not) where row size should match barcode size and colum size should much featutres/genes size. </sub> \
`Preview load` <sub>**button** opens a table with 100 rows and 100 colums allowing you to preview the barcodes, features/genes and expressiob matrix. </sub> \
`Preview Exp` <sub>**button** randomly picks 50 cells and box plots the features/genes expression, it labels the total count per boxplots on the x axis (useful to see if data might be normalized).. </sub> \
`normalize` <sub>**checkbox** on whether to normalize the data or not (if checked, normalizes each cell to a total count equal to the median of total counts for cells before normalization. </sub> \

[**Section 2 (Get Differential genes and their enrichment analysis)**](#) \
-`Z-thresh` <sub>**numeric input** defining the positive `Z-scores` threshold value used for determining which interactions witll be analysed. Default: `1.96`. </sub> \
-`RunDiff` <sub>**button** runs differenmtial on all the interctions passing z-thresh from all the samples. </sub> \
-`Preview Diff` (enabled by adjacent `☐` **checkbox**) <sub>**button** creates a table of the differentil result for the sample or group selected in ClusToRa plotting tab. </sub> \
-`export` <sub>**button** saves all the differential results for all individual samples samples. If grouped exist, it also saves the combined results per group. The adjacent dropdown menu selects the export format. </sub> 

-`Gene Analysis` <sub>**button** performs gene analsysi (over-representation analysis) for signifcantly both upregulated and downregulated genes (seperatelY) for cells colocalizing with clusters vs not, in the specific selected interaction to probe (section 3 below), using Enrichr database library or libraries selected `Select GeneSet database` (sectionm4).  : Genes to probe are determined by thresholds below. </sub> \
---`Diff alpha` <sub>**numeric input** dtermines the alpha to use for differentil gene results either for pvalue or FDR.</sub> \
---`type` <sub>**dropdown** menu defines whetehre to use pvalue or FDR for the `Diff alpha`.</sub> \
---`Enrichr alpha` <sub>**numeric input** dtermines the alpha to use for differentil hits from Enrichr p values.</sub> \
---`minGenes` <sub>**numeric input** dtermines the alpha to use for differentil hits from Enrichr p values.</sub> \

[**Section 3 (Select interaction to probe)**](#) \
-`☐` Four **text area** to help you probe the gene analysis from differential genes of the selected interaction.
---Top <sub>**text area** displays the sample or group selected (use the Plotting tab level1 and 2 to select samples or groups to.</sub> \
---Main <sub>**text area** displays the interactions from sample or group selected.</sub> \
---`pairs` <sub>**text area** displays the number of interactions in the main text area.</sub> \
---`search interaction` <sub>**text area** allows you to quickly search inteaction of interst in the main text area.</sub> \

[**Section 4 (Select database(s) to use)**](#) \
<sub>This section provides a quick visualization of the spatial distribution of selected cell types or clusters within individual samples selected in Section 1.</sub> \
-`Options` <sub>**dropdown** menu containing 4 options corresponding to the checkboxes below. These options assign cell types selected from the tree node in Section 5. </sub> \
<sub>---`All selected` assigns all selected cell types from the tree node to the `All selected` checkbox (see explanation below).</sub> \
<sub>---`Cluster(s)` assigns all selected cell types from the tree node to the `Cluster(s)` checkbox (see explanation below).</sub> \
<sub>---`Cluster & non-Cluster` assigns a single selected cell type from the tree node to the `Cluster & non-Cluster` checkbox (see explanation below).</sub> \
<sub>---`Co-localizing` assigns selected cell types from the tree node to the `Co-localizing` checkbox (see explanation below).</sub> \
`☑☐` <sub>**checkboxes** used to define what will be visualized in the scatter plot.</sub> \
---`All selected` <sub>**checkbox** when checked, plots all cells assigned above. </sub> \
---`Clusters` <sub>**checkbox** when checked, plots only clusters corresponding to the assigned cell types. </sub> \
---`Cluster & non-Cluster` <sub>**checkbox** when checked, plots clustered cells for the selected cell type together with non-clustered cells displayed using a lighter shade controlled by `alpha` (see tip below). </sub> \
💡<sub> **Tip:** Use the `alpha` **numeric input** to define the transparency level of non-clustered cells in `Cluster & non-Cluster` visualizations.</sub> \
---`Co-localizing` <sub>**checkbox** when checked, plots cells assigned above that spatially co-localize with the cluster(s) defined under `Cluster`. </sub> \
-`Size` <sub>**numeric input** defining scatter marker size.</sub> \
-`plot` <sub>**button** generates scatter plots using the selected parameters.</sub> \
💡**Tip:** Exporting the `ColocMatrix` (see Section 5 below) is an excellent way to obtain IDs for clusters and their associated co-localizing or non-co-localizing cells, allowing further custom visualization and downstream analyses.  \

