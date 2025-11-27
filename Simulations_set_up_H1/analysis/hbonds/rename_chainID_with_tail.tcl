proc renumber { sel start } {
	if { [$sel num] == 0 } {
		puts "Error in renumber: empty selection!"
		return
	}
	set oresid [ $sel get resid ]
	set delta [ expr $start - [ lindex $oresid 0] ]
	set nresid { }
	foreach r $oresid {
		lappend nresid [ expr $r + $delta ]
	}
	$sel set resid $nresid
}


set sel [atomselect top "resid 1 to 97 "]
$sel set chain A
$sel set segname CHA
renumber $sel 1
$sel delete

set sel [atomselect top "resid 98 to 180 "]
$sel set chain B
$sel set segname CHB
renumber $sel 1
$sel delete

set sel [atomselect top "resid 181 to 289 "]
$sel set chain C
$sel set segname CHC
renumber $sel 1
$sel delete

set sel [atomselect top "resid 290 to 384 "]
$sel set chain D
$sel set segname CHD
renumber $sel 1
$sel delete


set sel [atomselect top "resid 385 to 481 "]
$sel set chain E
$sel set segname CHE
renumber $sel 1
$sel delete

set sel [atomselect top "resid 482 to 564 "]
$sel set chain F
$sel set segname CHF
renumber $sel 1
$sel delete

set sel [atomselect top "resid 565 to 673 "]
$sel set chain G
$sel set segname CHG
renumber $sel 1
$sel delete


set sel [atomselect top "resid 674 to 768 "]
$sel set chain H
$sel set segname CHH
renumber $sel 1
$sel delete


set sel [atomselect top "resid 769 to 939 "]
$sel set chain I
$sel set segname CHI
renumber $sel 1
$sel delete


set sel [atomselect top "resid 940 to 1110 "]
$sel set chain J
$sel set segname CHJ
renumber $sel 1
$sel delete


set sel [atomselect top "resid 1111 to 1185 "]
$sel set chain U
$sel set segname CHU
renumber $sel 1
$sel delete


