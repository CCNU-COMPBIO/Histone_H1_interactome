foreach name {K64E K75N R79H S58P S104F wild} {
    foreach run {1 2 3} {
        mol delete all
        mol load parm7 ../${name}_rw.prmtop
        mol addfile ../${name}_run${run}_rw.nc first 2500 last 25000 step 10 waitfor all

        source rename_chainID_with_tail.tcl
        package require hbonds

        # Define selections
        set sel0 [atomselect top "(segname CHI or segname CHJ)"]
        set sel1 [atomselect top "(segname CHU)"]
        #set sel2 [atomselect top "(segname CHB CHF)"]
        #set sel3 [atomselect top "(segname CHC CHG)"]
        #set sel4 [atomselect top "(segname CHD CHH)"]

        # Calculate hydrogen bonds
        hbonds -sel1 $sel0 -sel2 $sel1 -dist 3 -ang 20 -type unique -writefile yes \
            -outfile ./runs_data/DNA_H1_hb_${name}_run${run}.dat \
            -detailout ./runs_data/Details_DNA_H1_hb_${name}_run${run}.dat

        # Example for histones (uncomment if needed)
        # hbonds -sel1 $sel0 -sel2 $sel2 -dist 3 -ang 20 -type unique -writefile yes \
        #     -outfile ./DNA_histone_hbonds/DNA_histone_hb_${name}_run${run}_h4.dat \
        #     -detailout ./DNA_histone_hbonds/Details_DNA_histone_hb_${name}_run${run}_h4.dat

        # Delete selections to free memory
        $sel0 delete
        $sel1 delete
        #$sel2 delete
        #$sel3 delete
        #$sel4 delete
    }
}

exit



