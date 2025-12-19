# Project 03: End-to-End Genomic Prediction Pipeline

## Project Overview

This project demonstrates a complete, industry-standard pipeline for Genomic Prediction in a target population. Starting from raw SNP data, the workflow encompasses the essential steps of estimating genomic heritability and subsequently predicting the Genomic Estimated Breeding Values (GEBVs) for all individuals. This process is the cornerstone of modern Genomic Selection programs in both animal and plant breeding.

The entire analysis was performed using the GCTA (Genome-wide Complex Trait Analysis) software, a gold-standard tool in the field.

## Core Analyses & Key Outputs

The pipeline consists of two primary analytical stages:

### Stage 1: Genomic Heritability Estimation (GREML)
*   **Objective:** To estimate the proportion of phenotypic variance explained by all SNPs (SNP-based heritability, or h²).
*   **Method:** A Genomic Restricted Maximum Likelihood (GREML) analysis was conducted. This method uses the Genomic Relationship Matrix (GRM) to model the genetic covariance between individuals.
*   **Key Output File:** `genomic_heritability_estimate.hsq`
    *   This file contains the estimated heritability and its standard error, providing a crucial understanding of the genetic architecture of the trait.

### Stage 2: Genomic Prediction (GBLUP)
*   **Objective:** To predict the genetic merit (GEBV) of individuals using genome-wide SNP markers.
*   **Method:** A Best Linear Unbiased Prediction (GBLUP) model was implemented. This model leverages the heritability estimate from Stage 1 to predict the breeding values.
*   **Key Output File:** `predicted_gebvs.blp`
    *   This file lists the predicted genetic values for each individual, which is the ultimate actionable output for selection decisions in a breeding program.

## Strategic Significance

Mastering this pipeline is a critical skill for any computational genomicist, enabling data-driven decisions to accelerate genetic gain and improve profitability in breeding industries.

