// number of processes
#define N 4

// table size
#define ARR_SIZE 5

// time interval 1
#define T1 2

// time interval 2
#define T2 3

// DISCRETE TIME MODEL //

// clock max size
#define MAX_TIME 5

// one second of discrete time
#define SECOND 1

// urgent operation
#define urgent(instr1, instr2, T){ \
    atomic{ \
      urgent_time[id] = T; \
      instr1; \
      if \
        :: (!protocol_started) -> protocol_started = 1; \
      fi \
    } \
    if \
      :: (urgent_time[id] >= 1) -> \
ch_id:  atomic{ \
          urgent_time[id] = 0; \
          instr2; \
        } \
    fi \
} \

// sleep operation
inline sleep(T)
{
    sleep_time[ id ] = T;
    sleep_time[ id ] == 0;
}

// the global clock's variables 
byte clock = 0;
byte urgent_time[ARR_SIZE] = 0;
byte sleep_time[ARR_SIZE] = 0;
byte kto = 0;
bool section = 0;
byte tmp_clock = 0;
bool protocol_started = 0;

// one tick of the global clock 
active proctype tick(){
    int i;
    do
      :: atomic { 
        //proper tick of clock
        clock = (clock + SECOND) % MAX_TIME ;
        
        if      
          :: protocol_started -> tmp_clock++ ;
        fi;

        for (i : 1 .. N) {
            //actualization of urgent_timestamps
            if
              :: (urgent_time[i] > 1) -> urgent_time[i]-- ;
              :: (urgent_time[i] == 1) -> urgent_time[i] == 0 ;
              :: (urgent_time[i] == 0) -> skip ;
            fi;

            //actualization of sleep_timestamps
            if
              :: (sleep_time[i] > 0) -> sleep_time[i]-- ;
              :: else -> skip ;
            fi
          }
        } 
    od
}

//algorythm
active [N] proctype P() {
    byte id = _pid;
    do 
      :: urgent(kto == 0, kto = id, T1);
        sleep(T2);
pre_cs: kto == id;
cs:     assert(section == 0);
        section = section + 1;
        section = section - 1;
        kto = 0;
    od;
}

// LTL formula:
ltl { !( ( !P[1]@cs && !P[2]@cs && !P[3]@cs && !P[4]@cs ) U ( (tmp_clock == T1 + T2 + 1) && protocol_started == true)) }

