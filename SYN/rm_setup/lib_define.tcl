set std_lvt_library_path "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_lvt/db_ccs"
set std_rvt_library_path "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_rvt/db_ccs"
set std_hvt_library_path "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/stdcell_hvt/db_ccs"
set gpio_library_path    "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/io_std/db_ccs"
set powerio_library_path "/data/SYNOPSYS/lib/32nm/SAED32_EDK/lib/io_sp/db_ccs"

set ADDITIONAL_SEARCH_PATH "\
$std_lvt_library_path \
$std_rvt_library_path \
$std_hvt_library_path \
$gpio_library_path \
$powerio_library_path \
"

set TARGET_LIBRARY_FILES          " \
saed32rvt_ff1p16vn40c.db \
saed32rvt_ss0p95v125c.db \
"

set ADDITIONAL_LINK_LIB_FILES     "\
"

set_app_var search_path ". ${ADDITIONAL_SEARCH_PATH} $search_path"
set synthetic_library dw_foundation.sldb
set_app_var target_library ${TARGET_LIBRARY_FILES}
set_app_var link_library "* $target_library $ADDITIONAL_LINK_LIB_FILES $synthetic_library"


