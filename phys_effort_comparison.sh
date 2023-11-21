TEST_DIR="test_phys_effort"

make clean
make srams
make build

make extra="$TEST_DIR/effort_none.yml" syn
rm -rf $TEST_DIR/reports_effort_none
cp -r build-asap7-cm/asic-lab/syn-rundir/reports $TEST_DIR/reports_effort_none
make extra="$TEST_DIR/effort_medium.yml" redo-syn
rm -rf $TEST_DIR/reports_effort_medium
cp -r build-asap7-cm/asic-lab/syn-rundir/reports $TEST_DIR/reports_effort_medium
make extra="$TEST_DIR/effort_high.yml" redo-syn
rm -rf $TEST_DIR/reports_effort_high
cp -r build-asap7-cm/asic-lab/syn-rundir/reports $TEST_DIR/reports_effort_high

diff3 $TEST_DIR/reports_effort_high/final_area.rpt $TEST_DIR/reports_effort_medium/final_area.rpt $TEST_DIR/reports_effort_none/final_area.rpt > $TEST_DIR/test_phys_effort_final_area_out.txt
diff3 $TEST_DIR/reports_effort_high/final_gates.rpt $TEST_DIR/reports_effort_medium/final_gates.rpt $TEST_DIR/reports_effort_none/final_gates.rpt > $TEST_DIR/test_phys_effort_final_gates_out.txt
diff3 $TEST_DIR/reports_effort_high/final_qor.rpt $TEST_DIR/reports_effort_medium/final_qor.rpt $TEST_DIR/reports_effort_none/final_qor.rpt > $TEST_DIR/test_phys_effort_final_qor_out.txt
diff3 $TEST_DIR/reports_effort_high/final_time_PVT_0P63V_100C.setup_view.rpt $TEST_DIR/reports_effort_medium/final_time_PVT_0P63V_100C.setup_view.rpt $TEST_DIR/reports_effort_none/final_time_PVT_0P63V_100C.setup_view.rpt > $TEST_DIR/test_phys_effort_final_time_PVT_0P63V_100C.setup_view_out.txt
diff3 $TEST_DIR/reports_effort_high/final.rpt $TEST_DIR/reports_effort_medium/final.rpt $TEST_DIR/reports_effort_none/final.rpt > $TEST_DIR/test_phys_effort_final_out.txt