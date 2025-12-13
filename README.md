# Computational Genomics Portfolio

Welcome to my professional portfolio. This repository showcases my projects and skills in computational genomics, bioinformatics, and their application in animal breeding. Each project is organized into its own directory.

---

## 📂 Project 1: Standard Genomic Data Quality Control (QC) Pipeline

This foundational project demonstrates a complete, standard pipeline for performing essential Quality Control (QC) steps on a simulated genomic dataset.

### Workflow & Methods:

The pipeline was executed on a simulated dataset of **500 individuals** and **10,000 SNPs**.

1.  **Format Optimization:** Converted text-based PLINK files (`.ped`/`.map`) to the efficient binary format (`.bed`/`.bim`/`.fam`), achieving a >95% reduction in data size.

2.  **Missingness Analysis:** Calculated missing data rates per individual (`--mind`) and per SNP (`--geno`). Visualization of these rates was performed using R/ggplot2 to inform filtering decisions.

3.  **Data Filtering & Cleaning:**
    - Applied a `geno` threshold of 0.5, removing **3,596** low-quality variants.
    - Applied a `mind` threshold of 0.5, resulting in **0** individuals being removed.
    - Applied a Minor Allele Frequency (`--maf`) threshold of 0.01.

4.  **Final Output:** Generated a cleaned, analysis-ready dataset containing **500 individuals** and **6,404 high-quality variants**.

### Key Files in this Project:
- `plot_missing_histograms.R`: The R script used for visualization.
- `sample_missingness_hist.png`: The output plot for sample missingness.
- `snp_missingness_hist.png`: The output plot for SNP missingness.
- `sim_qc_filtered_2.log`: The final log file from PLINK detailing the steps.

---

### Tools Used in this Project:

- **PLINK v1.9:** For core data manipulation and filtering.
- **R v4.x & ggplot2:** For statistical visualization.
- **Bash Scripting:** For workflow automation.

