/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_148(char*, char *);
IKI_DLLESPEC extern void execute_149(char*, char *);
IKI_DLLESPEC extern void execute_355(char*, char *);
IKI_DLLESPEC extern void execute_356(char*, char *);
IKI_DLLESPEC extern void execute_357(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_155(char*, char *);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void execute_156(char*, char *);
IKI_DLLESPEC extern void execute_7(char*, char *);
IKI_DLLESPEC extern void execute_8(char*, char *);
IKI_DLLESPEC extern void execute_9(char*, char *);
IKI_DLLESPEC extern void execute_157(char*, char *);
IKI_DLLESPEC extern void execute_158(char*, char *);
IKI_DLLESPEC extern void execute_159(char*, char *);
IKI_DLLESPEC extern void execute_24(char*, char *);
IKI_DLLESPEC extern void execute_170(char*, char *);
IKI_DLLESPEC extern void execute_171(char*, char *);
IKI_DLLESPEC extern void execute_172(char*, char *);
IKI_DLLESPEC extern void execute_173(char*, char *);
IKI_DLLESPEC extern void execute_174(char*, char *);
IKI_DLLESPEC extern void execute_175(char*, char *);
IKI_DLLESPEC extern void execute_176(char*, char *);
IKI_DLLESPEC extern void execute_177(char*, char *);
IKI_DLLESPEC extern void execute_169(char*, char *);
IKI_DLLESPEC extern void execute_115(char*, char *);
IKI_DLLESPEC extern void execute_288(char*, char *);
IKI_DLLESPEC extern void execute_289(char*, char *);
IKI_DLLESPEC extern void execute_290(char*, char *);
IKI_DLLESPEC extern void execute_151(char*, char *);
IKI_DLLESPEC extern void execute_152(char*, char *);
IKI_DLLESPEC extern void execute_153(char*, char *);
IKI_DLLESPEC extern void execute_154(char*, char *);
IKI_DLLESPEC extern void execute_358(char*, char *);
IKI_DLLESPEC extern void execute_359(char*, char *);
IKI_DLLESPEC extern void execute_360(char*, char *);
IKI_DLLESPEC extern void execute_361(char*, char *);
IKI_DLLESPEC extern void execute_362(char*, char *);
IKI_DLLESPEC extern void execute_363(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_132(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_140(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_152(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_169(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[57] = {(funcp)execute_148, (funcp)execute_149, (funcp)execute_355, (funcp)execute_356, (funcp)execute_357, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_155, (funcp)execute_5, (funcp)execute_156, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_157, (funcp)execute_158, (funcp)execute_159, (funcp)execute_24, (funcp)execute_170, (funcp)execute_171, (funcp)execute_172, (funcp)execute_173, (funcp)execute_174, (funcp)execute_175, (funcp)execute_176, (funcp)execute_177, (funcp)execute_169, (funcp)execute_115, (funcp)execute_288, (funcp)execute_289, (funcp)execute_290, (funcp)execute_151, (funcp)execute_152, (funcp)execute_153, (funcp)execute_154, (funcp)execute_358, (funcp)execute_359, (funcp)execute_360, (funcp)execute_361, (funcp)execute_362, (funcp)execute_363, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_42, (funcp)transaction_46, (funcp)transaction_50, (funcp)transaction_54, (funcp)transaction_67, (funcp)transaction_80, (funcp)transaction_93, (funcp)transaction_106, (funcp)transaction_119, (funcp)transaction_132, (funcp)transaction_136, (funcp)transaction_140, (funcp)transaction_144, (funcp)transaction_148, (funcp)transaction_152, (funcp)transaction_156, (funcp)transaction_169};
const int NumRelocateId= 57;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Booths_MultiplierTB_func_synth/xsim.reloc",  (void **)funcTab, 57);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Booths_MultiplierTB_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Booths_MultiplierTB_func_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Booths_MultiplierTB_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Booths_MultiplierTB_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Booths_MultiplierTB_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
