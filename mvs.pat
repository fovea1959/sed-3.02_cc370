diff -c sed-3.02-virgin/sed/compile.c sed-3.02/sed/compile.c
*** sed-3.02-virgin/sed/compile.c	1998-07-26 18:43:05.000000000 -0400
--- sed-3.02/sed/compile.c	2026-10-31 16:11:22.557984525 -0400
***************
*** 1033,1037 ****
  	    CAST(unsigned long)cur_input.string_expr_count,
  	    CAST(unsigned long)(prog.cur-CAST(unsigned char *)prog.base),
  	    why);
!   exit(1);
  }
--- 1033,1037 ----
  	    CAST(unsigned long)cur_input.string_expr_count,
  	    CAST(unsigned long)(prog.cur-CAST(unsigned char *)prog.base),
  	    why);
!   exit(EXIT_FAILURE);
  }
