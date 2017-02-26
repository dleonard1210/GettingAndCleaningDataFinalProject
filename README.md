---
title: "Description of run_analysis.R"
author: "David M. Leonard"
date: "February 26, 2017"
output: html_document
---


## Purpose

run_analysis.R is a script that reads in a series of files representing smartphone sensor data, and combines and summarizes that data into a tidy data set.

It assumes that all of the required input files have already been loaded into the current working directory.  
It generates a single output file, GroupedMeans.txt, containing 180 rows of 68 columns, plus a header row.  
The script relies on the dplyr library package. It was written and tested on Windows 10.  

Refer to the script itself for more details about the steps taken to produce the tidy data output.


