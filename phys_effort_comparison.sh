'file_1="none"
file_2="none"
file_3=""

if [[ "$*" == *"none"* ]]
then
    file_1="none"
else [[[ "$*" == *"medium"* ]]]
    file_1="medium"
fi

if [[ "$*" == *"medium"* ]]
then
    file_2="medium"
else
    file_2="high"
fi

if [[ "$*" == *"high"* ]]
then
    file_3="high"
fi'


file_1="none"
file_2="medium"
file_3="high"

TEST_DIR="test_phys_effort"

for file in build-asap7-cm/asic-lab-effort_none/syn-rundir/reports/*.rpt; do
    base_name=$(basename ${file})
    diff3 \
    build-asap7-cm/asic-lab-effort_none/syn-rundir/reports/$base_name \
    build-asap7-cm/asic-lab-effort_medium/syn-rundir/reports/$base_name \
    build-asap7-cm/asic-lab-effort_high/syn-rundir/reports/$base_name \
    > $TEST_DIR/compare_$base_name
done

diff3 \
    build-asap7-cm/asic-lab-effort_none/syn-rundir/syn.tcl \
    build-asap7-cm/asic-lab-effort_medium/syn-rundir/syn.tcl \
    build-asap7-cm/asic-lab-effort_high/syn-rundir/syn.tcl \
    > $TEST_DIR/compare_syn.tcl

'
if [[ ! -n $file_3! ]]
then 
    
else
    for file in $TEST_DIR/reports_effort_$file_1/*.rpt; do
        base_name=$(basename ${file})
        diff $TEST_DIR/reports_effort_$file_1/$base_name $TEST_DIR/reports_effort_$file_2/$base_name > $TEST_DIR/compare_$base_name
    done
    cp build-asap7-cm/asic-lab/syn-rundir/reports/final_ple.rpt $TEST_DIR/reports_effort_medium/medium_final_ple
fi


'