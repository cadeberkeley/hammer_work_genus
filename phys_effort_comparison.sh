file_1="none"
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
fi


TEST_DIR="test_phys_effort"

make clean
make srams
make build
rm -rf $TEST_DIR/reports_effort_none $TEST_DIR/reports_effort_medium $TEST_DIR/reports_effort_high $TEST_DIR/test_phys_effort_*

make extra="$TEST_DIR/effort_none.yml" syn
cp -r build-asap7-cm/asic-lab/syn-rundir/reports $TEST_DIR/reports_effort_none
make extra="$TEST_DIR/effort_medium.yml" redo-syn
cp -r build-asap7-cm/asic-lab/syn-rundir/reports $TEST_DIR/reports_effort_medium

if [[ ! -n $file_3! ]]
then 
    make extra="$TEST_DIR/effort_high.yml" redo-syn
    cp -r build-asap7-cm/asic-lab/syn-rundir/reports $TEST_DIR/reports_effort_high

    for file in $TEST_DIR/reports_effort_$file_1/*.rpt; do
        base_name=$(basename ${file})
        diff3 $TEST_DIR/reports_effort_$file_1/$base_name $TEST_DIR/reports_effort_$file_2/$base_name $TEST_DIR/reports_effort_$file_3/$base_name > $TEST_DIR/test_phys_effort_$base_name
    done
else
    for file in $TEST_DIR/reports_effort_$file_1/*.rpt; do
        base_name=$(basename ${file})
        diff $TEST_DIR/reports_effort_$file_1/$base_name $TEST_DIR/reports_effort_$file_2/$base_name > $TEST_DIR/test_phys_effort_$base_name
    done
    cp build-asap7-cm/asic-lab/syn-rundir/reports/final_ple.rpt $TEST_DIR/reports_effort_medium/medium_final_ple
fi


