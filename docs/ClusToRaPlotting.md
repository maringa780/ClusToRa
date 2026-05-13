<img width="800" height="500" alt="Asset 4" src="https://github.com/user-attachments/assets/442192d2-1c8f-4ce9-93c3-83ff8ceb135f" />

### • ClusToRa Plotting
[Watch Illustration Video on ClusToRa Plotting](https://youtu.be/oK7yI0D0D3o) \
_ClusToRa Plotting_ tab allows you to load your ClusToRa Analysis results, visualize spatial interaction outputs, and export colocalization matrices for downstream exploration. Highlighted sections (1–6) are detailed below. \
💡**Tip:** <sub> Hover your cursor over any section of the app to view helpful information describing that part of the interface and its functionality.</sub> 

[**Section 1 (Loading results & selecting what to plot)**](#) \
-`import` <sub>**button** used to load your MATLAB `.mat` result file. If switch is set to `loaded`, the app imports the currently loaded or recently completed ClusToRa Analysis result. If switch is set to `drive`, a file-selection prompt will appear allowing you to choose a saved `.mat` file.</sub> \
-`loaded` vs `drive` <sub>**switch** specifying whether to import results from the currently loaded session or from a saved file on disk. </sub> \
-`Level1` <sub>**text area** populated using the assignments from `Cell type (Level 1)` in the ClusToRa Analysis tab. Use this to select groups or samples for plotting. </sub> \
-`Level2` <sub>**text area** populated using assignments from `Cell type (Level 2)` in the ClusToRa Analysis tab. Use this to select samples for plotting when a second grouping level was defined. </sub> \

[**Section 2 (Cell-type composition & cluster summaries)**](#) \
💡<sub> **Tip:** To activate this section, first generate any chord plot in **Section 3**. This initializes the cell-type color assignments used for stacked bar plots and related visualizations.</sub> \
-`Clusters & bars summary` <sub>**button** generates 1–3 plots (depending on setup) together with their associated tables, which can be exported as .xlsx or .txt files.  </sub> \
<sub>1) A stacked bar plot showing the percentage relative abundance of cell types across samples, together with the table used for plotting. If higher-level cell-type grouping was assigned (`Cell type (Level 2)`), an additional grouped bar plot is generated.</sub> \
<sub>2) If `clumpiness` was computed (Clark–Evans index for cluster centroids), a bubble plot summarizing Clark–Evans index values and the percentage of cells participating in clusters is generated, together with associated tables.</sub>
---`fill option` <sub>**dropdown** menu used to define the metric used to color the bubbles.</sub> \
---`O size` <sub>**dropdown** menu used to define whether bubble sizes remain constant or vary according to a selected metric.</sub> 

[**Section 3 (Chord plots parameters)**](#) \
-`score` <sub>**dropdown** menu used to define type of plot. ClusToRa `Z-scores` or `In/Out (log2FC)` (log2 of Infiltration/Envelopment ratio), as described in the ClusToRa manuscript.</sub> \
-`Thresh` <sub>**numeric input** defining the -/+ number to thershold for the selected `score` option to plot. Default: 1.96 for `Z-scores`, zero for `In/Out (log2FC)` as we compute this ration only from interactions with positive 1.96 zscores. </sub> \
-`Colormap` <sub>**dropdown** menu used to define colormap to use. Default: custom `ClusToRa_colormap`. Next to this is a **dropdown** menu for whwteher to use colorscale that spans all the z-scores (`Auto`) or maximum z-score in the interactions to plot (`local`)</sub> \
💡<sub> **Tip:** A visisble colormap bar appeara in this tab corresponding to the colormap selected.</sub> \
-`To plot / preview` <sub>**dropdown** menu for whether to plot samples at `Level1` or `Level2` (setup dependent). If you have two levels and `Level1` option is selected, plots will be for the group you highlight in `Level1` text area. If you have two levels and `Level2` is selected, then the samples you highlight in `Level2`textarea will be plotted. If you only have one level, sample highted in `Level1` text area will be plotted </sub> \
-`colors` <sub>**dropdown** menu for wheteher to auto deteremine the colors for each cell type. `export` option outputs a text file with the cell types (column 1) and auto determined rowwise `rgb` color values (range 0 to 1) (column 2 to4). You can change these `rgb` values for custom colors and use `import` option to load your file. Deafault: auto. </sub> \
💡<sub> **Tip:** If you wish to sort your chord cell types order, you can rearrange the row, no need to change the associated rgb if you still want to maintain the auto dteremined colors.</sub> \
-`%min sample` <sub>**numeric input** defining the minimun percent number of samples representing an interaction in the selected group that will be plotted.</sub> \
-`alpha` <sub>**numeric input** defining transpareny for your chord arraow (this allows you for better visualizations as arrow crisscross each other).</sub> \
-`Chord` <sub>**button** Plots the chord based on the above parameters.</sub> 

[**Section 4 (ClusToRa parameters setup)**](#) \
-`epsilon` <sub>**dropdown** menu used to define the DBSCAN epsilon parameter. Default: `auto`, as described in the ClusToRa manuscript.</sub> \
-`min cells` <sub>**numeric input** defining the minimum number of cells required to form a DBSCAN cluster. Default: `4` </sub> \
-`random` <sub>**numeric input** defining the number of iterations per cell type used for null-model generation. Default: `1000` </sub> \
-`clumpiness` <sub>**checkbox** indicating whether to compute the Clark–Evans index for cluster centroids.</sub> \
-`Threads>` <sub>**numeric input** defining the number of threads to use for parallel computation. Default: maximum available threads (automatically determined by the app once the minimum required assignments are completed).</sub> \
-`self` <sub>**checkbox** indicating whether ClusToRa analysis should include interactions of cell types with themselves.</sub> 

[**Section 5 (ClusToRa analysis and saving)**](#) \
-`auto save` <sub>**checkbox** indicating that ClusToRa results will be automatically saved. When selected, you will be prompted to choose a folder in which results will be saved as a MATLAB `.mat` file.. </sub> \
-`save` <sub>**button** used to manually save results when `auto save` is unchecked. </sub> \
-`Start ClusToRa` <sub>**button** used to start the analysis. The progress bar in the `ClusToRa Analysis` tab displays the percentage completion of the current analysis.</sub> \
-`load` <sub>**button** used to load previously saved ClusToRa analysis runs.</sub> 


> Optional assignments

---`Cell type (Level 2)` <sub>**checkbox** indicating that the selected column should be assigned as a higher-level grouping of cell types (optional). Useful for organizing cell types into broader categories such as lineage or functional classes.</sub> \
💡<sub> **Tip:** If you want your cell types grouped by predefined categories (e.g., lineage), use the `dropdown` next to `Cell type (Level 2)` to export the unique cell types assigned in `Level 1`. This creates a tab-delimited `.txt` file in the same folder as your metadata. You can then add broader group labels (e.g., lineage) in column 2 or additional columns. Re-import the edited `.txt` file using the same `dropdown`; the new columns will be added to the `Columns` text area, allowing assignment to `Cell type (Level 2)` for sorting and grouping within `ClusToRa`. </sub> \
---`Samples (Level 1)` <sub>**checkbox** indicating that the selected column should be assigned as the sample group or condition. Omit this if analyzing only one sample. Required if the metadata contains multiple samples. If your dataset contains grouped samples, assign the group/category here and assign individual samples under `Samples (Level 2)`.</sub> \
---`Samples (Level 2)` <sub>**checkbox** indicating that the selected column should be assigned as the individual sample identifiers corresponding to the groups defined in `Samples (Level 1)`.</sub> \
-`assign barcodes` <sub>**button** used to assign the selected column as the barcode/cell ID field for the dataset (required if computing downstream differential analysis).</sub> \
⚠️ <sub>**Critical:** If you plan to perform differential analysis later, you **MUST** use `assign barcodes` before starting `ClusToRa Analysis` </sub>  
`☑☐` <sub>**checkboxes** used to specify which type of preview will be displayed.</sub> \
