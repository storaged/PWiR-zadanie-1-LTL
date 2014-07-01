	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM ltl_0 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 11: /* STATE 24 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P */

	case 12: /* STATE 1 */
		;
		now.urgent_time[ Index(((P1 *)this)->id, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 15: /* STATE 6 */
		;
		now.kto = trpt->bup.ovals[1];
		now.urgent_time[ Index(((P1 *)this)->id, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: /* STATE 11 */
		;
		now.sleep_time[ Index(((P1 *)this)->id, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 19: /* STATE 16 */
		;
		now.kto = trpt->bup.oval;
		;
		goto R999;

	case 20: /* STATE 20 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC tick */

	case 21: /* STATE 2 */
		;
		((P0 *)this)->i = trpt->bup.ovals[1];
		now.clock = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 23: /* STATE 5 */
		;
		now.urgent_time[ Index(((P0 *)this)->i, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 27: /* STATE 18 */
		;
		((P0 *)this)->i = trpt->bup.ovals[1];
		now.sleep_time[ Index(((P0 *)this)->i, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 28: /* STATE 18 */
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 29: /* STATE 18 */
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 30: /* STATE 28 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

