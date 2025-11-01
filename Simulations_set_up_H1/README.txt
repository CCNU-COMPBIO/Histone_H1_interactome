This directory contains input files, scripts, and example outputs used for molecular dynamics (MD) simulations of nucleosome systems containing histone H1 and its mutants.
Simulations were carried out using AMBER18 with the ff14SB forcefield and OPC water model.
1. Nucleosome_model_PDBs/
Contains PDB structures of nucleosome models (wild-type and mutant H1).
2. analysis/
Contains scripts and templates for trajectory analysis (RMSF, hbonds, geometric, binding_energy.).
3. example_output/
Example outputs from short test simulations for reference.

Simulation Input Files /
Min.in — Energy minimization input file
Equil_v.in — Equilibration under constant volume (NVT)
Equil_pt.in — Equilibration under constant pressure (NPT)
Prod.in — Production run input file

Script /
gen_nucl.leap
LEaP script used to build the nucleosome system and load forcefield parameters.

mist_sub_job_GPU_sample.sh
Example job submission script for running simulations on GPU clusters