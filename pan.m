#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM ltl_0 */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!((P[1]._p==cs))&&(P[1]._p==ch_id)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!(( !((((int)((P1 *)Pptr(BASE+1))->_p)==15))&&(((int)((P1 *)Pptr(BASE+1))->_p)==7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:4 - [(((!(!((P[2]._p==cs)))&&!((P[1]._p==cs)))&&(P[1]._p==ch_id)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][3] = 1;
		if (!((( !( !((((int)((P1 *)Pptr(BASE+2))->_p)==15)))&& !((((int)((P1 *)Pptr(BASE+1))->_p)==15)))&&(((int)((P1 *)Pptr(BASE+1))->_p)==7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 5 - _spin_nvr.tmp:5 - [((!((P[2]._p==ch_id))&&!((P[1]._p==cs))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][5] = 1;
		if (!(( !((((int)((P1 *)Pptr(BASE+2))->_p)==7))&& !((((int)((P1 *)Pptr(BASE+1))->_p)==15)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 7 - _spin_nvr.tmp:6 - [(((!((P[2]._p==ch_id))&&!(!((P[2]._p==cs))))&&!((P[1]._p==cs))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][7] = 1;
		if (!((( !((((int)((P1 *)Pptr(BASE+2))->_p)==7))&& !( !((((int)((P1 *)Pptr(BASE+2))->_p)==15))))&& !((((int)((P1 *)Pptr(BASE+1))->_p)==15)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 11 - _spin_nvr.tmp:10 - [(!((P[1]._p==cs)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][11] = 1;
		if (!( !((((int)((P1 *)Pptr(BASE+1))->_p)==15))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 13 - _spin_nvr.tmp:11 - [((!(!((P[2]._p==cs)))&&!((P[1]._p==cs))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][13] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(BASE+2))->_p)==15)))&& !((((int)((P1 *)Pptr(BASE+1))->_p)==15)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 17 - _spin_nvr.tmp:15 - [((P[1]._p==ch_id))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][17] = 1;
		if (!((((int)((P1 *)Pptr(BASE+1))->_p)==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 19 - _spin_nvr.tmp:16 - [(!((P[2]._p==ch_id)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][19] = 1;
		if (!( !((((int)((P1 *)Pptr(BASE+2))->_p)==7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 24 - _spin_nvr.tmp:20 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][24] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P */
	case 12: /* STATE 1 - timer_LTL_4.pml:80 - [urgent_time[id] = 2] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.urgent_time[ Index(((int)((P1 *)this)->id), 5) ]);
		now.urgent_time[ Index(((P1 *)this)->id, 5) ] = 2;
#ifdef VAR_RANGES
		logval("urgent_time[P:id]", ((int)now.urgent_time[ Index(((int)((P1 *)this)->id), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 2 - timer_LTL_4.pml:80 - [((kto==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.kto)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 4 - timer_LTL_4.pml:80 - [((urgent_time[id]>=1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((int)now.urgent_time[ Index(((int)((P1 *)this)->id), 5) ])>=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 5 - timer_LTL_4.pml:80 - [urgent_time[id] = 0] (0:13:2 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.urgent_time[ Index(((int)((P1 *)this)->id), 5) ]);
		now.urgent_time[ Index(((P1 *)this)->id, 5) ] = 0;
#ifdef VAR_RANGES
		logval("urgent_time[P:id]", ((int)now.urgent_time[ Index(((int)((P1 *)this)->id), 5) ]));
#endif
		;
		/* merge: kto = id(13, 6, 13) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.kto);
		now.kto = ((int)((P1 *)this)->id);
#ifdef VAR_RANGES
		logval("kto", ((int)now.kto));
#endif
		;
		/* merge: .(goto)(0, 9, 13) */
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 16: /* STATE 11 - timer_LTL_4.pml:39 - [sleep_time[id] = 3] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.sleep_time[ Index(((int)((P1 *)this)->id), 5) ]);
		now.sleep_time[ Index(((P1 *)this)->id, 5) ] = 3;
#ifdef VAR_RANGES
		logval("sleep_time[P:id]", ((int)now.sleep_time[ Index(((int)((P1 *)this)->id), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 12 - timer_LTL_4.pml:40 - [((sleep_time[id]==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][12] = 1;
		if (!((((int)now.sleep_time[ Index(((int)((P1 *)this)->id), 5) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 14 - timer_LTL_4.pml:82 - [((kto==id))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][14] = 1;
		if (!((((int)now.kto)==((int)((P1 *)this)->id))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 16 - timer_LTL_4.pml:84 - [kto = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((int)now.kto);
		now.kto = 0;
#ifdef VAR_RANGES
		logval("kto", ((int)now.kto));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 20 - timer_LTL_4.pml:86 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC tick */
	case 21: /* STATE 1 - timer_LTL_4.pml:55 - [clock = ((clock+1)%5)] (0:21:2 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.clock);
		now.clock = ((((int)now.clock)+1)%5);
#ifdef VAR_RANGES
		logval("clock", ((int)now.clock));
#endif
		;
		/* merge: i = 1(21, 2, 21) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->i;
		((P0 *)this)->i = 1;
#ifdef VAR_RANGES
		logval("tick:i", ((P0 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 22: /* STATE 3 - timer_LTL_4.pml:57 - [((i<=4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((P0 *)this)->i<=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 4 - timer_LTL_4.pml:60 - [((urgent_time[i]>1))] (16:0:1 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)now.urgent_time[ Index(((P0 *)this)->i, 5) ])>1)))
			continue;
		/* merge: urgent_time[i] = (urgent_time[i]-1)(0, 5, 16) */
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.urgent_time[ Index(((P0 *)this)->i, 5) ]);
		now.urgent_time[ Index(((P0 *)this)->i, 5) ] = (((int)now.urgent_time[ Index(((P0 *)this)->i, 5) ])-1);
#ifdef VAR_RANGES
		logval("urgent_time[tick:i]", ((int)now.urgent_time[ Index(((P0 *)this)->i, 5) ]));
#endif
		;
		/* merge: .(goto)(0, 11, 16) */
		reached[0][11] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 24: /* STATE 6 - timer_LTL_4.pml:61 - [((urgent_time[i]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		if (!((((int)now.urgent_time[ Index(((P0 *)this)->i, 5) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 7 - timer_LTL_4.pml:62 - [((urgent_time[i]==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((int)now.urgent_time[ Index(((P0 *)this)->i, 5) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 8 - timer_LTL_4.pml:63 - [((urgent_time[i]==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((int)now.urgent_time[ Index(((P0 *)this)->i, 5) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 12 - timer_LTL_4.pml:68 - [((sleep_time[i]>0))] (21:0:2 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((int)now.sleep_time[ Index(((P0 *)this)->i, 5) ])>0)))
			continue;
		/* merge: sleep_time[i] = (sleep_time[i]-1)(21, 13, 21) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sleep_time[ Index(((P0 *)this)->i, 5) ]);
		now.sleep_time[ Index(((P0 *)this)->i, 5) ] = (((int)now.sleep_time[ Index(((P0 *)this)->i, 5) ])-1);
#ifdef VAR_RANGES
		logval("sleep_time[tick:i]", ((int)now.sleep_time[ Index(((P0 *)this)->i, 5) ]));
#endif
		;
		/* merge: .(goto)(21, 17, 21) */
		reached[0][17] = 1;
		;
		/* merge: i = (i+1)(21, 18, 21) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->i;
		((P0 *)this)->i = (((P0 *)this)->i+1);
#ifdef VAR_RANGES
		logval("tick:i", ((P0 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 28: /* STATE 15 - timer_LTL_4.pml:69 - [(1)] (21:0:1 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(21, 17, 21) */
		reached[0][17] = 1;
		;
		/* merge: i = (i+1)(21, 18, 21) */
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->i;
		((P0 *)this)->i = (((P0 *)this)->i+1);
#ifdef VAR_RANGES
		logval("tick:i", ((P0 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 29: /* STATE 18 - timer_LTL_4.pml:57 - [i = (i+1)] (0:21:1 - 3) */
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->i;
		((P0 *)this)->i = (((P0 *)this)->i+1);
#ifdef VAR_RANGES
		logval("tick:i", ((P0 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 30: /* STATE 28 - timer_LTL_4.pml:74 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][28] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

