#!/bin/bash
#NaCl_12_6 CA_20mM_126_4 CA_26mM_126_4 MG_12mM_126_4 MG_17mM_126_4
for file in  S103F K63E K74N R78H S57P wild
do {

sed  "s/filename/$file/g"  7k5y_H1.parmed > 7k5y_H1_run.parmed
sed  "s/filename/$file/g"  7k5y_Nucleosome.parmed > 7k5y_Nucleosome_run.parmed

cpptraj < 7k5y_H1_run.parmed
cpptraj < 7k5y_Nucleosome_run.parmed
}
done

