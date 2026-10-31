#ifndef CONFIG_H_INCLUDED
#define CONFIG_H_INCLUDED

#define PACKAGE "sed"
#define VERSION "3.02 MVS 3.0"

#define USE_REGEX_GNU_H 0
#define HAVE_STRING_H 1
#define HAVE_STDLIB_H 0
#define STDC_HEADERS 0
#define REGEX_MALLOC 0

#define _getopt_initialize _go_initialize
#define _getopt_internal _go_internal
#define getopt_long go_long
#define getopt_long_only go_longo
#define compile_string c_string
#define compile_file c_file
#define compile_program c_program
#define compile_regex c_regex
#define compile_address c_address
#define compile_filename c_filename
#define store_op1 storeo1
#define store_op2 storeo2
#define insert_op1 isrt_op1
#define insert_op2 isrt_op2
#define re_search resrch
#define re_search_2 resrch2
#define re_match_2 rem2
#define re_match_2_internal rem2int
#define re_compile_fastmap recfast
#define re_compile_pattern recpat
#define re_syntax_table restab
#define re_syntax_options resopts

#endif
