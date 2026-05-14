<img width="800" height="500" alt="Asset 4" src="https://github.com/user-attachments/assets/442192d2-1c8f-4ce9-93c3-83ff8ceb135f" />

### • ClusToRa Plotting
**::** [Watch Illustration Video on ClusToRa Plotting](https://youtu.be/oK7yI0D0D3o) \
_ClusToRa Plotting_ tab allows you to load your ClusToRa Analysis results, visualize spatial interaction outputs, and export colocalization matrices for downstream exploration. Highlighted sections (1–6) are detailed below. \
💡**Tip:** <sub> Hover your cursor over any section of the app to view helpful information describing that part of the interface and its functionality.</sub> 

[**Section 1 (Loading results & selecting what to plot)**](#) \
-`import` <sub>**button** used to load your MATLAB `.mat` result file. If switch is set to `loaded`, the app imports the currently loaded or recently completed ClusToRa Analysis result. If switch is set to `drive`, a file-selection prompt will appear allowing you to choose a saved `.mat` file.</sub> \
-`loaded` vs `drive` <sub>**switch** specifying whether to import results from the currently loaded session or from a saved file on disk. </sub> \
-`Level1` <sub>**text area** populated using the assignments from `Cell type (Level 1)` in the ClusToRa Analysis tab. Use this to select groups or samples for plotting. </sub> \
-`Level2` <sub>**text area** populated using assignments from `Cell type (Level 2)` in the ClusToRa Analysis tab. Use this to select samples for plotting when a second grouping level was defined. </sub> 

[**Section 2 (Cell-type composition & cluster summaries)**](#) \
💡<sub> **Tip:** To activate this section, first generate any chord plot in **Section 3**. This initializes the cell-type color assignments used for stacked bar plots and related visualizations.</sub> \
-`Clusters & bars summary` <sub>**button** generates 1–3 plots (depending on setup) together with their associated tables, which can be exported as .xlsx or .txt files.  </sub> \
<sub>1) A stacked bar plot showing the percentage relative abundance of cell types across samples, together with the table used for plotting. If higher-level cell-type grouping was assigned (`Cell type (Level 2)`), an additional grouped bar plot is generated.</sub> \
<sub>2) If `clumpiness` was computed (Clark–Evans index for cluster centroids), a bubble plot summarizing Clark–Evans index values and the percentage of cells participating in clusters is generated, together with associated tables.</sub>
---`fill option` <sub>**dropdown** menu used to define the metric used to color the bubbles.</sub> \
---`O size` <sub>**dropdown** menu used to define whether bubble sizes remain constant or vary according to a selected metric.</sub> 

[**Section 3 (Chord plot parameters)**](#) \
-`score` <sub>**dropdown** menu used to define the interaction metric to plot: ClusToRa `Z-scores` or `In/Out (log2FC)` (log2 of Infiltration/Envelopment ratio), as described in the ClusToRa manuscript..</sub> \
-`Thresh` <sub>**numeric input** defining the positive/negative threshold value used for plotting interactions based on the selected `score` option. Default: `1.96` for `Z-scores`; `0` for `In/Out (log2FC)` since this ratio is computed only for interactions with positive `1.96` z-scores.. </sub> \
-`Colormap` <sub>**dropdown** menu used to define the colormap for plotting. Default: custom one called `ClusToRa_colormap`. An adjacent **dropdown** menu defines whether the color scale spans all available z-scores (`Auto`) or only the maximum score within the plotted interactions (`Local`).</sub> \
💡<sub> **Tip:** A visible colormap bar appears in this tab corresponding to the selected colormap.</sub> \
-`To plot / preview` <sub>**dropdown** menu used to define whether plots are generated from `Level1` or `Level2` assignments (setup dependent). If two levels exist and `Level1` is selected, plots will be generated for the highlighted group in the `Level1` text area. If `Level2` is selected, highlighted samples from the `Level2` text area will be plotted. If only one level exists, highlighted samples in `Level1` will be plotted. </sub> \
-`colors` <sub>**dropdown** menu defining whether cell-type colors are automatically assigned. Selecting `export` outputs a text file containing cell types (column 1) and their corresponding row-wise `RGB` color values (columns 2–4; values range from `0–1`). You may edit these RGB values to create custom color schemes and reload them using the `import` option. Default: `auto`. </sub> \
💡<sub> **Tip:** To customize the ordering of cell types in chord plots, simply rearrange the rows in the exported file. There is no need to modify the associated RGB values if you wish to preserve the automatically assigned colors.</sub> \
-`%min sample` <sub>**numeric input** defining the minimum percentage of samples within the selected group that must contain a given interaction for it to be plotted.</sub> \
-`alpha` <sub>**numeric input** defining transparency of chord arrows. Adjusting transparency improves visualization when multiple interaction arrows overlap..</sub> \
-`Chord` <sub>**button** generates the chord plot using the selected parameters.</sub> 

[**Section 4 (Scatter plot parameters)**](#) \
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

[**Section 5 (Cell-type selection & colocalization matrix export)**](#) \
-`Select Cells To Scatter Plot` <sub>**tree node** used to select cell types for scatter plotting as described in Section 4. </sub> \
-`CellTypePreview` <sub>**button** providing a quick preview of detected cell types and higher-level groupings (if defined). </sub> \
-`ColocMatrix` <sub>**button** used to export the colocalization matrix from the analysis. Supported export formats include `.txt`, `.mat`, and `.mtx`. The adjacent dropdown menu defines the export format</sub> \

[**Section 6 (Saving plots)**](#) \
<sub>Although individual plots may be saved directly using MATLAB figure window options, this section allows batch export of multiple figures using predefined formats.</sub> \
-`Save Plots` <sub>**button**used to save all open plots to a user-selected folder using the options below. </sub> \
---`file type` <sub>**dropdown** menu defining export format (`.pdf`, `.svg`, `.png`, `.tif`, `.jpg`, `.emf`, `.eps`). </sub> \
---`DPI` <sub>**dropdown** menu defining export resolution. </sub> 
