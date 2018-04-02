module libzfs;
import core.stdc.config;
import core.stdc.stdarg: va_list;
struct struct___locale_data { int dummy; }
struct mnttab{}

/**
    Semi auto-translated from the C to D by Laeeth Isharc and Kaleidic Associates 2018
    Use at your own risk - I have not used this yet much.
*/


/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License (the "License").
 * You may not use this file except in compliance with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */

/*
 * Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
 * Copyright (c) 2011, 2015 by Delphix. All rights reserved.
 * Copyright (c) 2012, Joyent, Inc. All rights reserved.
 * Copyright (c) 2013 Steven Hartland. All rights reserved.
 * Copyright (c) 2016, Intel Corporation.
 * Copyright 2016 Nexenta Systems, Inc.
 * Copyright (c) 2017 Datto Inc.
 * Copyright (c) 2017 Open-E, Inc. All Rights Reserved.
 */


extern(C) {
    void __assert_fail(const(char)*, const(char)*, uint, const(char)*, );
    void __assert_perror_fail(int, const(char)*, uint, const(char)*, );
    void __assert(const(char)*, const(char)*, int, );
}

extern(C) {
    struct _Anonymous_1
    {
        c_ulong[16] __val;
    }
    alias __sigset_t = _Anonymous_1;




    union union_sigval
    {
        int sival_int;
        void* sival_ptr;
    }
    alias __FILE = struct__IO_FILE;
    alias timer_t = __timer_t;
    alias time_t = __time_t;
    alias clock_t = __clock_t;
    alias clockid_t = __clockid_t;


    alias FILE = struct__IO_FILE;
    alias sigset_t = __sigset_t;
    struct struct_timespec
    {
        __time_t tv_sec;
        __syscall_slong_t tv_nsec;
    }
    alias sig_atomic_t = __sig_atomic_t;
    struct struct_timeval
    {
        __time_t tv_sec;
        __suseconds_t tv_usec;
    }
    alias sigval_t = union_sigval;
    alias __mbstate_t = _Anonymous_2;
    struct _Anonymous_2
    {
        int __count;
        union _Anonymous_3
        {
            uint __wch;
            char[4] __wchb;
        }
        _Anonymous_3 __value;
    }
    struct struct_sigevent
    {
        sigval_t sigev_value;
        int sigev_signo;
        int sigev_notify;
        union _Anonymous_4
        {
            int[12] _pad;
            __pid_t _tid;
            struct _Anonymous_5
            {
                void function(union_sigval) _function;
                pthread_attr_t* _attribute;
            }
            _Anonymous_5 _sigev_thread;
        }
        _Anonymous_4 _sigev_un;
    }
    alias sigevent_t = struct_sigevent;


    alias _G_fpos_t = _Anonymous_6;
    struct _Anonymous_6
    {
        __off_t __pos;
        __mbstate_t __state;
    }
    struct struct_sigstack
    {
        void* ss_sp;
        int ss_onstack;
    }
    alias uint8_t = __uint8_t;
    alias int8_t = __int8_t;


    enum _Anonymous_7
    {
        _PC_LINK_MAX = 0,
        _PC_MAX_CANON = 1,
        _PC_MAX_INPUT = 2,
        _PC_NAME_MAX = 3,
        _PC_PATH_MAX = 4,
        _PC_PIPE_BUF = 5,
        _PC_CHOWN_RESTRICTED = 6,
        _PC_NO_TRUNC = 7,
        _PC_VDISABLE = 8,
        _PC_SYNC_IO = 9,
        _PC_ASYNC_IO = 10,
        _PC_PRIO_IO = 11,
        _PC_SOCK_MAXBUF = 12,
        _PC_FILESIZEBITS = 13,
        _PC_REC_INCR_XFER_SIZE = 14,
        _PC_REC_MAX_XFER_SIZE = 15,
        _PC_REC_MIN_XFER_SIZE = 16,
        _PC_REC_XFER_ALIGN = 17,
        _PC_ALLOC_SIZE_MIN = 18,
        _PC_SYMLINK_MAX = 19,
        _PC_2_SYMLINKS = 20,
    }
    enum
    {
        _PC_LINK_MAX = 0,
        _PC_MAX_CANON = 1,
        _PC_MAX_INPUT = 2,
        _PC_NAME_MAX = 3,
        _PC_PATH_MAX = 4,
        _PC_PIPE_BUF = 5,
        _PC_CHOWN_RESTRICTED = 6,
        _PC_NO_TRUNC = 7,
        _PC_VDISABLE = 8,
        _PC_SYNC_IO = 9,
        _PC_ASYNC_IO = 10,
        _PC_PRIO_IO = 11,
        _PC_SOCK_MAXBUF = 12,
        _PC_FILESIZEBITS = 13,
        _PC_REC_INCR_XFER_SIZE = 14,
        _PC_REC_MAX_XFER_SIZE = 15,
        _PC_REC_MIN_XFER_SIZE = 16,
        _PC_REC_XFER_ALIGN = 17,
        _PC_ALLOC_SIZE_MIN = 18,
        _PC_SYMLINK_MAX = 19,
        _PC_2_SYMLINKS = 20,
    }
    struct struct_sigaction
    {
        union _Anonymous_8
        {
            __sighandler_t sa_handler;
            void function(int, siginfo_t*, void*) sa_sigaction;
        }
        _Anonymous_8 __sigaction_handler;
        __sigset_t sa_mask;
        int sa_flags;
        void function() sa_restorer;
    }
    alias uint16_t = __uint16_t;


    alias int16_t = __int16_t;




    extern __gshared int sys_nerr;




    struct _Anonymous_9
    {
        void* ss_sp;
        int ss_flags;
        int ss_size;
    }




    alias stack_t = _Anonymous_9;




    alias uint32_t = __uint32_t;
    alias int32_t = __int32_t;
    alias uint64_t = __uint64_t;
    alias int64_t = __int64_t;


    enum _Anonymous_10
    {
        SS_ONSTACK = 1,
        SS_DISABLE = 2,
    }
    enum
    {
        SS_ONSTACK = 1,
        SS_DISABLE = 2,
    }




    enum _Anonymous_11
    {
        SIGEV_SIGNAL = 0,
        SIGEV_NONE = 1,
        SIGEV_THREAD = 2,
        SIGEV_THREAD_ID = 4,
    }
    enum
    {
        SIGEV_SIGNAL = 0,
        SIGEV_NONE = 1,
        SIGEV_THREAD = 2,
        SIGEV_THREAD_ID = 4,
    }






    struct struct_winsize
    {
        ushort ws_row;
        ushort ws_col;
        ushort ws_xpixel;
        ushort ws_ypixel;
    }






    alias _G_fpos64_t = _Anonymous_12;
    struct _Anonymous_12
    {
        __off64_t __pos;
        __mbstate_t __state;
    }
    extern __gshared const(const(char)*)[0] sys_errlist;
    alias pthread_t = c_ulong;
    alias __u_char = ubyte;
    alias __u_short = ushort;
    struct struct__fpx_sw_bytes
    {
        __uint32_t magic1;
        __uint32_t extended_size;
        __uint64_t xstate_bv;
        __uint32_t xstate_size;
        __uint32_t[7] __glibc_reserved1;
    }





    int pthread_sigmask(int, const(const __sigset_t)*, __sigset_t*, );




    alias __u_int = uint;


    __uint16_t __uint16_identity(__uint16_t, );




    const(char)* getexecname();
    void* alloca(int, );
    alias pthread_mutexattr_t = _Anonymous_13;
    union _Anonymous_13
    {
        char[4] __size;
        int __align;
    }
    alias __u_long = c_ulong;
    alias u_char = __u_char;
    alias __gwchar_t = int;
    alias u_short = __u_short;


    alias s_reg_t = c_long;
    alias active_reg_t = c_ulong;
    alias u_int = __u_int;
    enum _Anonymous_14
    {
        SI_ASYNCNL = -60,
        SI_TKILL = -6,
        SI_SIGIO = -5,
        SI_ASYNCIO = -4,
        SI_MESGQ = -3,
        SI_TIMER = -2,
        SI_QUEUE = -1,
        SI_USER = 0,
        SI_KERNEL = 128,
    }
    enum
    {
        SI_ASYNCNL = -60,
        SI_TKILL = -6,
        SI_SIGIO = -5,
        SI_ASYNCIO = -4,
        SI_MESGQ = -3,
        SI_TIMER = -2,
        SI_QUEUE = -1,
        SI_USER = 0,
        SI_KERNEL = 128,
    }






    int pthread_kill(pthread_t, int, );
    extern __gshared char* optarg;




    struct struct_termio
    {
        ushort c_iflag;
        ushort c_oflag;
        ushort c_cflag;
        ushort c_lflag;
        ubyte c_line;
        ubyte[8] c_cc;
    }


    alias siginfo_t = _Anonymous_15;


    struct _Anonymous_15
    {
        int si_signo;
        int si_errno;
        int si_code;
        int __pad0;
        union _Anonymous_16
        {
            int[28] _pad;
            struct _Anonymous_17
            {
                __pid_t si_pid;
                __uid_t si_uid;
            }
            _Anonymous_17 _kill;
            struct _Anonymous_18
            {
                int si_tid;
                int si_overrun;
                sigval_t si_sigval;
            }
            _Anonymous_18 _timer;
            struct _Anonymous_19
            {
                __pid_t si_pid;
                __uid_t si_uid;
                sigval_t si_sigval;
            }
            _Anonymous_19 _rt;
            struct _Anonymous_20
            {
                __pid_t si_pid;
                __uid_t si_uid;
                int si_status;
                __clock_t si_utime;
                __clock_t si_stime;
            }
            _Anonymous_20 _sigchld;
            struct _Anonymous_21
            {
                void* si_addr;
                short si_addr_lsb;
                union _Anonymous_22
                {
                    struct _Anonymous_23
                    {
                        void* _lower;
                        void* _upper;
                    }
                    _Anonymous_23 _addr_bnd;
                    __uint32_t _pkey;
                }
                _Anonymous_22 _bounds;
            }
            _Anonymous_21 _sigfault;
            struct _Anonymous_24
            {
                c_long si_band;
                int si_fd;
            }
            _Anonymous_24 _sigpoll;
            struct _Anonymous_25
            {
                void* _call_addr;
                int _syscall;
                uint _arch;
            }
            _Anonymous_25 _sigsys;
        }
        _Anonymous_16 _sifields;
    }




    alias u_long = __u_long;
    alias __int8_t = byte;






    int* __errno_location();
    alias quad_t = __quad_t;






    alias greg_t = long;
    alias __uint8_t = ubyte;






    alias u_quad_t = __u_quad_t;
    __uint32_t __uint32_identity(__uint32_t, );






    alias __int16_t = short;
    alias __uint16_t = ushort;
    alias fsid_t = __fsid_t;
    struct struct__fpreg
    {
        ushort[4] significand;
        ushort exponent;
    }
    alias __int32_t = int;
    union _Anonymous_26
    {
        char[4] __size;
        int __align;
    }
    alias pthread_condattr_t = _Anonymous_26;
    alias __uint32_t = uint;
    int ioctl(int, c_ulong, ...);
    alias reg_syntax_t = c_ulong;




    enum _Anonymous_27
    {
        DATA_TYPE_UNKNOWN = 0,
        DATA_TYPE_BOOLEAN = 1,
        DATA_TYPE_BYTE = 2,
        DATA_TYPE_INT16 = 3,
        DATA_TYPE_UINT16 = 4,
        DATA_TYPE_INT32 = 5,
        DATA_TYPE_UINT32 = 6,
        DATA_TYPE_INT64 = 7,
        DATA_TYPE_UINT64 = 8,
        DATA_TYPE_STRING = 9,
        DATA_TYPE_BYTE_ARRAY = 10,
        DATA_TYPE_INT16_ARRAY = 11,
        DATA_TYPE_UINT16_ARRAY = 12,
        DATA_TYPE_INT32_ARRAY = 13,
        DATA_TYPE_UINT32_ARRAY = 14,
        DATA_TYPE_INT64_ARRAY = 15,
        DATA_TYPE_UINT64_ARRAY = 16,
        DATA_TYPE_STRING_ARRAY = 17,
        DATA_TYPE_HRTIME = 18,
        DATA_TYPE_NVLIST = 19,
        DATA_TYPE_NVLIST_ARRAY = 20,
        DATA_TYPE_BOOLEAN_VALUE = 21,
        DATA_TYPE_INT8 = 22,
        DATA_TYPE_UINT8 = 23,
        DATA_TYPE_BOOLEAN_ARRAY = 24,
        DATA_TYPE_INT8_ARRAY = 25,
        DATA_TYPE_UINT8_ARRAY = 26,
        DATA_TYPE_DOUBLE = 27,
    }
    enum
    {
        DATA_TYPE_UNKNOWN = 0,
        DATA_TYPE_BOOLEAN = 1,
        DATA_TYPE_BYTE = 2,
        DATA_TYPE_INT16 = 3,
        DATA_TYPE_UINT16 = 4,
        DATA_TYPE_INT32 = 5,
        DATA_TYPE_UINT32 = 6,
        DATA_TYPE_INT64 = 7,
        DATA_TYPE_UINT64 = 8,
        DATA_TYPE_STRING = 9,
        DATA_TYPE_BYTE_ARRAY = 10,
        DATA_TYPE_INT16_ARRAY = 11,
        DATA_TYPE_UINT16_ARRAY = 12,
        DATA_TYPE_INT32_ARRAY = 13,
        DATA_TYPE_UINT32_ARRAY = 14,
        DATA_TYPE_INT64_ARRAY = 15,
        DATA_TYPE_UINT64_ARRAY = 16,
        DATA_TYPE_STRING_ARRAY = 17,
        DATA_TYPE_HRTIME = 18,
        DATA_TYPE_NVLIST = 19,
        DATA_TYPE_NVLIST_ARRAY = 20,
        DATA_TYPE_BOOLEAN_VALUE = 21,
        DATA_TYPE_INT8 = 22,
        DATA_TYPE_UINT8 = 23,
        DATA_TYPE_BOOLEAN_ARRAY = 24,
        DATA_TYPE_INT8_ARRAY = 25,
        DATA_TYPE_UINT8_ARRAY = 26,
        DATA_TYPE_DOUBLE = 27,
    }
    alias data_type_t = _Anonymous_27;
    alias __int64_t = c_long;




    alias int_least8_t = byte;
    alias suseconds_t = __suseconds_t;






    __uint64_t __uint64_identity(__uint64_t, );


    int nvpair_value_match(nvpair_t*, int, char*, char**, );


    alias __uint64_t = c_ulong;




    alias loff_t = __loff_t;






    alias int_least16_t = short;
    enum enum_boolean
    {
        B_FALSE = 0,
        B_TRUE = 1,
    }
    enum
    {
        B_FALSE = 0,
        B_TRUE = 1,
    }






    int nvpair_value_match_regex(nvpair_t*, int, char*, regex_t*, char**, );


    alias boolean_t = enum_boolean;
    alias int_least32_t = int;
    alias gregset_t = long[23];
    struct struct__fpxreg
    {
        ushort[4] significand;
        ushort exponent;
        ushort[3] __glibc_reserved1;
    }
    alias uchar_t = ubyte;
    alias int_least64_t = c_long;
    void nvlist_print(FILE*, nvlist_t*, );
    alias ino_t = __ino_t;


    alias ushort_t = ushort;
    alias caddr32_t = uint32_t;
    alias daddr32_t = int32_t;
    void dump_nvlist(nvlist_t*, int, );


    alias __fd_mask = c_long;




    alias uint_t = uint;
    alias pthread_key_t = uint;


    extern __gshared int optind;
    alias off32_t = int32_t;


    alias ulong_t = c_ulong;
    alias ino32_t = uint32_t;
    alias longlong_t = long;
    struct struct_timezone
    {
        int tz_minuteswest;
        int tz_dsttime;
    }






    alias __quad_t = c_long;
    alias blkcnt32_t = int32_t;
    alias pthread_once_t = int;


    alias __u_quad_t = c_ulong;
    alias u_longlong_t = ulong;
    alias fsblkcnt32_t = uint32_t;
    struct struct__xmmreg
    {
        __uint32_t[4] element;
    }
    alias fsfilcnt32_t = uint32_t;
    alias uint_least8_t = ubyte;
    alias id32_t = int32_t;
    alias uint_least16_t = ushort;


    extern __gshared int opterr;
    alias uint_least32_t = uint;


    alias offset_t = longlong_t;




    alias major32_t = uint32_t;
    union union_pthread_attr_t
    {
        char[56] __size;
        c_long __align;
    }


    alias u_offset_t = u_longlong_t;
    alias minor32_t = uint32_t;
    alias len_t = u_longlong_t;
    alias __timezone_ptr_t = struct_timezone;
    alias uint_least64_t = c_ulong;
    alias key32_t = int32_t;
    alias div_t = _Anonymous_28;
    struct _Anonymous_28
    {
        int quot;
        int rem;
    }







    struct _Anonymous_29
    {
        __fd_mask[16] __fds_bits;
    }






    alias fd_set = _Anonymous_29;
    alias mode32_t = uint32_t;
    extern __gshared int optopt;


    alias diskaddr_t = longlong_t;






    alias uid32_t = uint32_t;


    alias dev_t = __dev_t;
    alias pgcnt_t = ulong_t;
    alias __intmax_t = c_long;
    alias gid32_t = uint32_t;




    alias spgcnt_t = c_long;
    alias pthread_attr_t = union_pthread_attr_t;
    alias nlink32_t = uint32_t;
    alias __uintmax_t = c_ulong;
    alias dev32_t = uint32_t;
    alias pid32_t = int32_t;






    int spl_pagesize();






    alias pri_t = short;
    alias size32_t = uint32_t;


    alias gid_t = __gid_t;






    struct struct___pthread_rwlock_arch_t
    {
        uint __readers;
        uint __writers;
        uint __wrphase_futex;
        uint __writers_futex;
        uint __pad3;
        uint __pad4;
        int __cur_writer;
        int __shared;
        byte __rwelision;
        ubyte[7] __pad1;
        c_ulong __pad2;
        uint __flags;
    }


    alias ssize32_t = int32_t;






    alias ldiv_t = _Anonymous_30;
    struct _Anonymous_30
    {
        c_long quot;
        c_long rem;
    }
    alias zoneid_t = int;
    alias projid_t = int;




    alias pthread_mutex_t = _Anonymous_31;




    union _Anonymous_31
    {
        struct___pthread_mutex_s __data;
        char[40] __size;
        c_long __align;
    }






    alias time32_t = int32_t;
    alias int_fast8_t = byte;


    int gettimeofday(struct_timeval*, __timezone_ptr_t, );


    enum _Anonymous_32
    {
        ILL_ILLOPC = 1,
        ILL_ILLOPN = 2,
        ILL_ILLADR = 3,
        ILL_ILLTRP = 4,
        ILL_PRVOPC = 5,
        ILL_PRVREG = 6,
        ILL_COPROC = 7,
        ILL_BADSTK = 8,
    }
    enum
    {
        ILL_ILLOPC = 1,
        ILL_ILLOPN = 2,
        ILL_ILLADR = 3,
        ILL_ILLTRP = 4,
        ILL_PRVOPC = 5,
        ILL_PRVREG = 6,
        ILL_COPROC = 7,
        ILL_BADSTK = 8,
    }


    alias clock32_t = int32_t;


    alias __sighandler_t = void function(int);






    alias major_t = int;
    alias minor_t = int;


    alias mode_t = __mode_t;




    struct struct_timeval32
    {
        time32_t tv_sec;
        int32_t tv_usec;
    }
    alias int_fast16_t = c_long;


    alias hrtime_t = long;
    enum _Anonymous_33
    {
        _SC_ARG_MAX = 0,
        _SC_CHILD_MAX = 1,
        _SC_CLK_TCK = 2,
        _SC_NGROUPS_MAX = 3,
        _SC_OPEN_MAX = 4,
        _SC_STREAM_MAX = 5,
        _SC_TZNAME_MAX = 6,
        _SC_JOB_CONTROL = 7,
        _SC_SAVED_IDS = 8,
        _SC_REALTIME_SIGNALS = 9,
        _SC_PRIORITY_SCHEDULING = 10,
        _SC_TIMERS = 11,
        _SC_ASYNCHRONOUS_IO = 12,
        _SC_PRIORITIZED_IO = 13,
        _SC_SYNCHRONIZED_IO = 14,
        _SC_FSYNC = 15,
        _SC_MAPPED_FILES = 16,
        _SC_MEMLOCK = 17,
        _SC_MEMLOCK_RANGE = 18,
        _SC_MEMORY_PROTECTION = 19,
        _SC_MESSAGE_PASSING = 20,
        _SC_SEMAPHORES = 21,
        _SC_SHARED_MEMORY_OBJECTS = 22,
        _SC_AIO_LISTIO_MAX = 23,
        _SC_AIO_MAX = 24,
        _SC_AIO_PRIO_DELTA_MAX = 25,
        _SC_DELAYTIMER_MAX = 26,
        _SC_MQ_OPEN_MAX = 27,
        _SC_MQ_PRIO_MAX = 28,
        _SC_VERSION = 29,
        _SC_PAGESIZE = 30,
        _SC_RTSIG_MAX = 31,
        _SC_SEM_NSEMS_MAX = 32,
        _SC_SEM_VALUE_MAX = 33,
        _SC_SIGQUEUE_MAX = 34,
        _SC_TIMER_MAX = 35,
        _SC_BC_BASE_MAX = 36,
        _SC_BC_DIM_MAX = 37,
        _SC_BC_SCALE_MAX = 38,
        _SC_BC_STRING_MAX = 39,
        _SC_COLL_WEIGHTS_MAX = 40,
        _SC_EQUIV_CLASS_MAX = 41,
        _SC_EXPR_NEST_MAX = 42,
        _SC_LINE_MAX = 43,
        _SC_RE_DUP_MAX = 44,
        _SC_CHARCLASS_NAME_MAX = 45,
        _SC_2_VERSION = 46,
        _SC_2_C_BIND = 47,
        _SC_2_C_DEV = 48,
        _SC_2_FORT_DEV = 49,
        _SC_2_FORT_RUN = 50,
        _SC_2_SW_DEV = 51,
        _SC_2_LOCALEDEF = 52,
        _SC_PII = 53,
        _SC_PII_XTI = 54,
        _SC_PII_SOCKET = 55,
        _SC_PII_INTERNET = 56,
        _SC_PII_OSI = 57,
        _SC_POLL = 58,
        _SC_SELECT = 59,
        _SC_UIO_MAXIOV = 60,
        _SC_IOV_MAX = 60,
        _SC_PII_INTERNET_STREAM = 61,
        _SC_PII_INTERNET_DGRAM = 62,
        _SC_PII_OSI_COTS = 63,
        _SC_PII_OSI_CLTS = 64,
        _SC_PII_OSI_M = 65,
        _SC_T_IOV_MAX = 66,
        _SC_THREADS = 67,
        _SC_THREAD_SAFE_FUNCTIONS = 68,
        _SC_GETGR_R_SIZE_MAX = 69,
        _SC_GETPW_R_SIZE_MAX = 70,
        _SC_LOGIN_NAME_MAX = 71,
        _SC_TTY_NAME_MAX = 72,
        _SC_THREAD_DESTRUCTOR_ITERATIONS = 73,
        _SC_THREAD_KEYS_MAX = 74,
        _SC_THREAD_STACK_MIN = 75,
        _SC_THREAD_THREADS_MAX = 76,
        _SC_THREAD_ATTR_STACKADDR = 77,
        _SC_THREAD_ATTR_STACKSIZE = 78,
        _SC_THREAD_PRIORITY_SCHEDULING = 79,
        _SC_THREAD_PRIO_INHERIT = 80,
        _SC_THREAD_PRIO_PROTECT = 81,
        _SC_THREAD_PROCESS_SHARED = 82,
        _SC_NPROCESSORS_CONF = 83,
        _SC_NPROCESSORS_ONLN = 84,
        _SC_PHYS_PAGES = 85,
        _SC_AVPHYS_PAGES = 86,
        _SC_ATEXIT_MAX = 87,
        _SC_PASS_MAX = 88,
        _SC_XOPEN_VERSION = 89,
        _SC_XOPEN_XCU_VERSION = 90,
        _SC_XOPEN_UNIX = 91,
        _SC_XOPEN_CRYPT = 92,
        _SC_XOPEN_ENH_I18N = 93,
        _SC_XOPEN_SHM = 94,
        _SC_2_CHAR_TERM = 95,
        _SC_2_C_VERSION = 96,
        _SC_2_UPE = 97,
        _SC_XOPEN_XPG2 = 98,
        _SC_XOPEN_XPG3 = 99,
        _SC_XOPEN_XPG4 = 100,
        _SC_CHAR_BIT = 101,
        _SC_CHAR_MAX = 102,
        _SC_CHAR_MIN = 103,
        _SC_INT_MAX = 104,
        _SC_INT_MIN = 105,
        _SC_LONG_BIT = 106,
        _SC_WORD_BIT = 107,
        _SC_MB_LEN_MAX = 108,
        _SC_NZERO = 109,
        _SC_SSIZE_MAX = 110,
        _SC_SCHAR_MAX = 111,
        _SC_SCHAR_MIN = 112,
        _SC_SHRT_MAX = 113,
        _SC_SHRT_MIN = 114,
        _SC_UCHAR_MAX = 115,
        _SC_UINT_MAX = 116,
        _SC_ULONG_MAX = 117,
        _SC_USHRT_MAX = 118,
        _SC_NL_ARGMAX = 119,
        _SC_NL_LANGMAX = 120,
        _SC_NL_MSGMAX = 121,
        _SC_NL_NMAX = 122,
        _SC_NL_SETMAX = 123,
        _SC_NL_TEXTMAX = 124,
        _SC_XBS5_ILP32_OFF32 = 125,
        _SC_XBS5_ILP32_OFFBIG = 126,
        _SC_XBS5_LP64_OFF64 = 127,
        _SC_XBS5_LPBIG_OFFBIG = 128,
        _SC_XOPEN_LEGACY = 129,
        _SC_XOPEN_REALTIME = 130,
        _SC_XOPEN_REALTIME_THREADS = 131,
        _SC_ADVISORY_INFO = 132,
        _SC_BARRIERS = 133,
        _SC_BASE = 134,
        _SC_C_LANG_SUPPORT = 135,
        _SC_C_LANG_SUPPORT_R = 136,
        _SC_CLOCK_SELECTION = 137,
        _SC_CPUTIME = 138,
        _SC_THREAD_CPUTIME = 139,
        _SC_DEVICE_IO = 140,
        _SC_DEVICE_SPECIFIC = 141,
        _SC_DEVICE_SPECIFIC_R = 142,
        _SC_FD_MGMT = 143,
        _SC_FIFO = 144,
        _SC_PIPE = 145,
        _SC_FILE_ATTRIBUTES = 146,
        _SC_FILE_LOCKING = 147,
        _SC_FILE_SYSTEM = 148,
        _SC_MONOTONIC_CLOCK = 149,
        _SC_MULTI_PROCESS = 150,
        _SC_SINGLE_PROCESS = 151,
        _SC_NETWORKING = 152,
        _SC_READER_WRITER_LOCKS = 153,
        _SC_SPIN_LOCKS = 154,
        _SC_REGEXP = 155,
        _SC_REGEX_VERSION = 156,
        _SC_SHELL = 157,
        _SC_SIGNALS = 158,
        _SC_SPAWN = 159,
        _SC_SPORADIC_SERVER = 160,
        _SC_THREAD_SPORADIC_SERVER = 161,
        _SC_SYSTEM_DATABASE = 162,
        _SC_SYSTEM_DATABASE_R = 163,
        _SC_TIMEOUTS = 164,
        _SC_TYPED_MEMORY_OBJECTS = 165,
        _SC_USER_GROUPS = 166,
        _SC_USER_GROUPS_R = 167,
        _SC_2_PBS = 168,
        _SC_2_PBS_ACCOUNTING = 169,
        _SC_2_PBS_LOCATE = 170,
        _SC_2_PBS_MESSAGE = 171,
        _SC_2_PBS_TRACK = 172,
        _SC_SYMLOOP_MAX = 173,
        _SC_STREAMS = 174,
        _SC_2_PBS_CHECKPOINT = 175,
        _SC_V6_ILP32_OFF32 = 176,
        _SC_V6_ILP32_OFFBIG = 177,
        _SC_V6_LP64_OFF64 = 178,
        _SC_V6_LPBIG_OFFBIG = 179,
        _SC_HOST_NAME_MAX = 180,
        _SC_TRACE = 181,
        _SC_TRACE_EVENT_FILTER = 182,
        _SC_TRACE_INHERIT = 183,
        _SC_TRACE_LOG = 184,
        _SC_LEVEL1_ICACHE_SIZE = 185,
        _SC_LEVEL1_ICACHE_ASSOC = 186,
        _SC_LEVEL1_ICACHE_LINESIZE = 187,
        _SC_LEVEL1_DCACHE_SIZE = 188,
        _SC_LEVEL1_DCACHE_ASSOC = 189,
        _SC_LEVEL1_DCACHE_LINESIZE = 190,
        _SC_LEVEL2_CACHE_SIZE = 191,
        _SC_LEVEL2_CACHE_ASSOC = 192,
        _SC_LEVEL2_CACHE_LINESIZE = 193,
        _SC_LEVEL3_CACHE_SIZE = 194,
        _SC_LEVEL3_CACHE_ASSOC = 195,
        _SC_LEVEL3_CACHE_LINESIZE = 196,
        _SC_LEVEL4_CACHE_SIZE = 197,
        _SC_LEVEL4_CACHE_ASSOC = 198,
        _SC_LEVEL4_CACHE_LINESIZE = 199,
        _SC_IPV6 = 235,
        _SC_RAW_SOCKETS = 236,
        _SC_V7_ILP32_OFF32 = 237,
        _SC_V7_ILP32_OFFBIG = 238,
        _SC_V7_LP64_OFF64 = 239,
        _SC_V7_LPBIG_OFFBIG = 240,
        _SC_SS_REPL_MAX = 241,
        _SC_TRACE_EVENT_NAME_MAX = 242,
        _SC_TRACE_NAME_MAX = 243,
        _SC_TRACE_SYS_MAX = 244,
        _SC_TRACE_USER_EVENT_MAX = 245,
        _SC_XOPEN_STREAMS = 246,
        _SC_THREAD_ROBUST_PRIO_INHERIT = 247,
        _SC_THREAD_ROBUST_PRIO_PROTECT = 248,
    }
    enum
    {
        _SC_ARG_MAX = 0,
        _SC_CHILD_MAX = 1,
        _SC_CLK_TCK = 2,
        _SC_NGROUPS_MAX = 3,
        _SC_OPEN_MAX = 4,
        _SC_STREAM_MAX = 5,
        _SC_TZNAME_MAX = 6,
        _SC_JOB_CONTROL = 7,
        _SC_SAVED_IDS = 8,
        _SC_REALTIME_SIGNALS = 9,
        _SC_PRIORITY_SCHEDULING = 10,
        _SC_TIMERS = 11,
        _SC_ASYNCHRONOUS_IO = 12,
        _SC_PRIORITIZED_IO = 13,
        _SC_SYNCHRONIZED_IO = 14,
        _SC_FSYNC = 15,
        _SC_MAPPED_FILES = 16,
        _SC_MEMLOCK = 17,
        _SC_MEMLOCK_RANGE = 18,
        _SC_MEMORY_PROTECTION = 19,
        _SC_MESSAGE_PASSING = 20,
        _SC_SEMAPHORES = 21,
        _SC_SHARED_MEMORY_OBJECTS = 22,
        _SC_AIO_LISTIO_MAX = 23,
        _SC_AIO_MAX = 24,
        _SC_AIO_PRIO_DELTA_MAX = 25,
        _SC_DELAYTIMER_MAX = 26,
        _SC_MQ_OPEN_MAX = 27,
        _SC_MQ_PRIO_MAX = 28,
        _SC_VERSION = 29,
        _SC_PAGESIZE = 30,
        _SC_RTSIG_MAX = 31,
        _SC_SEM_NSEMS_MAX = 32,
        _SC_SEM_VALUE_MAX = 33,
        _SC_SIGQUEUE_MAX = 34,
        _SC_TIMER_MAX = 35,
        _SC_BC_BASE_MAX = 36,
        _SC_BC_DIM_MAX = 37,
        _SC_BC_SCALE_MAX = 38,
        _SC_BC_STRING_MAX = 39,
        _SC_COLL_WEIGHTS_MAX = 40,
        _SC_EQUIV_CLASS_MAX = 41,
        _SC_EXPR_NEST_MAX = 42,
        _SC_LINE_MAX = 43,
        _SC_RE_DUP_MAX = 44,
        _SC_CHARCLASS_NAME_MAX = 45,
        _SC_2_VERSION = 46,
        _SC_2_C_BIND = 47,
        _SC_2_C_DEV = 48,
        _SC_2_FORT_DEV = 49,
        _SC_2_FORT_RUN = 50,
        _SC_2_SW_DEV = 51,
        _SC_2_LOCALEDEF = 52,
        _SC_PII = 53,
        _SC_PII_XTI = 54,
        _SC_PII_SOCKET = 55,
        _SC_PII_INTERNET = 56,
        _SC_PII_OSI = 57,
        _SC_POLL = 58,
        _SC_SELECT = 59,
        _SC_UIO_MAXIOV = 60,
        _SC_IOV_MAX = 60,
        _SC_PII_INTERNET_STREAM = 61,
        _SC_PII_INTERNET_DGRAM = 62,
        _SC_PII_OSI_COTS = 63,
        _SC_PII_OSI_CLTS = 64,
        _SC_PII_OSI_M = 65,
        _SC_T_IOV_MAX = 66,
        _SC_THREADS = 67,
        _SC_THREAD_SAFE_FUNCTIONS = 68,
        _SC_GETGR_R_SIZE_MAX = 69,
        _SC_GETPW_R_SIZE_MAX = 70,
        _SC_LOGIN_NAME_MAX = 71,
        _SC_TTY_NAME_MAX = 72,
        _SC_THREAD_DESTRUCTOR_ITERATIONS = 73,
        _SC_THREAD_KEYS_MAX = 74,
        _SC_THREAD_STACK_MIN = 75,
        _SC_THREAD_THREADS_MAX = 76,
        _SC_THREAD_ATTR_STACKADDR = 77,
        _SC_THREAD_ATTR_STACKSIZE = 78,
        _SC_THREAD_PRIORITY_SCHEDULING = 79,
        _SC_THREAD_PRIO_INHERIT = 80,
        _SC_THREAD_PRIO_PROTECT = 81,
        _SC_THREAD_PROCESS_SHARED = 82,
        _SC_NPROCESSORS_CONF = 83,
        _SC_NPROCESSORS_ONLN = 84,
        _SC_PHYS_PAGES = 85,
        _SC_AVPHYS_PAGES = 86,
        _SC_ATEXIT_MAX = 87,
        _SC_PASS_MAX = 88,
        _SC_XOPEN_VERSION = 89,
        _SC_XOPEN_XCU_VERSION = 90,
        _SC_XOPEN_UNIX = 91,
        _SC_XOPEN_CRYPT = 92,
        _SC_XOPEN_ENH_I18N = 93,
        _SC_XOPEN_SHM = 94,
        _SC_2_CHAR_TERM = 95,
        _SC_2_C_VERSION = 96,
        _SC_2_UPE = 97,
        _SC_XOPEN_XPG2 = 98,
        _SC_XOPEN_XPG3 = 99,
        _SC_XOPEN_XPG4 = 100,
        _SC_CHAR_BIT = 101,
        _SC_CHAR_MAX = 102,
        _SC_CHAR_MIN = 103,
        _SC_INT_MAX = 104,
        _SC_INT_MIN = 105,
        _SC_LONG_BIT = 106,
        _SC_WORD_BIT = 107,
        _SC_MB_LEN_MAX = 108,
        _SC_NZERO = 109,
        _SC_SSIZE_MAX = 110,
        _SC_SCHAR_MAX = 111,
        _SC_SCHAR_MIN = 112,
        _SC_SHRT_MAX = 113,
        _SC_SHRT_MIN = 114,
        _SC_UCHAR_MAX = 115,
        _SC_UINT_MAX = 116,
        _SC_ULONG_MAX = 117,
        _SC_USHRT_MAX = 118,
        _SC_NL_ARGMAX = 119,
        _SC_NL_LANGMAX = 120,
        _SC_NL_MSGMAX = 121,
        _SC_NL_NMAX = 122,
        _SC_NL_SETMAX = 123,
        _SC_NL_TEXTMAX = 124,
        _SC_XBS5_ILP32_OFF32 = 125,
        _SC_XBS5_ILP32_OFFBIG = 126,
        _SC_XBS5_LP64_OFF64 = 127,
        _SC_XBS5_LPBIG_OFFBIG = 128,
        _SC_XOPEN_LEGACY = 129,
        _SC_XOPEN_REALTIME = 130,
        _SC_XOPEN_REALTIME_THREADS = 131,
        _SC_ADVISORY_INFO = 132,
        _SC_BARRIERS = 133,
        _SC_BASE = 134,
        _SC_C_LANG_SUPPORT = 135,
        _SC_C_LANG_SUPPORT_R = 136,
        _SC_CLOCK_SELECTION = 137,
        _SC_CPUTIME = 138,
        _SC_THREAD_CPUTIME = 139,
        _SC_DEVICE_IO = 140,
        _SC_DEVICE_SPECIFIC = 141,
        _SC_DEVICE_SPECIFIC_R = 142,
        _SC_FD_MGMT = 143,
        _SC_FIFO = 144,
        _SC_PIPE = 145,
        _SC_FILE_ATTRIBUTES = 146,
        _SC_FILE_LOCKING = 147,
        _SC_FILE_SYSTEM = 148,
        _SC_MONOTONIC_CLOCK = 149,
        _SC_MULTI_PROCESS = 150,
        _SC_SINGLE_PROCESS = 151,
        _SC_NETWORKING = 152,
        _SC_READER_WRITER_LOCKS = 153,
        _SC_SPIN_LOCKS = 154,
        _SC_REGEXP = 155,
        _SC_REGEX_VERSION = 156,
        _SC_SHELL = 157,
        _SC_SIGNALS = 158,
        _SC_SPAWN = 159,
        _SC_SPORADIC_SERVER = 160,
        _SC_THREAD_SPORADIC_SERVER = 161,
        _SC_SYSTEM_DATABASE = 162,
        _SC_SYSTEM_DATABASE_R = 163,
        _SC_TIMEOUTS = 164,
        _SC_TYPED_MEMORY_OBJECTS = 165,
        _SC_USER_GROUPS = 166,
        _SC_USER_GROUPS_R = 167,
        _SC_2_PBS = 168,
        _SC_2_PBS_ACCOUNTING = 169,
        _SC_2_PBS_LOCATE = 170,
        _SC_2_PBS_MESSAGE = 171,
        _SC_2_PBS_TRACK = 172,
        _SC_SYMLOOP_MAX = 173,
        _SC_STREAMS = 174,
        _SC_2_PBS_CHECKPOINT = 175,
        _SC_V6_ILP32_OFF32 = 176,
        _SC_V6_ILP32_OFFBIG = 177,
        _SC_V6_LP64_OFF64 = 178,
        _SC_V6_LPBIG_OFFBIG = 179,
        _SC_HOST_NAME_MAX = 180,
        _SC_TRACE = 181,
        _SC_TRACE_EVENT_FILTER = 182,
        _SC_TRACE_INHERIT = 183,
        _SC_TRACE_LOG = 184,
        _SC_LEVEL1_ICACHE_SIZE = 185,
        _SC_LEVEL1_ICACHE_ASSOC = 186,
        _SC_LEVEL1_ICACHE_LINESIZE = 187,
        _SC_LEVEL1_DCACHE_SIZE = 188,
        _SC_LEVEL1_DCACHE_ASSOC = 189,
        _SC_LEVEL1_DCACHE_LINESIZE = 190,
        _SC_LEVEL2_CACHE_SIZE = 191,
        _SC_LEVEL2_CACHE_ASSOC = 192,
        _SC_LEVEL2_CACHE_LINESIZE = 193,
        _SC_LEVEL3_CACHE_SIZE = 194,
        _SC_LEVEL3_CACHE_ASSOC = 195,
        _SC_LEVEL3_CACHE_LINESIZE = 196,
        _SC_LEVEL4_CACHE_SIZE = 197,
        _SC_LEVEL4_CACHE_ASSOC = 198,
        _SC_LEVEL4_CACHE_LINESIZE = 199,
        _SC_IPV6 = 235,
        _SC_RAW_SOCKETS = 236,
        _SC_V7_ILP32_OFF32 = 237,
        _SC_V7_ILP32_OFFBIG = 238,
        _SC_V7_LP64_OFF64 = 239,
        _SC_V7_LPBIG_OFFBIG = 240,
        _SC_SS_REPL_MAX = 241,
        _SC_TRACE_EVENT_NAME_MAX = 242,
        _SC_TRACE_NAME_MAX = 243,
        _SC_TRACE_SYS_MAX = 244,
        _SC_TRACE_USER_EVENT_MAX = 245,
        _SC_XOPEN_STREAMS = 246,
        _SC_THREAD_ROBUST_PRIO_INHERIT = 247,
        _SC_THREAD_ROBUST_PRIO_PROTECT = 248,
    }






    alias timestruc_t = struct_timespec;
    alias int_fast32_t = c_long;
    alias timespec_t = struct_timespec;


    alias o_mode_t = ushort_t;






    alias int_fast64_t = c_long;
    __sighandler_t __sysv_signal(int, __sighandler_t, );




    alias index_t = short;
    uint gnu_dev_major(__dev_t, );
    int settimeofday(const struct_timeval*, const struct_timezone*, );
    uint gnu_dev_minor(__dev_t, );




    struct struct_timespec32
    {
        time32_t tv_sec;
        int32_t tv_nsec;
    }
    alias timespec32_t = struct_timespec32;


    union _Anonymous_34
    {
        struct___pthread_cond_s __data;
        char[48] __size;
        long __align;
    }




    __dev_t gnu_dev_makedev(uint, uint, );


    alias pthread_cond_t = _Anonymous_34;


    alias nlink_t = __nlink_t;






    hrtime_t gethrtime();
    void gethrestime(timestruc_t*, );
    struct _Anonymous_35
    {
        long quot;
        long rem;
    }
    alias lldiv_t = _Anonymous_35;
    alias fd_mask = __fd_mask;


    struct struct_nvpair
    {
        int32_t nvp_size;
        int16_t nvp_name_sz;
        int16_t nvp_reserve;
        int32_t nvp_value_elem;
        data_type_t nvp_type;
    }
    alias nvpair_t = struct_nvpair;
    alias fpos_t = _G_fpos_t;
    alias timestruc32_t = struct_timespec32;
    alias uid_t = __uid_t;
    alias uint_fast8_t = ubyte;
    int adjtime(const struct_timeval*, struct_timeval*, );




    alias itimerspec32_t = struct_itimerspec32;
    struct struct_itimerspec32
    {
        struct_timespec32 it_interval;
        struct_timespec32 it_value;
    }




    struct struct_nvlist_prtctl;
    alias nvlist_prtctl_t = struct_nvlist_prtctl*;




    struct struct___pthread_internal_list
    {
        struct___pthread_internal_list* __prev;
        struct___pthread_internal_list* __next;
    }
    alias __pthread_list_t = struct___pthread_internal_list;






    alias uint_fast16_t = c_ulong;
    enum enum_nvlist_indent_mode
    {
        NVLIST_INDENT_ABS = 0,
        NVLIST_INDENT_TABBED = 1,
    }
    enum
    {
        NVLIST_INDENT_ABS = 0,
        NVLIST_INDENT_TABBED = 1,
    }
    alias uint_fast32_t = c_ulong;
    __sighandler_t signal(int, __sighandler_t, );
    alias uint_fast64_t = c_ulong;


    alias off_t = __off_t;
    alias pthread_rwlock_t = _Anonymous_36;


    union _Anonymous_36
    {
        struct___pthread_rwlock_arch_t __data;
        char[56] __size;
        c_long __align;
    }
    enum enum___itimer_which
    {
        ITIMER_REAL = 0,
        ITIMER_VIRTUAL = 1,
        ITIMER_PROF = 2,
    }
    enum
    {
        ITIMER_REAL = 0,
        ITIMER_VIRTUAL = 1,
        ITIMER_PROF = 2,
    }
    nvlist_prtctl_t* nvlist_prtctl_alloc(); // CHECKME!
    alias nvlist_t = struct_nvlist;
    struct struct_nvlist
    {
        int32_t nvl_version;
        uint32_t nvl_nvflag;
        uint64_t nvl_priv;
        uint32_t nvl_flag;
        int32_t nvl_pad;
    }


    enum _Anonymous_37
    {
        FPE_INTDIV = 1,
        FPE_INTOVF = 2,
        FPE_FLTDIV = 3,
        FPE_FLTOVF = 4,
        FPE_FLTUND = 5,
        FPE_FLTRES = 6,
        FPE_FLTINV = 7,
        FPE_FLTSUB = 8,
    }
    enum
    {
        FPE_INTDIV = 1,
        FPE_INTOVF = 2,
        FPE_FLTDIV = 3,
        FPE_FLTOVF = 4,
        FPE_FLTUND = 5,
        FPE_FLTRES = 6,
        FPE_FLTINV = 7,
        FPE_FLTSUB = 8,
    }
    void nvlist_prtctl_free(nvlist_prtctl_t, );
    int getopt(int, char**, const(char)*, );






    void nvlist_prt(nvlist_t*, nvlist_prtctl_t, );
    union _Anonymous_38
    {
        char[8] __size;
        c_long __align;
    }
    alias pthread_rwlockattr_t = _Anonymous_38;
    void nvlist_prtctl_setdest(nvlist_prtctl_t, FILE*, );
    FILE* nvlist_prtctl_getdest(nvlist_prtctl_t, );
    int __ctype_get_mb_cur_max();






    alias intptr_t = c_long;
    alias pid_t = __pid_t;
    void nvlist_prtctl_setindent(nvlist_prtctl_t, enum_nvlist_indent_mode, int, int, );
    alias uintptr_t = c_ulong;
    void nvlist_prtctl_doindent(nvlist_prtctl_t, int, );






    struct struct__libc_fpxreg
    {
        ushort[4] significand;
        ushort exponent;
        ushort[3] __glibc_reserved1;
    }


    int select(int, fd_set*, fd_set*, fd_set*, struct_timeval*, );






    double atof(const(char)*, );
    enum enum_nvlist_prtctl_fmt
    {
        NVLIST_FMT_MEMBER_NAME = 0,
        NVLIST_FMT_MEMBER_POSTAMBLE = 1,
        NVLIST_FMT_BTWN_ARRAY = 2,
    }
    enum
    {
        NVLIST_FMT_MEMBER_NAME = 0,
        NVLIST_FMT_MEMBER_POSTAMBLE = 1,
        NVLIST_FMT_BTWN_ARRAY = 2,
    }
    alias pthread_spinlock_t = int;
    alias id_t = __id_t;
    int atoi(const(char)*, );


    struct struct_itimerval
    {
        struct_timeval it_interval;
        struct_timeval it_value;
    }
    c_long atol(const(char)*, );
    void nvlist_prtctl_setfmt(nvlist_prtctl_t, enum_nvlist_prtctl_fmt, const(char)*, );


    alias pthread_barrier_t = _Anonymous_39;
    union _Anonymous_39
    {
        char[32] __size;
        c_long __align;
    }


    struct struct__libc_xmmreg
    {
        __uint32_t[4] element;
    }
    int kill(__pid_t, int, );






    alias ssize_t = __ssize_t;
    void nvlist_prtctl_dofmt(nvlist_prtctl_t, enum_nvlist_prtctl_fmt, ...);






    enum _Anonymous_40
    {
        SEGV_MAPERR = 1,
        SEGV_ACCERR = 2,
    }
    enum
    {
        SEGV_MAPERR = 1,
        SEGV_ACCERR = 2,
    }
    alias intmax_t = __intmax_t;


    long atoll(const(char)*, );
    alias uintmax_t = __uintmax_t;




    int pselect(int, fd_set*, fd_set*, fd_set*, const struct_timespec*, const(const __sigset_t)*, );


    struct struct__libc_fpstate
    {
        __uint16_t cwd;
        __uint16_t swd;
        __uint16_t ftw;
        __uint16_t fop;
        __uint64_t rip;
        __uint64_t rdp;
        __uint32_t mxcsr;
        __uint32_t mxcr_mask;
        struct__libc_fpxreg[8] _st;
        struct__libc_xmmreg[16] _xmm;
        __uint32_t[24] __glibc_reserved1;
    }
    union _Anonymous_41
    {
        char[4] __size;
        int __align;
    }
    alias pthread_barrierattr_t = _Anonymous_41;
    int killpg(__pid_t, int, );
    alias daddr_t = __daddr_t;






    alias caddr_t = __caddr_t;




    alias __itimer_which_t = int;




    double strtod(const(char)*, char**, );
    struct struct___pthread_mutex_s
    {
        int __lock;
        uint __count;
        int __owner;
        uint __nusers;
        int __kind;
        short __spins;
        short __elision;
        __pthread_list_t __list;
    }






    int raise(int, );
    enum _Anonymous_42
    {
        BUS_ADRALN = 1,
        BUS_ADRERR = 2,
        BUS_OBJERR = 3,
        BUS_MCEERR_AR = 4,
        BUS_MCEERR_AO = 5,
    }
    enum
    {
        BUS_ADRALN = 1,
        BUS_ADRERR = 2,
        BUS_OBJERR = 3,
        BUS_MCEERR_AR = 4,
        BUS_MCEERR_AO = 5,
    }
    int getitimer(__itimer_which_t, struct_itimerval*, );




    alias key_t = __key_t;


    float strtof(const(char)*, char**, );
    __sighandler_t ssignal(int, __sighandler_t, );
    struct struct__fpstate
    {
        __uint16_t cwd;
        __uint16_t swd;
        __uint16_t ftw;
        __uint16_t fop;
        __uint64_t rip;
        __uint64_t rdp;
        __uint32_t mxcsr;
        __uint32_t mxcr_mask;
        struct__fpxreg[8] _st;
        struct__xmmreg[16] _xmm;
        __uint32_t[24] __glibc_reserved1;
    }
    int gsignal(int, );
    real strtold(const(char)*, char**, );
    alias nv_alloc_ops_t = struct_nv_alloc_ops;






    int setitimer(__itimer_which_t, const struct_itimerval*, struct_itimerval*, );
    struct struct_nv_alloc
    {
        const(const nv_alloc_ops_t)* nva_ops;
        void* nva_arg;
    }
    alias nv_alloc_t = struct_nv_alloc;




    void psignal(int, const(char)*, );






    alias fpregset_t = struct__libc_fpstate;
    alias __dev_t = c_ulong;
    struct _Anonymous_43
    {
        gregset_t gregs;
        fpregset_t fpregs;
        ulong[8] __reserved1;
    }


    void psiginfo(const(const siginfo_t)*, const(char)*, );
    alias mcontext_t = _Anonymous_43;
    struct struct_nv_alloc_ops
    {
        int function(struct_nv_alloc*, int) nv_ao_init;
        void function(struct_nv_alloc*) nv_ao_fini;
        void* function(struct_nv_alloc*, int) nv_ao_alloc;
        void function(struct_nv_alloc*, void*, int) nv_ao_free;
        void function(struct_nv_alloc*) nv_ao_reset;
    }
    alias __uid_t = uint;
    alias __gid_t = uint;




    int utimes(const(char)*, const struct_timeval*, );




    extern __gshared struct__IO_FILE* stdin;


    extern __gshared struct__IO_FILE* stdout;
    alias __ino_t = c_ulong;
    alias __ino64_t = c_ulong;


    extern __gshared struct__IO_FILE* stderr;




    alias __mode_t = uint;
    c_long strtol(const(char)*, char**, int, );
    alias __nlink_t = c_ulong;
    struct struct_sigcontext
    {
        __uint64_t r8;
        __uint64_t r9;
        __uint64_t r10;
        __uint64_t r11;
        __uint64_t r12;
        __uint64_t r13;
        __uint64_t r14;
        __uint64_t r15;
        __uint64_t rdi;
        __uint64_t rsi;
        __uint64_t rbp;
        __uint64_t rbx;
        __uint64_t rdx;
        __uint64_t rax;
        __uint64_t rcx;
        __uint64_t rsp;
        __uint64_t rip;
        __uint64_t eflags;
        ushort cs;
        ushort gs;
        ushort fs;
        ushort __pad0;
        __uint64_t err;
        __uint64_t trapno;
        __uint64_t oldmask;
        __uint64_t cr2;
        union _Anonymous_44
        {
            struct__fpstate* fpstate;
            __uint64_t __fpstate_word;
        }
        __uint64_t[8] __reserved1;
    }
    alias __off_t = c_long;




    int lutimes(const(char)*, const struct_timeval*, );




    alias __off64_t = c_long;
    struct struct_ucontext_t
    {
        c_ulong uc_flags;
        struct_ucontext_t* uc_link;
        stack_t uc_stack;
        mcontext_t uc_mcontext;
        sigset_t uc_sigmask;
        struct__libc_fpstate __fpregs_mem;
    }
    alias ucontext_t = struct_ucontext_t;
    alias __pid_t = int;
    extern __gshared const(const nv_alloc_ops_t)* nv_fixed_ops;




    c_ulong strtoul(const(char)*, char**, int, );
    struct _Anonymous_45
    {
        int[2] __val;
    }
    alias __fsid_t = _Anonymous_45;




    extern __gshared nv_alloc_t* nv_alloc_nosleep;


    int futimes(int, const struct_timeval*, );
    int remove(const(char)*, );




    alias __clock_t = c_long;
    void nvlist_prtctlop_boolean(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, int), void*, );


    alias __rlim_t = c_ulong;
    void nvlist_prtctlop_boolean_value(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, enum_boolean), void*, );




    struct struct__IO_jump_t;




    int rename(const(char)*, const(char)*, );


    alias __rlim64_t = c_ulong;
    void nvlist_prtctlop_byte(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, ubyte), void*, );






    alias __id_t = uint;
    void nvlist_prtctlop_int8(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, byte), void*, );




    enum _Anonymous_46
    {
        CLD_EXITED = 1,
        CLD_KILLED = 2,
        CLD_DUMPED = 3,
        CLD_TRAPPED = 4,
        CLD_STOPPED = 5,
        CLD_CONTINUED = 6,
    }
    enum
    {
        CLD_EXITED = 1,
        CLD_KILLED = 2,
        CLD_DUMPED = 3,
        CLD_TRAPPED = 4,
        CLD_STOPPED = 5,
        CLD_CONTINUED = 6,
    }


    alias __time_t = c_long;
    void nvlist_prtctlop_uint8(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, ubyte), void*, );




    alias __useconds_t = uint;
    void nvlist_prtctlop_int16(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, short), void*, );
    void nvlist_prtctlop_uint16(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, ushort), void*, );
    alias _IO_lock_t = void;
    long strtoq(const(char)*, char**, int, );
    int renameat(int, const(char)*, int, const(char)*, );
    int nv_alloc_init(nv_alloc_t*, const(const nv_alloc_ops_t)*, ...);




    alias __suseconds_t = c_long;


    void nv_alloc_reset(nv_alloc_t*, );




    void nvlist_prtctlop_int32(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, int), void*, );
    struct struct___pthread_cond_s
    {
        union _Anonymous_47
        {
            ulong __wseq;
            struct _Anonymous_48
            {
                uint __low;
                uint __high;
            }
            _Anonymous_48 __wseq32;
        }
        union _Anonymous_49
        {
            ulong __g1_start;
            struct _Anonymous_50
            {
                uint __low;
                uint __high;
            }
            _Anonymous_50 __g1_start32;
        }
        uint[2] __g_refs;
        uint[2] __g_size;
        uint __g1_orig_size;
        uint __wrefs;
        uint[2] __g_signals;
    }
    void nvlist_prtctlop_uint32(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, uint), void*, );
    alias __daddr_t = int;
    void nv_alloc_fini(nv_alloc_t*, );
    void nvlist_prtctlop_int64(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, c_long), void*, );
    alias __key_t = int;
    void nvlist_prtctlop_uint64(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, c_ulong), void*, );
    void nvlist_prtctlop_double(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, double), void*, );
    int nvlist_alloc(nvlist_t**, uint_t, int, );


    ulong strtouq(const(char)*, char**, int, );






    void nvlist_free(nvlist_t*, );


    struct struct__IO_marker
    {
        struct__IO_marker* _next;
        struct__IO_FILE* _sbuf;
        int _pos;
    }
    alias __clockid_t = int;
    void nvlist_prtctlop_string(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, char*), void*, );






    void nvlist_prtctlop_hrtime(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, long), void*, );


    int nvlist_size(nvlist_t*, int*, int, );
    int nvlist_pack(nvlist_t*, char**, int*, int, int, );
    void nvlist_prtctlop_nvlist(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, struct_nvlist*), void*, );
    int nvlist_unpack(char*, int, nvlist_t**, int, );
    alias __timer_t = void*;


    FILE* tmpfile();
    int nvlist_dup(nvlist_t*, nvlist_t**, int, );
    int nvlist_merge(nvlist_t*, nvlist_t*, int, );
    alias __blksize_t = c_long;


    long strtoll(const(char)*, char**, int, );


    uint_t nvlist_nvflag(nvlist_t*, );
    enum _Anonymous_51
    {
        POLL_IN = 1,
        POLL_OUT = 2,
        POLL_MSG = 3,
        POLL_ERR = 4,
        POLL_PRI = 5,
        POLL_HUP = 6,
    }
    enum
    {
        POLL_IN = 1,
        POLL_OUT = 2,
        POLL_MSG = 3,
        POLL_ERR = 4,
        POLL_PRI = 5,
        POLL_HUP = 6,
    }




    int nvlist_xalloc(nvlist_t**, uint_t, nv_alloc_t*, );
    int sigblock(int, );
    int nvlist_xpack(nvlist_t*, char**, int*, int, nv_alloc_t*, );






    alias __blkcnt_t = c_long;
    int nvlist_xunpack(char*, int, nvlist_t**, nv_alloc_t*, );
    ulong strtoull(const(char)*, char**, int, );
    alias __blkcnt64_t = c_long;


    int nvlist_xdup(nvlist_t*, nvlist_t**, nv_alloc_t*, );


    nv_alloc_t* nvlist_lookup_nv_alloc(nvlist_t*, );
    int sigsetmask(int, );
    alias __fsblkcnt_t = c_ulong;
    int nvlist_add_nvpair(nvlist_t*, nvpair_t*, );




    int nvlist_add_boolean(nvlist_t*, const(char)*, );


    alias __fsblkcnt64_t = c_ulong;
    int siggetmask();
    int nvlist_add_boolean_value(nvlist_t*, const(char)*, boolean_t, );
    char* tmpnam(char*, );




    int nvlist_add_byte(nvlist_t*, const(char)*, uchar_t, );
    void nvlist_prtctlop_boolean_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, enum_boolean*, uint), void*, );





    int nvlist_add_int8(nvlist_t*, const(char)*, int8_t, );
    alias __fsfilcnt_t = c_ulong;
    void nvlist_prtctlop_byte_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, ubyte*, uint), void*, );
    enum enum___codecvt_result
    {
        __codecvt_ok = 0,
        __codecvt_partial = 1,
        __codecvt_error = 2,
        __codecvt_noconv = 3,
    }
    enum
    {
        __codecvt_ok = 0,
        __codecvt_partial = 1,
        __codecvt_error = 2,
        __codecvt_noconv = 3,
    }


    alias __fsfilcnt64_t = c_ulong;


    int nvlist_add_uint8(nvlist_t*, const(char)*, uint8_t, );




    struct struct__xsave_hdr
    {
        __uint64_t xstate_bv;
        __uint64_t[2] __glibc_reserved1;
        __uint64_t[5] __glibc_reserved2;
    }


    int nvlist_add_int16(nvlist_t*, const(char)*, int16_t, );


    void nvlist_prtctlop_int8_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, byte*, uint), void*, );
    alias u_int8_t = ubyte;
    char* tmpnam_r(char*, );
    void nvlist_prtctlop_uint8_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, ubyte*, uint), void*, );
    int nvlist_add_uint16(nvlist_t*, const(char)*, uint16_t, );




    int nvlist_add_int32(nvlist_t*, const(char)*, int32_t, );


    alias u_int16_t = ushort;


    void nvlist_prtctlop_int16_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, short*, uint), void*, );
    alias __fsword_t = c_long;
    void nvlist_prtctlop_uint16_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, ushort*, uint), void*, );


    int nvlist_add_uint32(nvlist_t*, const(char)*, uint32_t, );
    alias u_int32_t = uint;


    void nvlist_prtctlop_int32_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, int*, uint), void*, );
    alias __ssize_t = c_long;
    extern __gshared reg_syntax_t re_syntax_options;
    alias u_int64_t = c_ulong;
    int nvlist_add_int64(nvlist_t*, const(char)*, int64_t, );




    void nvlist_prtctlop_uint32_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, uint*, uint), void*, );
    int nvlist_add_uint64(nvlist_t*, const(char)*, uint64_t, );


    alias register_t = c_long;






    void nvlist_prtctlop_int64_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, c_long*, uint), void*, );
    int nvlist_add_string(nvlist_t*, const(char)*, const(char)*, );


    struct struct__ymmh_state
    {
        __uint32_t[64] ymmh_space;
    }


    alias __syscall_slong_t = c_long;
    void nvlist_prtctlop_uint64_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, c_ulong*, uint), void*, );
    int nvlist_add_nvlist(nvlist_t*, const(char)*, nvlist_t*, );




    int nvlist_add_boolean_array(nvlist_t*, const(char)*, boolean_t*, uint_t, );
    void nvlist_prtctlop_string_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, char**, uint), void*, );




    alias __syscall_ulong_t = c_ulong;
    int nvlist_add_byte_array(nvlist_t*, const(char)*, uchar_t*, uint_t, );
    alias sig_t = void function();




    void nvlist_prtctlop_nvlist_array(nvlist_prtctl_t, int function(struct_nvlist_prtctl*, void*, struct_nvlist*, const(char)*, struct_nvlist**, uint), void*, );


    int nvlist_add_int8_array(nvlist_t*, const(char)*, int8_t*, uint_t, );




    int nvlist_add_uint8_array(nvlist_t*, const(char)*, uint8_t*, uint_t, );


    struct struct__xstate
    {
        struct__fpstate fpstate;
        struct__xsave_hdr xstate_hdr;
        struct__ymmh_state ymmh;
    }


    int nvlist_add_int16_array(nvlist_t*, const(char)*, int16_t*, uint_t, );




    alias __loff_t = __off64_t;
    char* tempnam(const(char)*, const(char)*, );
    int nvlist_add_uint16_array(nvlist_t*, const(char)*, uint16_t*, uint_t, );


    alias __qaddr_t = __quad_t;


    int nvlist_add_int32_array(nvlist_t*, const(char)*, int32_t*, uint_t, );
    alias __caddr_t = char*;




    int nvlist_add_uint32_array(nvlist_t*, const(char)*, uint32_t*, uint_t, );
    int sigemptyset(sigset_t*, );
    int nvlist_add_int64_array(nvlist_t*, const(char)*, int64_t*, uint_t, );




    int nvlist_add_uint64_array(nvlist_t*, const(char)*, uint64_t*, uint_t, );


    int sigfillset(sigset_t*, );


    int nvlist_add_string_array(nvlist_t*, const(char)*, char**, uint_t, );
    alias __intptr_t = c_long;


    int nvlist_add_nvlist_array(nvlist_t*, const(char)*, nvlist_t**, uint_t, );






    int nvlist_add_hrtime(nvlist_t*, const(char)*, hrtime_t, );
    int sigaddset(sigset_t*, int, );


    alias __socklen_t = uint;




    int nvlist_add_double(nvlist_t*, const(char)*, double, );
    int fclose(FILE*, );






    int sigdelset(sigset_t*, int, );
    int nvlist_remove(nvlist_t*, const(char)*, data_type_t, );


    int nvlist_remove_all(nvlist_t*, const(char)*, );
    alias __sig_atomic_t = int;


    int nvlist_remove_nvpair(nvlist_t*, nvpair_t*, );




    int fflush(FILE*, );
    int sigismember(const(const sigset_t)*, int, );




    int nvlist_lookup_boolean(nvlist_t*, const(char)*, );




    int nvlist_lookup_boolean_value(nvlist_t*, const(char)*, boolean_t*, );


    int nvlist_lookup_byte(nvlist_t*, const(char)*, uchar_t*, );






    int nvlist_lookup_int8(nvlist_t*, const(char)*, int8_t*, );




    int nvlist_lookup_uint8(nvlist_t*, const(char)*, uint8_t*, );


    int nvlist_lookup_int16(nvlist_t*, const(char)*, int16_t*, );




    int nvlist_lookup_uint16(nvlist_t*, const(char)*, uint16_t*, );
    alias blksize_t = __blksize_t;


    int nvlist_lookup_int32(nvlist_t*, const(char)*, int32_t*, );






    int fflush_unlocked(FILE*, );






    int nvlist_lookup_uint32(nvlist_t*, const(char)*, uint32_t*, );


    int nvlist_lookup_int64(nvlist_t*, const(char)*, int64_t*, );




    int nvlist_lookup_uint64(nvlist_t*, const(char)*, uint64_t*, );
    int nvlist_lookup_string(nvlist_t*, const(char)*, char**, );


    int nvlist_lookup_nvlist(nvlist_t*, const(char)*, nvlist_t**, );


    alias blkcnt_t = __blkcnt_t;


    int nvlist_lookup_boolean_array(nvlist_t*, const(char)*, boolean_t**, uint_t*, );
    int nvlist_lookup_byte_array(nvlist_t*, const(char)*, uchar_t**, uint_t*, );






    int nvlist_lookup_int8_array(nvlist_t*, const(char)*, int8_t**, uint_t*, );
    alias fsblkcnt_t = __fsblkcnt_t;
    int nvlist_lookup_uint8_array(nvlist_t*, const(char)*, uint8_t**, uint_t*, );




    int nvlist_lookup_int16_array(nvlist_t*, const(char)*, int16_t**, uint_t*, );




    int nvlist_lookup_uint16_array(nvlist_t*, const(char)*, uint16_t**, uint_t*, );
    int sigprocmask(int, const(const sigset_t)*, sigset_t*, );




    int nvlist_lookup_int32_array(nvlist_t*, const(char)*, int32_t**, uint_t*, );


    int nvlist_lookup_uint32_array(nvlist_t*, const(char)*, uint32_t**, uint_t*, );
    alias fsfilcnt_t = __fsfilcnt_t;
    int nvlist_lookup_int64_array(nvlist_t*, const(char)*, int64_t**, uint_t*, );






    int nvlist_lookup_uint64_array(nvlist_t*, const(char)*, uint64_t**, uint_t*, );




    int nvlist_lookup_string_array(nvlist_t*, const(char)*, char***, uint_t*, );
    int nvlist_lookup_nvlist_array(nvlist_t*, const(char)*, nvlist_t***, uint_t*, );






    FILE* fopen(const(char)*, const(char)*, );


    int nvlist_lookup_hrtime(nvlist_t*, const(char)*, hrtime_t*, );


    int sigsuspend(const(const sigset_t)*, );
    int nvlist_lookup_pairs(nvlist_t*, int, ...);
    int nvlist_lookup_double(nvlist_t*, const(char)*, double*, );
    int sigaction(int, const struct_sigaction*, struct_sigaction*, );




    FILE* freopen(const(char)*, const(char)*, FILE*, );




    int nvlist_lookup_nvpair(nvlist_t*, const(char)*, nvpair_t**, );


    int sigpending(sigset_t*, );
    int nvlist_lookup_nvpair_embedded_index(nvlist_t*, const(char)*, nvpair_t**, int*, char**, );




    struct struct__IO_FILE
    {
        int _flags;
        char* _IO_read_ptr;
        char* _IO_read_end;
        char* _IO_read_base;
        char* _IO_write_base;
        char* _IO_write_ptr;
        char* _IO_write_end;
        char* _IO_buf_base;
        char* _IO_buf_end;
        char* _IO_save_base;
        char* _IO_backup_base;
        char* _IO_save_end;
        struct__IO_marker* _markers;
        struct__IO_FILE* _chain;
        int _fileno;
        int _flags2;
        __off_t _old_offset;
        ushort _cur_column;
        byte _vtable_offset;
        char[1] _shortbuf;
        _IO_lock_t* _lock;
        __off64_t _offset;
        void* __pad1;
        void* __pad2;
        void* __pad3;
        void* __pad4;
        int __pad5;
        int _mode;
        char _unused2;
    }


    boolean_t nvlist_exists(nvlist_t*, const(char)*, );




    boolean_t nvlist_empty(nvlist_t*, );
    nvpair_t* nvlist_next_nvpair(nvlist_t*, nvpair_t*, );


    nvpair_t* nvlist_prev_nvpair(nvlist_t*, nvpair_t*, );




    char* nvpair_name(nvpair_t*, );
    int sigwait(const(const sigset_t)*, int*, );


    data_type_t nvpair_type(nvpair_t*, );


    int nvpair_type_is_array(nvpair_t*, );
    int nvpair_value_boolean_value(nvpair_t*, boolean_t*, );


    int nvpair_value_byte(nvpair_t*, uchar_t*, );


    int nvpair_value_int8(nvpair_t*, int8_t*, );




    int nvpair_value_uint8(nvpair_t*, uint8_t*, );
    int nvpair_value_int16(nvpair_t*, int16_t*, );


    int nvpair_value_uint16(nvpair_t*, uint16_t*, );
    int nvpair_value_int32(nvpair_t*, int32_t*, );
    int sigwaitinfo(const(const sigset_t)*, siginfo_t*, );


    alias useconds_t = __useconds_t;
    int nvpair_value_uint32(nvpair_t*, uint32_t*, );


    int nvpair_value_int64(nvpair_t*, int64_t*, );
    int nvpair_value_uint64(nvpair_t*, uint64_t*, );


    int nvpair_value_string(nvpair_t*, char**, );
    int nvpair_value_nvlist(nvpair_t*, nvlist_t**, );


    int nvpair_value_boolean_array(nvpair_t*, boolean_t**, uint_t*, );
    int nvpair_value_byte_array(nvpair_t*, uchar_t**, uint_t*, );


    int nvpair_value_int8_array(nvpair_t*, int8_t**, uint_t*, );
    int sigtimedwait(const(const sigset_t)*, siginfo_t*, const struct_timespec*, );
    FILE* fdopen(int, const(char)*, );
    int nvpair_value_uint8_array(nvpair_t*, uint8_t**, uint_t*, );


    int nvpair_value_int16_array(nvpair_t*, int16_t**, uint_t*, );




    int nvpair_value_uint16_array(nvpair_t*, uint16_t**, uint_t*, );


    int nvpair_value_int32_array(nvpair_t*, int32_t**, uint_t*, );




    char* l64a(c_long, );
    int nvpair_value_uint32_array(nvpair_t*, uint32_t**, uint_t*, );
    int nvpair_value_int64_array(nvpair_t*, int64_t**, uint_t*, );
    alias imaxdiv_t = _Anonymous_52;
    struct _Anonymous_52
    {
        c_long quot;
        c_long rem;
    }


    int nvpair_value_uint64_array(nvpair_t*, uint64_t**, uint_t*, );
    int sigqueue(__pid_t, int, const union_sigval, );




    c_long a64l(const(char)*, );


    int nvpair_value_string_array(nvpair_t*, char***, uint_t*, );


    int nvpair_value_nvlist_array(nvpair_t*, nvlist_t***, uint_t*, );
    int nvpair_value_hrtime(nvpair_t*, hrtime_t*, );


    int nvpair_value_double(nvpair_t*, double*, );
    alias socklen_t = __socklen_t;


    FILE* fmemopen(void*, int, const(char)*, );
    nvlist_t* fnvlist_alloc();


    void fnvlist_free(nvlist_t*, );


    int fnvlist_size();
    extern __gshared const(const(char)*)[65] _sys_siglist;
    char* fnvlist_pack(nvlist_t*, int*, );
    extern __gshared const(const(char)*)[65] sys_siglist;


    void fnvlist_pack_free(char*, int, );


    FILE* open_memstream(char**, int*, );
    nvlist_t* fnvlist_unpack(char*, int, );




    nvlist_t* fnvlist_dup(nvlist_t*, );


    c_long random();




    void fnvlist_merge(nvlist_t*, nvlist_t*, );


    int fnvlist_num_pairs();
    void srandom(uint, );
    void fnvlist_add_boolean(nvlist_t*, const(char)*, );
    int sigreturn(struct_sigcontext*, );
    void setbuf(FILE*, char*, );
    intmax_t imaxabs(intmax_t, );
    int access(const(char)*, int, );
    void fnvlist_add_boolean_value(nvlist_t*, const(char)*, boolean_t, );


    void fnvlist_add_byte(nvlist_t*, const(char)*, uchar_t, );
    void fnvlist_add_int8(nvlist_t*, const(char)*, int8_t, );


    imaxdiv_t imaxdiv(intmax_t, intmax_t, );
    int setvbuf(FILE*, char*, int, int, );
    void fnvlist_add_uint8(nvlist_t*, const(char)*, uint8_t, );
    char* initstate(uint, char*, int, );
    void fnvlist_add_int16(nvlist_t*, const(char)*, int16_t, );


    void fnvlist_add_uint16(nvlist_t*, const(char)*, uint16_t, );




    intmax_t strtoimax(const(char)*, char**, int, );
    void fnvlist_add_int32(nvlist_t*, const(char)*, int32_t, );
    void fnvlist_add_uint32(nvlist_t*, const(char)*, uint32_t, );


    void fnvlist_add_int64(nvlist_t*, const(char)*, int64_t, );


    void setbuffer(FILE*, char*, int, );
    char* setstate(char*, );
    void fnvlist_add_uint64(nvlist_t*, const(char)*, uint64_t, );
    void fnvlist_add_string(nvlist_t*, const(char)*, const(char)*, );
    uintmax_t strtoumax(const(char)*, char**, int, );


    void fnvlist_add_nvlist(nvlist_t*, const(char)*, nvlist_t*, );
    void fnvlist_add_nvpair(nvlist_t*, nvpair_t*, );




    void fnvlist_add_boolean_array(nvlist_t*, const(char)*, boolean_t*, uint_t, );
    void setlinebuf(FILE*, );
    void fnvlist_add_byte_array(nvlist_t*, const(char)*, uchar_t*, uint_t, );


    intmax_t wcstoimax(const(const __gwchar_t)*, __gwchar_t**, int, );
    void fnvlist_add_int8_array(nvlist_t*, const(char)*, int8_t*, uint_t, );
    void fnvlist_add_uint8_array(nvlist_t*, const(char)*, uint8_t*, uint_t, );
    int faccessat(int, const(char)*, int, int, );


    void fnvlist_add_int16_array(nvlist_t*, const(char)*, int16_t*, uint_t, );
    enum _Anonymous_53
    {
        REG_ENOSYS = -1,
        REG_NOERROR = 0,
        REG_NOMATCH = 1,
        REG_BADPAT = 2,
        REG_ECOLLATE = 3,
        REG_ECTYPE = 4,
        REG_EESCAPE = 5,
        REG_ESUBREG = 6,
        REG_EBRACK = 7,
        REG_EPAREN = 8,
        REG_EBRACE = 9,
        REG_BADBR = 10,
        REG_ERANGE = 11,
        REG_ESPACE = 12,
        REG_BADRPT = 13,
        REG_EEND = 14,
        REG_ESIZE = 15,
        REG_ERPAREN = 16,
    }
    enum
    {
        REG_ENOSYS = -1,
        REG_NOERROR = 0,
        REG_NOMATCH = 1,
        REG_BADPAT = 2,
        REG_ECOLLATE = 3,
        REG_ECTYPE = 4,
        REG_EESCAPE = 5,
        REG_ESUBREG = 6,
        REG_EBRACK = 7,
        REG_EPAREN = 8,
        REG_EBRACE = 9,
        REG_BADBR = 10,
        REG_ERANGE = 11,
        REG_ESPACE = 12,
        REG_BADRPT = 13,
        REG_EEND = 14,
        REG_ESIZE = 15,
        REG_ERPAREN = 16,
    }
    alias reg_errcode_t = _Anonymous_53;
    struct struct_random_data
    {
        int32_t* fptr;
        int32_t* rptr;
        int32_t* state;
        int rand_type;
        int rand_deg;
        int rand_sep;
        int32_t* end_ptr;
    }
    void fnvlist_add_uint16_array(nvlist_t*, const(char)*, uint16_t*, uint_t, );


    alias _IO_FILE = struct__IO_FILE;
    uintmax_t wcstoumax(const(const __gwchar_t)*, __gwchar_t**, int, );
    void fnvlist_add_int32_array(nvlist_t*, const(char)*, int32_t*, uint_t, );
    int siginterrupt(int, int, );
    void fnvlist_add_uint32_array(nvlist_t*, const(char)*, uint32_t*, uint_t, );


    void fnvlist_add_int64_array(nvlist_t*, const(char)*, int64_t*, uint_t, );
    int fprintf(FILE*, const(char)*, ...);
    void fnvlist_add_uint64_array(nvlist_t*, const(char)*, uint64_t*, uint_t, );
    struct struct__IO_FILE_plus;


    void fnvlist_add_string_array(nvlist_t*, const(char)*, char**, uint_t, );


    void fnvlist_add_nvlist_array(nvlist_t*, const(char)*, nvlist_t**, uint_t, );
    void fnvlist_remove(nvlist_t*, const(char)*, );


    int sigaltstack(const(const stack_t)*, stack_t*, );
    int printf(const(char)*, ...);
    void fnvlist_remove_nvpair(nvlist_t*, nvpair_t*, );




    int random_r(struct_random_data*, int32_t*, );
    int sprintf(char*, const(char)*, ...);


    nvpair_t* fnvlist_lookup_nvpair(nvlist_t*, const(char)*, );




    boolean_t fnvlist_lookup_boolean(nvlist_t*, const(char)*, );
    boolean_t fnvlist_lookup_boolean_value(nvlist_t*, const(char)*, );
    int srandom_r(uint, struct_random_data*, );


    uchar_t fnvlist_lookup_byte(nvlist_t*, const(char)*, );
    int8_t fnvlist_lookup_int8(nvlist_t*, const(char)*, );
    int initstate_r(uint, char*, int, struct_random_data*, );


    int16_t fnvlist_lookup_int16(nvlist_t*, const(char)*, );


    int32_t fnvlist_lookup_int32(nvlist_t*, const(char)*, );


    int vfprintf(FILE*, const(char)*, int, );
    int64_t fnvlist_lookup_int64(nvlist_t*, const(char)*, );




    uint8_t fnvlist_lookup_uint8(nvlist_t*, const(char)*, );
    uint16_t fnvlist_lookup_uint16(nvlist_t*, const(char)*, );


    int setstate_r(char*, struct_random_data*, );
    uint32_t fnvlist_lookup_uint32(nvlist_t*, const(char)*, );
    int sigstack(struct_sigstack*, struct_sigstack*, );
    uint64_t fnvlist_lookup_uint64(nvlist_t*, const(char)*, );


    char* fnvlist_lookup_string(nvlist_t*, const(char)*, );
    nvlist_t* fnvlist_lookup_nvlist(nvlist_t*, const(char)*, );
    int vprintf(const(char)*, int, );
    alias __io_read_fn = c_long function(void*, char*, int);


    boolean_t fnvpair_value_boolean_value(nvpair_t*, );
    int vsprintf(char*, const(char)*, int, );
    uchar_t fnvpair_value_byte(nvpair_t*, );


    __off_t lseek(int, __off_t, int, );
    int8_t fnvpair_value_int8(nvpair_t*, );
    int rand();
    int16_t fnvpair_value_int16(nvpair_t*, );


    int32_t fnvpair_value_int32(nvpair_t*, );
    int64_t fnvpair_value_int64(nvpair_t*, );
    int snprintf(char*, int, const(char)*, ...);
    void srand(uint, );


    alias __io_write_fn = c_long function(void*, const(char)*, int);
    uint8_t fnvpair_value_uint8(nvpair_t*, );
    uint16_t fnvpair_value_uint16(nvpair_t*, );


    uint32_t fnvpair_value_uint32(nvpair_t*, );
    int rand_r(uint*, );
    int vsnprintf(char*, int, const(char)*, int, );
    uint64_t fnvpair_value_uint64(nvpair_t*, );


    char* fnvpair_value_string(nvpair_t*, );


    nvlist_t* fnvpair_value_nvlist(nvpair_t*, );




    alias __io_seek_fn = int function(void*, __off64_t*, int);
    double drand48();


    alias __io_close_fn = int function(void*);
    double erand48(ushort*, );




    c_long lrand48();
    int close(int, );
    c_long nrand48(ushort*, );
    struct struct_re_pattern_buffer
    {
        ubyte* __buffer;
        c_ulong __allocated;
        c_ulong __used;
        reg_syntax_t __syntax;
        char* __fastmap;
        ubyte* __translate;
        int re_nsub;
        uint __can_be_null;
        uint __regs_allocated;
        uint __fastmap_accurate;
        uint __no_sub;
        uint __not_bol;
        uint __not_eol;
        uint __newline_anchor;
    }






    c_long mrand48();
    int __libc_current_sigrtmin();
    c_long jrand48(ushort*, );
    ssize_t read(int, void*, int, );


    int __libc_current_sigrtmax();
    int vdprintf(int, const(char)*, int, );




    void srand48(c_long, );
    ushort* seed48(ushort*, );




    int dprintf(int, const(char)*, ...);
    void lcong48(ushort*, );
    ssize_t write(int, const(void)*, int, );






    struct struct_drand48_data
    {
        ushort[3] __x;
        ushort[3] __old_x;
        ushort __c;
        ushort __init;
        ulong __a;
    }




    int fscanf(FILE*, const(char)*, ...);
    ssize_t pread(int, void*, int, __off_t, );




    int scanf(const(char)*, ...);


    int __underflow(_IO_FILE*, );


    int __uflow(_IO_FILE*, );
    int drand48_r(struct_drand48_data*, double*, );
    int __overflow(_IO_FILE*, int, );


    ssize_t pwrite(int, const(void)*, int, __off_t, );
    int erand48_r(ushort*, struct_drand48_data*, double*, );




    int lrand48_r(struct_drand48_data*, c_long*, );






    int nrand48_r(ushort*, struct_drand48_data*, c_long*, );




    int sscanf(const(char)*, const(char)*, ...);






    int mrand48_r(struct_drand48_data*, c_long*, );
    int jrand48_r(ushort*, struct_drand48_data*, c_long*, );
    int srand48_r(c_long, struct_drand48_data*, );


    int seed48_r(ushort*, struct_drand48_data*, );




    int lcong48_r(ushort*, struct_drand48_data*, );


    int vfscanf(FILE*, const(char)*, int, );
    int pipe(int*, );




    alias regex_t = struct_re_pattern_buffer;
    void* malloc(int, );


    void* calloc(int, int, );
    alias regoff_t = int;






    int vscanf(const(char)*, int, );
    int _IO_getc(_IO_FILE*, );


    int _IO_putc(int, _IO_FILE*, );


    int _IO_feof(_IO_FILE*, );
    int vsscanf(const(char)*, const(char)*, int, );
    int _IO_ferror(_IO_FILE*, );


    int _IO_peekc_locked(_IO_FILE*, );
    void* realloc(void*, int, );


    uint alarm(uint, );







    void _IO_flockfile(_IO_FILE*, );
    void _IO_funlockfile(_IO_FILE*, );


    int _IO_ftrylockfile(_IO_FILE*, );
    uint sleep(uint, );


    void free(void*, );






    struct _Anonymous_54
    {
        regoff_t rm_so;
        regoff_t rm_eo;
    }
    alias regmatch_t = _Anonymous_54;


    __useconds_t ualarm(__useconds_t, __useconds_t, );





    void* valloc(int, );


    int _IO_vfscanf(_IO_FILE*, const(char)*, int, int*, );


    int _IO_vfprintf(_IO_FILE*, const(char)*, int, );


    __ssize_t _IO_padn(_IO_FILE*, int, __ssize_t, );
    int posix_memalign(void**, int, int, );


    int _IO_sgetn();
    int usleep(__useconds_t, );
    __off64_t _IO_seekoff(_IO_FILE*, __off64_t, int, int, );


    __off64_t _IO_seekpos(_IO_FILE*, __off64_t, int, );
    void* aligned_alloc(int, int, );
    void _IO_free_backup_area(_IO_FILE*, );






    int pause();
    void abort();




    int chown(const(char)*, __uid_t, __gid_t, );
    int fgetc(FILE*, );
    int atexit(void function(), );


    int getc(FILE*, );


    int fchown(int, __uid_t, __gid_t, );




    int getchar();
    int at_quick_exit(void function(), );
    int lchown(const(char)*, __uid_t, __gid_t, );
    int on_exit(void function(int, void*), void*, );




    int fchownat(int, const(char)*, __uid_t, __gid_t, int, );
    int getc_unlocked(FILE*, );
    int getchar_unlocked();


    void exit(int, );


    int chdir(const(char)*, );


    int fchdir(int, );
    void quick_exit(int, );


    int fgetc_unlocked(FILE*, );




    void _Exit(int, );


    char* getcwd(char*, int, );


    char* getenv(const(char)*, );


    int fputc(int, FILE*, );
    int putc(int, FILE*, );




    int putchar(int, );






    char* getwd(char*, );
    int putenv(char*, );


    enum _Anonymous_55
    {
        _CS_PATH = 0,
        _CS_V6_WIDTH_RESTRICTED_ENVS = 1,
        _CS_GNU_LIBC_VERSION = 2,
        _CS_GNU_LIBPTHREAD_VERSION = 3,
        _CS_V5_WIDTH_RESTRICTED_ENVS = 4,
        _CS_V7_WIDTH_RESTRICTED_ENVS = 5,
        _CS_LFS_CFLAGS = 1000,
        _CS_LFS_LDFLAGS = 1001,
        _CS_LFS_LIBS = 1002,
        _CS_LFS_LINTFLAGS = 1003,
        _CS_LFS64_CFLAGS = 1004,
        _CS_LFS64_LDFLAGS = 1005,
        _CS_LFS64_LIBS = 1006,
        _CS_LFS64_LINTFLAGS = 1007,
        _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
        _CS_XBS5_ILP32_OFF32_LDFLAGS = 1101,
        _CS_XBS5_ILP32_OFF32_LIBS = 1102,
        _CS_XBS5_ILP32_OFF32_LINTFLAGS = 1103,
        _CS_XBS5_ILP32_OFFBIG_CFLAGS = 1104,
        _CS_XBS5_ILP32_OFFBIG_LDFLAGS = 1105,
        _CS_XBS5_ILP32_OFFBIG_LIBS = 1106,
        _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = 1107,
        _CS_XBS5_LP64_OFF64_CFLAGS = 1108,
        _CS_XBS5_LP64_OFF64_LDFLAGS = 1109,
        _CS_XBS5_LP64_OFF64_LIBS = 1110,
        _CS_XBS5_LP64_OFF64_LINTFLAGS = 1111,
        _CS_XBS5_LPBIG_OFFBIG_CFLAGS = 1112,
        _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = 1113,
        _CS_XBS5_LPBIG_OFFBIG_LIBS = 1114,
        _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = 1115,
        _CS_POSIX_V6_ILP32_OFF32_CFLAGS = 1116,
        _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = 1117,
        _CS_POSIX_V6_ILP32_OFF32_LIBS = 1118,
        _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS = 1119,
        _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = 1120,
        _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = 1121,
        _CS_POSIX_V6_ILP32_OFFBIG_LIBS = 1122,
        _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS = 1123,
        _CS_POSIX_V6_LP64_OFF64_CFLAGS = 1124,
        _CS_POSIX_V6_LP64_OFF64_LDFLAGS = 1125,
        _CS_POSIX_V6_LP64_OFF64_LIBS = 1126,
        _CS_POSIX_V6_LP64_OFF64_LINTFLAGS = 1127,
        _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = 1128,
        _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = 1129,
        _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = 1130,
        _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS = 1131,
        _CS_POSIX_V7_ILP32_OFF32_CFLAGS = 1132,
        _CS_POSIX_V7_ILP32_OFF32_LDFLAGS = 1133,
        _CS_POSIX_V7_ILP32_OFF32_LIBS = 1134,
        _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS = 1135,
        _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS = 1136,
        _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS = 1137,
        _CS_POSIX_V7_ILP32_OFFBIG_LIBS = 1138,
        _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS = 1139,
        _CS_POSIX_V7_LP64_OFF64_CFLAGS = 1140,
        _CS_POSIX_V7_LP64_OFF64_LDFLAGS = 1141,
        _CS_POSIX_V7_LP64_OFF64_LIBS = 1142,
        _CS_POSIX_V7_LP64_OFF64_LINTFLAGS = 1143,
        _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS = 1144,
        _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS = 1145,
        _CS_POSIX_V7_LPBIG_OFFBIG_LIBS = 1146,
        _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS = 1147,
        _CS_V6_ENV = 1148,
        _CS_V7_ENV = 1149,
    }
    enum
    {
        _CS_PATH = 0,
        _CS_V6_WIDTH_RESTRICTED_ENVS = 1,
        _CS_GNU_LIBC_VERSION = 2,
        _CS_GNU_LIBPTHREAD_VERSION = 3,
        _CS_V5_WIDTH_RESTRICTED_ENVS = 4,
        _CS_V7_WIDTH_RESTRICTED_ENVS = 5,
        _CS_LFS_CFLAGS = 1000,
        _CS_LFS_LDFLAGS = 1001,
        _CS_LFS_LIBS = 1002,
        _CS_LFS_LINTFLAGS = 1003,
        _CS_LFS64_CFLAGS = 1004,
        _CS_LFS64_LDFLAGS = 1005,
        _CS_LFS64_LIBS = 1006,
        _CS_LFS64_LINTFLAGS = 1007,
        _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
        _CS_XBS5_ILP32_OFF32_LDFLAGS = 1101,
        _CS_XBS5_ILP32_OFF32_LIBS = 1102,
        _CS_XBS5_ILP32_OFF32_LINTFLAGS = 1103,
        _CS_XBS5_ILP32_OFFBIG_CFLAGS = 1104,
        _CS_XBS5_ILP32_OFFBIG_LDFLAGS = 1105,
        _CS_XBS5_ILP32_OFFBIG_LIBS = 1106,
        _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = 1107,
        _CS_XBS5_LP64_OFF64_CFLAGS = 1108,
        _CS_XBS5_LP64_OFF64_LDFLAGS = 1109,
        _CS_XBS5_LP64_OFF64_LIBS = 1110,
        _CS_XBS5_LP64_OFF64_LINTFLAGS = 1111,
        _CS_XBS5_LPBIG_OFFBIG_CFLAGS = 1112,
        _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = 1113,
        _CS_XBS5_LPBIG_OFFBIG_LIBS = 1114,
        _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = 1115,
        _CS_POSIX_V6_ILP32_OFF32_CFLAGS = 1116,
        _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = 1117,
        _CS_POSIX_V6_ILP32_OFF32_LIBS = 1118,
        _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS = 1119,
        _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = 1120,
        _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = 1121,
        _CS_POSIX_V6_ILP32_OFFBIG_LIBS = 1122,
        _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS = 1123,
        _CS_POSIX_V6_LP64_OFF64_CFLAGS = 1124,
        _CS_POSIX_V6_LP64_OFF64_LDFLAGS = 1125,
        _CS_POSIX_V6_LP64_OFF64_LIBS = 1126,
        _CS_POSIX_V6_LP64_OFF64_LINTFLAGS = 1127,
        _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = 1128,
        _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = 1129,
        _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = 1130,
        _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS = 1131,
        _CS_POSIX_V7_ILP32_OFF32_CFLAGS = 1132,
        _CS_POSIX_V7_ILP32_OFF32_LDFLAGS = 1133,
        _CS_POSIX_V7_ILP32_OFF32_LIBS = 1134,
        _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS = 1135,
        _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS = 1136,
        _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS = 1137,
        _CS_POSIX_V7_ILP32_OFFBIG_LIBS = 1138,
        _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS = 1139,
        _CS_POSIX_V7_LP64_OFF64_CFLAGS = 1140,
        _CS_POSIX_V7_LP64_OFF64_LDFLAGS = 1141,
        _CS_POSIX_V7_LP64_OFF64_LIBS = 1142,
        _CS_POSIX_V7_LP64_OFF64_LINTFLAGS = 1143,
        _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS = 1144,
        _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS = 1145,
        _CS_POSIX_V7_LPBIG_OFFBIG_LIBS = 1146,
        _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS = 1147,
        _CS_V6_ENV = 1148,
        _CS_V7_ENV = 1149,
    }
    int dup(int, );
    int setenv(const(char)*, const(char)*, int, );


    int fputc_unlocked(int, FILE*, );
    int dup2(int, int, );


    int unsetenv(const(char)*, );






    int putc_unlocked(int, FILE*, );
    extern __gshared char** __environ;
    int putchar_unlocked(int, );
    int clearenv();






    int getw(FILE*, );


    int execve(const(char)*, char**, char**, );
    int putw(int, FILE*, );


    char* mktemp(char*, );


    int fexecve(int, char**, char**, );




    int regcomp(regex_t*, const(char)*, int, );


    char* fgets(char*, int, FILE*, );


    int execv(const(char)*, char**, );
    int regexec(const(const regex_t)*, const(char)*, int, regmatch_t*, int, );




    int mkstemp(char*, );
    int execle(const(char)*, const(char)*, ...);
    int regerror();


    void regfree(regex_t*, );


    int execl(const(char)*, const(char)*, ...);




    int execvp(const(char)*, char**, );






    int execlp(const(char)*, const(char)*, ...);






    int mkstemps(char*, int, );
    int nice(int, );




    __ssize_t __getdelim(char**, int*, int, FILE*, );


    void _exit(int, );
    __ssize_t getdelim(char**, int*, int, FILE*, );






    char* mkdtemp(char*, );


    c_long pathconf(const(char)*, int, );


    __ssize_t getline(char**, int*, FILE*, );


    c_long fpathconf(int, int, );


    c_long sysconf(int, );




    int confstr();
    int fputs(const(char)*, FILE*, );






    __pid_t getpid();


    int puts(const(char)*, );
    __pid_t getppid();




    __pid_t getpgrp();
    int ungetc(int, FILE*, );


    __pid_t __getpgid(__pid_t, );


    __pid_t getpgid(__pid_t, );




    int fread();




    int setpgid(__pid_t, __pid_t, );


    int fwrite();
    int setpgrp();


    int system(const(char)*, );




    __pid_t setsid();


    int fread_unlocked();
    __pid_t getsid(__pid_t, );


    int fwrite_unlocked();
    __uid_t getuid();
    __uid_t geteuid();
    char* realpath(const(char)*, char*, );
    __gid_t getgid();
    int fseek(FILE*, c_long, int, );
    __gid_t getegid();
    c_long ftell(FILE*, );


    alias __compar_fn_t = int function(const(void)*, const(void)*);
    int getgroups(int, __gid_t*, );
    void rewind(FILE*, );
    void* bsearch(const(void)*, const(void)*, int, int, __compar_fn_t, );
    int setuid(__uid_t, );
    int fseeko(FILE*, __off_t, int, );
    int setreuid(__uid_t, __uid_t, );
    __off_t ftello(FILE*, );
    void qsort(void*, int, int, __compar_fn_t, );
    int seteuid(__uid_t, );
    int setgid(__gid_t, );
    int abs(int, );
    c_long labs(c_long, );
    int setregid(__gid_t, __gid_t, );
    long llabs(long, );
    int setegid(__gid_t, );
    int fgetpos(FILE*, fpos_t*, );
    div_t div(int, int, );
    ldiv_t ldiv(c_long, c_long, );
    int fsetpos(FILE*, const(const fpos_t)*, );
    lldiv_t lldiv(long, long, );
    char* ecvt(double, int, int*, int*, );
    void clearerr(FILE*, );
    __pid_t fork();
    int feof(FILE*, );
    char* fcvt(double, int, int*, int*, );
    int ferror(FILE*, );
    void clearerr_unlocked(FILE*, );
    char* gcvt(double, int, char*, );
    int feof_unlocked(FILE*, );
    int vfork();
    int ferror_unlocked(FILE*, );
    char* qecvt(real, int, int*, int*, );
    char* ttyname(int, );
    void perror(const(char)*, );
    char* qfcvt(real, int, int*, int*, );
    int ttyname_r(int, char*, int, );
    char* qgcvt(real, int, char*, );
    int isatty(int, );
    int ecvt_r(double, int, int*, int*, char*, int, );
    int fileno(FILE*, );
    int fcvt_r(double, int, int*, int*, char*, int, );
    int ttyslot();
    int qecvt_r(real, int, int*, int*, char*, int, );
    int fileno_unlocked(FILE*, );
    int link(const(char)*, const(char)*, );
    int qfcvt_r(real, int, int*, int*, char*, int, );
    int linkat(int, const(char)*, int, const(char)*, int, );
    FILE* popen(const(char)*, const(char)*, );
    int mblen(const(char)*, int, );
    int symlink(const(char)*, const(char)*, );
    int pclose(FILE*, );
    int mbtowc(int*, const(char)*, int, );
    int wctomb(char*, int, );
    ssize_t readlink(const(char)*, char*, int, );
    char* ctermid(char*, );
    int mbstowcs();
    int symlinkat(const(char)*, int, const(char)*, );
    int wcstombs();
    ssize_t readlinkat(int, const(char)*, char*, int, );
    int unlink(const(char)*, );
    int rpmatch(const(char)*, );
    int unlinkat(int, const(char)*, int, );
    int rmdir(const(char)*, );
    int getsubopt(char**, char**, char**, );
    void flockfile(FILE*, );
    __pid_t tcgetpgrp(int, );
    int ftrylockfile(FILE*, );
    int tcsetpgrp(int, __pid_t, );
    void funlockfile(FILE*, );
    char* getlogin();
    int getlogin_r(char*, int, );
    int setlogin(const(char)*, );
    int gethostname(char*, int, );
    int sethostname(const(char)*, int, );
    int getloadavg(double*, int, );
    int sethostid(c_long, );
    int getdomainname(char*, int, );
    int setdomainname(const(char)*, int, );
    int vhangup();
    int revoke(const(char)*, );
    int profil(ushort*, int, int, uint, );
    int acct(const(char)*, );
    char* getusershell();
    void endusershell();
    void setusershell();
    int daemon(int, int, );
    int chroot(const(char)*, );
    char* getpass(const(char)*, );
    int fsync(int, );
    c_long gethostid();
    void sync();
    int getpagesize();
    int getdtablesize();
    int truncate(const(char)*, __off_t, );
    int ftruncate(int, __off_t, );
    int brk(void*, );
    void* sbrk(intptr_t, );
    c_long syscall(c_long, ...);
    int lockf(int, int, __off_t, );
    int fdatasync(int, );
    int getentropy(void*, int, );
}

extern(C) {
    struct _Anonymous_56
    {
        c_ulong[16] __val;
    }
    struct _Anonymous_57
    {
        int __count;
        union _Anonymous_58
        {
            uint __wch;
            char[4] __wchb;
        }
        _Anonymous_58 __value;
    }


    struct _Anonymous_59
    {
        __off_t __pos;
        __mbstate_t __state;
    }
    enum _Anonymous_60
    {
        _PC_LINK_MAX = 0,
        _PC_MAX_CANON = 1,
        _PC_MAX_INPUT = 2,
        _PC_NAME_MAX = 3,
        _PC_PATH_MAX = 4,
        _PC_PIPE_BUF = 5,
        _PC_CHOWN_RESTRICTED = 6,
        _PC_NO_TRUNC = 7,
        _PC_VDISABLE = 8,
        _PC_SYNC_IO = 9,
        _PC_ASYNC_IO = 10,
        _PC_PRIO_IO = 11,
        _PC_SOCK_MAXBUF = 12,
        _PC_FILESIZEBITS = 13,
        _PC_REC_INCR_XFER_SIZE = 14,
        _PC_REC_MAX_XFER_SIZE = 15,
        _PC_REC_MIN_XFER_SIZE = 16,
        _PC_REC_XFER_ALIGN = 17,
        _PC_ALLOC_SIZE_MIN = 18,
        _PC_SYMLINK_MAX = 19,
        _PC_2_SYMLINKS = 20,
    }
    enum _Anonymous_61E
    {
        _PC_LINK_MAX = 0,
        _PC_MAX_CANON = 1,
        _PC_MAX_INPUT = 2,
        _PC_NAME_MAX = 3,
        _PC_PATH_MAX = 4,
        _PC_PIPE_BUF = 5,
        _PC_CHOWN_RESTRICTED = 6,
        _PC_NO_TRUNC = 7,
        _PC_VDISABLE = 8,
        _PC_SYNC_IO = 9,
        _PC_ASYNC_IO = 10,
        _PC_PRIO_IO = 11,
        _PC_SOCK_MAXBUF = 12,
        _PC_FILESIZEBITS = 13,
        _PC_REC_INCR_XFER_SIZE = 14,
        _PC_REC_MAX_XFER_SIZE = 15,
        _PC_REC_MIN_XFER_SIZE = 16,
        _PC_REC_XFER_ALIGN = 17,
        _PC_ALLOC_SIZE_MIN = 18,
        _PC_SYMLINK_MAX = 19,
        _PC_2_SYMLINKS = 20,
    }
    struct _Anonymous_61
    {
        void* ss_sp;
        int ss_flags;
        int ss_size;
    }
    enum _Anonymous_62
    {
        SS_ONSTACK = 1,
        SS_DISABLE = 2,
    }
    enum _Anonymous_63E
    {
        SS_ONSTACK = 1,
        SS_DISABLE = 2,
    }
    enum _Anonymous_63
    {
        SIGEV_SIGNAL = 0,
        SIGEV_NONE = 1,
        SIGEV_THREAD = 2,
        SIGEV_THREAD_ID = 4,
    }
    enum _Anonymous_64E
    {
        SIGEV_SIGNAL = 0,
        SIGEV_NONE = 1,
        SIGEV_THREAD = 2,
        SIGEV_THREAD_ID = 4,
    }
    struct _Anonymous_64
    {
        __off64_t __pos;
        __mbstate_t __state;
    }






    union _Anonymous_65
    {
        char[4] __size;
        int __align;
    }




    enum _Anonymous_66
    {
        SI_ASYNCNL = -60,
        SI_TKILL = -6,
        SI_SIGIO = -5,
        SI_ASYNCIO = -4,
        SI_MESGQ = -3,
        SI_TIMER = -2,
        SI_QUEUE = -1,
        SI_USER = 0,
        SI_KERNEL = 128,
    }
    enum _Anonymous_67E
    {
        SI_ASYNCNL = -60,
        SI_TKILL = -6,
        SI_SIGIO = -5,
        SI_ASYNCIO = -4,
        SI_MESGQ = -3,
        SI_TIMER = -2,
        SI_QUEUE = -1,
        SI_USER = 0,
        SI_KERNEL = 128,
    }




    struct _Anonymous_67
    {
        int si_signo;
        int si_errno;
        int si_code;
        int __pad0;
        union _Anonymous_68
        {
            int[28] _pad;
            struct _Anonymous_69
            {
                __pid_t si_pid;// _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
            }
            _Anonymous_69 _kill;
            struct _Anonymous_70
            {
                int si_tid;
                int si_overrun; // _sifields._timer.si_overrun;
                sigval_t si_sigval;
            }
            _Anonymous_70 _timer;
            struct _Anonymous_71
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; //_sifields._kill.si_uid;
                sigval_t si_sigval;
            }
            _Anonymous_71 _rt;
            struct _Anonymous_72
            {
                __pid_t si_pid; //_sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
                int si_status; // _sifields._sigchld.si_status;
                __clock_t si_utime;// _sifields._sigchld.si_utime;
                __clock_t si_stime; // _sifields._sigchld.si_stime;
            }
            _Anonymous_72 _sigchld;
            struct _Anonymous_73
            {
                void* si_addr; // _sifields._sigfault.si_addr;
                short si_addr_lsb; // _sifields._sigfault.si_addr_lsb;
                union _Anonymous_74
                {
                    struct _Anonymous_75
                    {
                        void* _lower;
                        void* _upper;
                    }
                    _Anonymous_75 _addr_bnd;
                    __uint32_t _pkey;
                }
                _Anonymous_74 _bounds;
            }
            _Anonymous_73 _sigfault;
            struct _Anonymous_76
            {
                c_long si_band; // _sifields._sigpoll.si_band;
                int si_fd; // _sifields._sigpoll.si_fd;
            }
            _Anonymous_76 _sigpoll;
            struct _Anonymous_77
            {
                void* _call_addr;
                int _syscall;
                uint _arch;
            }
            _Anonymous_77 _sigsys;
        }
        _Anonymous_68 _sifields;
    }
    union _Anonymous_78
    {
        char[4] __size;
        int __align;
    }
    struct struct_mnttab
    {
        char* mnt_special;
        char* mnt_mountp;
        char* mnt_fstype;
        char* mnt_mntopts;
    }






    struct struct_mntent
    {
        char* mnt_fsname;
        char* mnt_dir;
        char* mnt_type;
        char* mnt_opts;
        int mnt_freq;
        int mnt_passno;
    }
    struct _Anonymous_79
    {
        __fd_mask[16] __fds_bits;
    }




    struct struct_extmnttab
    {
        char* mnt_special;
        char* mnt_mountp;
        char* mnt_fstype;
        char* mnt_mntopts;
        uint_t mnt_major;
        uint_t mnt_minor;
    }






    FILE* setmntent(const(char)*, const(char)*, );






    union _Anonymous_80
    {
        struct___pthread_mutex_s __data;
        char[40] __size;
        c_long __align;
    }
    enum _Anonymous_81
    {
        ILL_ILLOPC = 1,
        ILL_ILLOPN = 2,
        ILL_ILLADR = 3,
        ILL_ILLTRP = 4,
        ILL_PRVOPC = 5,
        ILL_PRVREG = 6,
        ILL_COPROC = 7,
        ILL_BADSTK = 8,
    }
    struct_mntent* getmntent(FILE*, );


    int getmntany(FILE*, struct_mnttab*, struct_mnttab*, );




    int _sol_getmntent(FILE*, struct_mnttab*, );
    enum _Anonymous_82
    {
        _SC_ARG_MAX = 0,
        _SC_CHILD_MAX = 1,
        _SC_CLK_TCK = 2,
        _SC_NGROUPS_MAX = 3,
        _SC_OPEN_MAX = 4,
        _SC_STREAM_MAX = 5,
        _SC_TZNAME_MAX = 6,
        _SC_JOB_CONTROL = 7,
        _SC_SAVED_IDS = 8,
        _SC_REALTIME_SIGNALS = 9,
        _SC_PRIORITY_SCHEDULING = 10,
        _SC_TIMERS = 11,
        _SC_ASYNCHRONOUS_IO = 12,
        _SC_PRIORITIZED_IO = 13,
        _SC_SYNCHRONIZED_IO = 14,
        _SC_FSYNC = 15,
        _SC_MAPPED_FILES = 16,
        _SC_MEMLOCK = 17,
        _SC_MEMLOCK_RANGE = 18,
        _SC_MEMORY_PROTECTION = 19,
        _SC_MESSAGE_PASSING = 20,
        _SC_SEMAPHORES = 21,
        _SC_SHARED_MEMORY_OBJECTS = 22,
        _SC_AIO_LISTIO_MAX = 23,
        _SC_AIO_MAX = 24,
        _SC_AIO_PRIO_DELTA_MAX = 25,
        _SC_DELAYTIMER_MAX = 26,
        _SC_MQ_OPEN_MAX = 27,
        _SC_MQ_PRIO_MAX = 28,
        _SC_VERSION = 29,
        _SC_PAGESIZE = 30,
        _SC_RTSIG_MAX = 31,
        _SC_SEM_NSEMS_MAX = 32,
        _SC_SEM_VALUE_MAX = 33,
        _SC_SIGQUEUE_MAX = 34,
        _SC_TIMER_MAX = 35,
        _SC_BC_BASE_MAX = 36,
        _SC_BC_DIM_MAX = 37,
        _SC_BC_SCALE_MAX = 38,
        _SC_BC_STRING_MAX = 39,
        _SC_COLL_WEIGHTS_MAX = 40,
        _SC_EQUIV_CLASS_MAX = 41,
        _SC_EXPR_NEST_MAX = 42,
        _SC_LINE_MAX = 43,
        _SC_RE_DUP_MAX = 44,
        _SC_CHARCLASS_NAME_MAX = 45,
        _SC_2_VERSION = 46,
        _SC_2_C_BIND = 47,
        _SC_2_C_DEV = 48,
        _SC_2_FORT_DEV = 49,
        _SC_2_FORT_RUN = 50,
        _SC_2_SW_DEV = 51,
        _SC_2_LOCALEDEF = 52,
        _SC_PII = 53,
        _SC_PII_XTI = 54,
        _SC_PII_SOCKET = 55,
        _SC_PII_INTERNET = 56,
        _SC_PII_OSI = 57,
        _SC_POLL = 58,
        _SC_SELECT = 59,
        _SC_UIO_MAXIOV = 60,
        _SC_IOV_MAX = 60,
        _SC_PII_INTERNET_STREAM = 61,
        _SC_PII_INTERNET_DGRAM = 62,
        _SC_PII_OSI_COTS = 63,
        _SC_PII_OSI_CLTS = 64,
        _SC_PII_OSI_M = 65,
        _SC_T_IOV_MAX = 66,
        _SC_THREADS = 67,
        _SC_THREAD_SAFE_FUNCTIONS = 68,
        _SC_GETGR_R_SIZE_MAX = 69,
        _SC_GETPW_R_SIZE_MAX = 70,
        _SC_LOGIN_NAME_MAX = 71,
        _SC_TTY_NAME_MAX = 72,
        _SC_THREAD_DESTRUCTOR_ITERATIONS = 73,
        _SC_THREAD_KEYS_MAX = 74,
        _SC_THREAD_STACK_MIN = 75,
        _SC_THREAD_THREADS_MAX = 76,
        _SC_THREAD_ATTR_STACKADDR = 77,
        _SC_THREAD_ATTR_STACKSIZE = 78,
        _SC_THREAD_PRIORITY_SCHEDULING = 79,
        _SC_THREAD_PRIO_INHERIT = 80,
        _SC_THREAD_PRIO_PROTECT = 81,
        _SC_THREAD_PROCESS_SHARED = 82,
        _SC_NPROCESSORS_CONF = 83,
        _SC_NPROCESSORS_ONLN = 84,
        _SC_PHYS_PAGES = 85,
        _SC_AVPHYS_PAGES = 86,
        _SC_ATEXIT_MAX = 87,
        _SC_PASS_MAX = 88,
        _SC_XOPEN_VERSION = 89,
        _SC_XOPEN_XCU_VERSION = 90,
        _SC_XOPEN_UNIX = 91,
        _SC_XOPEN_CRYPT = 92,
        _SC_XOPEN_ENH_I18N = 93,
        _SC_XOPEN_SHM = 94,
        _SC_2_CHAR_TERM = 95,
        _SC_2_C_VERSION = 96,
        _SC_2_UPE = 97,
        _SC_XOPEN_XPG2 = 98,
        _SC_XOPEN_XPG3 = 99,
        _SC_XOPEN_XPG4 = 100,
        _SC_CHAR_BIT = 101,
        _SC_CHAR_MAX = 102,
        _SC_CHAR_MIN = 103,
        _SC_INT_MAX = 104,
        _SC_INT_MIN = 105,
        _SC_LONG_BIT = 106,
        _SC_WORD_BIT = 107,
        _SC_MB_LEN_MAX = 108,
        _SC_NZERO = 109,
        _SC_SSIZE_MAX = 110,
        _SC_SCHAR_MAX = 111,
        _SC_SCHAR_MIN = 112,
        _SC_SHRT_MAX = 113,
        _SC_SHRT_MIN = 114,
        _SC_UCHAR_MAX = 115,
        _SC_UINT_MAX = 116,
        _SC_ULONG_MAX = 117,
        _SC_USHRT_MAX = 118,
        _SC_NL_ARGMAX = 119,
        _SC_NL_LANGMAX = 120,
        _SC_NL_MSGMAX = 121,
        _SC_NL_NMAX = 122,
        _SC_NL_SETMAX = 123,
        _SC_NL_TEXTMAX = 124,
        _SC_XBS5_ILP32_OFF32 = 125,
        _SC_XBS5_ILP32_OFFBIG = 126,
        _SC_XBS5_LP64_OFF64 = 127,
        _SC_XBS5_LPBIG_OFFBIG = 128,
        _SC_XOPEN_LEGACY = 129,
        _SC_XOPEN_REALTIME = 130,
        _SC_XOPEN_REALTIME_THREADS = 131,
        _SC_ADVISORY_INFO = 132,
        _SC_BARRIERS = 133,
        _SC_BASE = 134,
        _SC_C_LANG_SUPPORT = 135,
        _SC_C_LANG_SUPPORT_R = 136,
        _SC_CLOCK_SELECTION = 137,
        _SC_CPUTIME = 138,
        _SC_THREAD_CPUTIME = 139,
        _SC_DEVICE_IO = 140,
        _SC_DEVICE_SPECIFIC = 141,
        _SC_DEVICE_SPECIFIC_R = 142,
        _SC_FD_MGMT = 143,
        _SC_FIFO = 144,
        _SC_PIPE = 145,
        _SC_FILE_ATTRIBUTES = 146,
        _SC_FILE_LOCKING = 147,
        _SC_FILE_SYSTEM = 148,
        _SC_MONOTONIC_CLOCK = 149,
        _SC_MULTI_PROCESS = 150,
        _SC_SINGLE_PROCESS = 151,
        _SC_NETWORKING = 152,
        _SC_READER_WRITER_LOCKS = 153,
        _SC_SPIN_LOCKS = 154,
        _SC_REGEXP = 155,
        _SC_REGEX_VERSION = 156,
        _SC_SHELL = 157,
        _SC_SIGNALS = 158,
        _SC_SPAWN = 159,
        _SC_SPORADIC_SERVER = 160,
        _SC_THREAD_SPORADIC_SERVER = 161,
        _SC_SYSTEM_DATABASE = 162,
        _SC_SYSTEM_DATABASE_R = 163,
        _SC_TIMEOUTS = 164,
        _SC_TYPED_MEMORY_OBJECTS = 165,
        _SC_USER_GROUPS = 166,
        _SC_USER_GROUPS_R = 167,
        _SC_2_PBS = 168,
        _SC_2_PBS_ACCOUNTING = 169,
        _SC_2_PBS_LOCATE = 170,
        _SC_2_PBS_MESSAGE = 171,
        _SC_2_PBS_TRACK = 172,
        _SC_SYMLOOP_MAX = 173,
        _SC_STREAMS = 174,
        _SC_2_PBS_CHECKPOINT = 175,
        _SC_V6_ILP32_OFF32 = 176,
        _SC_V6_ILP32_OFFBIG = 177,
        _SC_V6_LP64_OFF64 = 178,
        _SC_V6_LPBIG_OFFBIG = 179,
        _SC_HOST_NAME_MAX = 180,
        _SC_TRACE = 181,
        _SC_TRACE_EVENT_FILTER = 182,
        _SC_TRACE_INHERIT = 183,
        _SC_TRACE_LOG = 184,
        _SC_LEVEL1_ICACHE_SIZE = 185,
        _SC_LEVEL1_ICACHE_ASSOC = 186,
        _SC_LEVEL1_ICACHE_LINESIZE = 187,
        _SC_LEVEL1_DCACHE_SIZE = 188,
        _SC_LEVEL1_DCACHE_ASSOC = 189,
        _SC_LEVEL1_DCACHE_LINESIZE = 190,
        _SC_LEVEL2_CACHE_SIZE = 191,
        _SC_LEVEL2_CACHE_ASSOC = 192,
        _SC_LEVEL2_CACHE_LINESIZE = 193,
        _SC_LEVEL3_CACHE_SIZE = 194,
        _SC_LEVEL3_CACHE_ASSOC = 195,
        _SC_LEVEL3_CACHE_LINESIZE = 196,
        _SC_LEVEL4_CACHE_SIZE = 197,
        _SC_LEVEL4_CACHE_ASSOC = 198,
        _SC_LEVEL4_CACHE_LINESIZE = 199,
        _SC_IPV6 = 235,
        _SC_RAW_SOCKETS = 236,
        _SC_V7_ILP32_OFF32 = 237,
        _SC_V7_ILP32_OFFBIG = 238,
        _SC_V7_LP64_OFF64 = 239,
        _SC_V7_LPBIG_OFFBIG = 240,
        _SC_SS_REPL_MAX = 241,
        _SC_TRACE_EVENT_NAME_MAX = 242,
        _SC_TRACE_NAME_MAX = 243,
        _SC_TRACE_SYS_MAX = 244,
        _SC_TRACE_USER_EVENT_MAX = 245,
        _SC_XOPEN_STREAMS = 246,
        _SC_THREAD_ROBUST_PRIO_INHERIT = 247,
        _SC_THREAD_ROBUST_PRIO_PROTECT = 248,
    }
    int getextmntent(FILE*, struct_extmnttab*, int, );


    struct_mntent* getmntent_r(FILE*, struct_mntent*, char*, int, );


    char* _sol_hasmntopt(struct_mnttab*, char*, );
    union _Anonymous_83
    {
        struct___pthread_cond_s __data;
        char[48] __size;
        long __align;
    }
    int addmntent(FILE*, const struct_mntent*, );




    int endmntent(FILE*, );
    union _Anonymous_84
    {
        struct___pthread_rwlock_arch_t __data;
        char[56] __size;
        c_long __align;
    }
    enum _Anonymous_85
    {
        FPE_INTDIV = 1,
        FPE_INTOVF = 2,
        FPE_FLTDIV = 3,
        FPE_FLTOVF = 4,
        FPE_FLTUND = 5,
        FPE_FLTRES = 6,
        FPE_FLTINV = 7,
        FPE_FLTSUB = 8,
    }
    char* _sol_hasmntopt(const struct_mntent*, const(char)*, );
    union _Anonymous_86
    {
        char[8] __size;
        c_long __align;
    }
    union _Anonymous_87
    {
        char[32] __size;
        c_long __align;
    }
    enum _Anonymous_88
    {
        SEGV_MAPERR = 1,
        SEGV_ACCERR = 2,
    }
    union _Anonymous_89
    {
        char[4] __size;
        int __align;
    }
    enum _Anonymous_90
    {
        BUS_ADRALN = 1,
        BUS_ADRERR = 2,
        BUS_OBJERR = 3,
        BUS_MCEERR_AR = 4,
        BUS_MCEERR_AO = 5,
    }
    struct _Anonymous_91
    {
        gregset_t gregs;
        fpregset_t fpregs;
        ulong[8] __reserved1;
    }
    struct _Anonymous_92
    {
        int[2] __val;
    }
    enum _Anonymous_93
    {
        CLD_EXITED = 1,
        CLD_KILLED = 2,
        CLD_DUMPED = 3,
        CLD_TRAPPED = 4,
        CLD_STOPPED = 5,
        CLD_CONTINUED = 6,
    }
    enum _Anonymous_94
    {
        POLL_IN = 1,
        POLL_OUT = 2,
        POLL_MSG = 3,
        POLL_ERR = 4,
        POLL_PRI = 5,
        POLL_HUP = 6,
    }
    struct _Anonymous_95
    {
        c_long quot;
        c_long rem;
    }
    enum _Anonymous_96
    {
        _CS_PATH = 0,
        _CS_V6_WIDTH_RESTRICTED_ENVS = 1,
        _CS_GNU_LIBC_VERSION = 2,
        _CS_GNU_LIBPTHREAD_VERSION = 3,
        _CS_V5_WIDTH_RESTRICTED_ENVS = 4,
        _CS_V7_WIDTH_RESTRICTED_ENVS = 5,
        _CS_LFS_CFLAGS = 1000,
        _CS_LFS_LDFLAGS = 1001,
        _CS_LFS_LIBS = 1002,
        _CS_LFS_LINTFLAGS = 1003,
        _CS_LFS64_CFLAGS = 1004,
        _CS_LFS64_LDFLAGS = 1005,
        _CS_LFS64_LIBS = 1006,
        _CS_LFS64_LINTFLAGS = 1007,
        _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
        _CS_XBS5_ILP32_OFF32_LDFLAGS = 1101,
        _CS_XBS5_ILP32_OFF32_LIBS = 1102,
        _CS_XBS5_ILP32_OFF32_LINTFLAGS = 1103,
        _CS_XBS5_ILP32_OFFBIG_CFLAGS = 1104,
        _CS_XBS5_ILP32_OFFBIG_LDFLAGS = 1105,
        _CS_XBS5_ILP32_OFFBIG_LIBS = 1106,
        _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = 1107,
        _CS_XBS5_LP64_OFF64_CFLAGS = 1108,
        _CS_XBS5_LP64_OFF64_LDFLAGS = 1109,
        _CS_XBS5_LP64_OFF64_LIBS = 1110,
        _CS_XBS5_LP64_OFF64_LINTFLAGS = 1111,
        _CS_XBS5_LPBIG_OFFBIG_CFLAGS = 1112,
        _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = 1113,
        _CS_XBS5_LPBIG_OFFBIG_LIBS = 1114,
        _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = 1115,
        _CS_POSIX_V6_ILP32_OFF32_CFLAGS = 1116,
        _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = 1117,
        _CS_POSIX_V6_ILP32_OFF32_LIBS = 1118,
        _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS = 1119,
        _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = 1120,
        _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = 1121,
        _CS_POSIX_V6_ILP32_OFFBIG_LIBS = 1122,
        _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS = 1123,
        _CS_POSIX_V6_LP64_OFF64_CFLAGS = 1124,
        _CS_POSIX_V6_LP64_OFF64_LDFLAGS = 1125,
        _CS_POSIX_V6_LP64_OFF64_LIBS = 1126,
        _CS_POSIX_V6_LP64_OFF64_LINTFLAGS = 1127,
        _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = 1128,
        _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = 1129,
        _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = 1130,
        _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS = 1131,
        _CS_POSIX_V7_ILP32_OFF32_CFLAGS = 1132,
        _CS_POSIX_V7_ILP32_OFF32_LDFLAGS = 1133,
        _CS_POSIX_V7_ILP32_OFF32_LIBS = 1134,
        _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS = 1135,
        _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS = 1136,
        _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS = 1137,
        _CS_POSIX_V7_ILP32_OFFBIG_LIBS = 1138,
        _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS = 1139,
        _CS_POSIX_V7_LP64_OFF64_CFLAGS = 1140,
        _CS_POSIX_V7_LP64_OFF64_LDFLAGS = 1141,
        _CS_POSIX_V7_LP64_OFF64_LIBS = 1142,
        _CS_POSIX_V7_LP64_OFF64_LINTFLAGS = 1143,
        _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS = 1144,
        _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS = 1145,
        _CS_POSIX_V7_LPBIG_OFFBIG_LIBS = 1146,
        _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS = 1147,
        _CS_V6_ENV = 1148,
        _CS_V7_ENV = 1149,
    }
}

extern(C) {
    struct _Anonymous_97
    {
        c_ulong[16] __val;
    }
    enum _Anonymous_98
    {
        _PC_LINK_MAX = 0,
        _PC_MAX_CANON = 1,
        _PC_MAX_INPUT = 2,
        _PC_NAME_MAX = 3,
        _PC_PATH_MAX = 4,
        _PC_PIPE_BUF = 5,
        _PC_CHOWN_RESTRICTED = 6,
        _PC_NO_TRUNC = 7,
        _PC_VDISABLE = 8,
        _PC_SYNC_IO = 9,
        _PC_ASYNC_IO = 10,
        _PC_PRIO_IO = 11,
        _PC_SOCK_MAXBUF = 12,
        _PC_FILESIZEBITS = 13,
        _PC_REC_INCR_XFER_SIZE = 14,
        _PC_REC_MAX_XFER_SIZE = 15,
        _PC_REC_MIN_XFER_SIZE = 16,
        _PC_REC_XFER_ALIGN = 17,
        _PC_ALLOC_SIZE_MIN = 18,
        _PC_SYMLINK_MAX = 19,
        _PC_2_SYMLINKS = 20,
    }
    struct _Anonymous_99
    {
        void* ss_sp;
        int ss_flags;
        int ss_size;
    }
    enum _Anonymous_100
    {
        SS_ONSTACK = 1,
        SS_DISABLE = 2,
    }
    enum _Anonymous_101
    {
        SIGEV_SIGNAL = 0,
        SIGEV_NONE = 1,
        SIGEV_THREAD = 2,
        SIGEV_THREAD_ID = 4,
    }
    union _Anonymous_102
    {
        char[4] __size;
        int __align;
    }
    enum _Anonymous_103
    {
        SI_ASYNCNL = -60,
        SI_TKILL = -6,
        SI_SIGIO = -5,
        SI_ASYNCIO = -4,
        SI_MESGQ = -3,
        SI_TIMER = -2,
        SI_QUEUE = -1,
        SI_USER = 0,
        SI_KERNEL = 128,
    }
    struct _Anonymous_104
    {
        int si_signo;
        int si_errno;
        int si_code;
        int __pad0;
        union _Anonymous_105
        {
            int[28] _pad;
            struct _Anonymous_106
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
            }
            _Anonymous_106 _kill;
            struct _Anonymous_107
            {
                int si_tid;
                int si_overrun; // _sifields._timer.si_overrun;
                sigval_t si_sigval;
            }
            _Anonymous_107 _timer;
            struct _Anonymous_108
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
                sigval_t si_sigval;
            }
            _Anonymous_108 _rt;
            struct _Anonymous_109
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
                int si_status; // _sifields._sigchld.si_status;
                __clock_t si_utime; // _sifields._sigchld.si_utime;
                __clock_t si_stime; // _sifields._sigchld.si_stime;
            }
            _Anonymous_109 _sigchld;
            struct _Anonymous_110
            {
                void* si_addr; // _sifields._sigfault.si_addr;
                short si_addr_lsb; // _sifields._sigfault.si_addr_lsb;
                union _Anonymous_111
                {
                    struct _Anonymous_112
                    {
                        void* _lower;
                        void* _upper;
                    }
                    _Anonymous_112 _addr_bnd;
                    __uint32_t _pkey;
                }
                _Anonymous_111 _bounds;
            }
            _Anonymous_110 _sigfault;
            struct _Anonymous_113
            {
                c_long si_band; // _sifields._sigpoll.si_band;
                int si_fd; //_sifields._sigpoll.si_fd;
            }
            _Anonymous_113 _sigpoll;
            struct _Anonymous_114
            {
                void* _call_addr;
                int _syscall;
                uint _arch;
            }
            _Anonymous_114 _sigsys;
        }
        _Anonymous_105 _sifields;
    }
    union _Anonymous_115
    {
        char[4] __size;
        int __align;
    }
    struct _Anonymous_116
    {
        __fd_mask[16] __fds_bits;
    }
    union _Anonymous_117
    {
        struct___pthread_mutex_s __data;
        char[40] __size;
        c_long __align;
    }
    enum _Anonymous_118
    {
        ILL_ILLOPC = 1,
        ILL_ILLOPN = 2,
        ILL_ILLADR = 3,
        ILL_ILLTRP = 4,
        ILL_PRVOPC = 5,
        ILL_PRVREG = 6,
        ILL_COPROC = 7,
        ILL_BADSTK = 8,
    }
    enum _Anonymous_119
    {
        _SC_ARG_MAX = 0,
        _SC_CHILD_MAX = 1,
        _SC_CLK_TCK = 2,
        _SC_NGROUPS_MAX = 3,
        _SC_OPEN_MAX = 4,
        _SC_STREAM_MAX = 5,
        _SC_TZNAME_MAX = 6,
        _SC_JOB_CONTROL = 7,
        _SC_SAVED_IDS = 8,
        _SC_REALTIME_SIGNALS = 9,
        _SC_PRIORITY_SCHEDULING = 10,
        _SC_TIMERS = 11,
        _SC_ASYNCHRONOUS_IO = 12,
        _SC_PRIORITIZED_IO = 13,
        _SC_SYNCHRONIZED_IO = 14,
        _SC_FSYNC = 15,
        _SC_MAPPED_FILES = 16,
        _SC_MEMLOCK = 17,
        _SC_MEMLOCK_RANGE = 18,
        _SC_MEMORY_PROTECTION = 19,
        _SC_MESSAGE_PASSING = 20,
        _SC_SEMAPHORES = 21,
        _SC_SHARED_MEMORY_OBJECTS = 22,
        _SC_AIO_LISTIO_MAX = 23,
        _SC_AIO_MAX = 24,
        _SC_AIO_PRIO_DELTA_MAX = 25,
        _SC_DELAYTIMER_MAX = 26,
        _SC_MQ_OPEN_MAX = 27,
        _SC_MQ_PRIO_MAX = 28,
        _SC_VERSION = 29,
        _SC_PAGESIZE = 30,
        _SC_RTSIG_MAX = 31,
        _SC_SEM_NSEMS_MAX = 32,
        _SC_SEM_VALUE_MAX = 33,
        _SC_SIGQUEUE_MAX = 34,
        _SC_TIMER_MAX = 35,
        _SC_BC_BASE_MAX = 36,
        _SC_BC_DIM_MAX = 37,
        _SC_BC_SCALE_MAX = 38,
        _SC_BC_STRING_MAX = 39,
        _SC_COLL_WEIGHTS_MAX = 40,
        _SC_EQUIV_CLASS_MAX = 41,
        _SC_EXPR_NEST_MAX = 42,
        _SC_LINE_MAX = 43,
        _SC_RE_DUP_MAX = 44,
        _SC_CHARCLASS_NAME_MAX = 45,
        _SC_2_VERSION = 46,
        _SC_2_C_BIND = 47,
        _SC_2_C_DEV = 48,
        _SC_2_FORT_DEV = 49,
        _SC_2_FORT_RUN = 50,
        _SC_2_SW_DEV = 51,
        _SC_2_LOCALEDEF = 52,
        _SC_PII = 53,
        _SC_PII_XTI = 54,
        _SC_PII_SOCKET = 55,
        _SC_PII_INTERNET = 56,
        _SC_PII_OSI = 57,
        _SC_POLL = 58,
        _SC_SELECT = 59,
        _SC_UIO_MAXIOV = 60,
        _SC_IOV_MAX = 60,
        _SC_PII_INTERNET_STREAM = 61,
        _SC_PII_INTERNET_DGRAM = 62,
        _SC_PII_OSI_COTS = 63,
        _SC_PII_OSI_CLTS = 64,
        _SC_PII_OSI_M = 65,
        _SC_T_IOV_MAX = 66,
        _SC_THREADS = 67,
        _SC_THREAD_SAFE_FUNCTIONS = 68,
        _SC_GETGR_R_SIZE_MAX = 69,
        _SC_GETPW_R_SIZE_MAX = 70,
        _SC_LOGIN_NAME_MAX = 71,
        _SC_TTY_NAME_MAX = 72,
        _SC_THREAD_DESTRUCTOR_ITERATIONS = 73,
        _SC_THREAD_KEYS_MAX = 74,
        _SC_THREAD_STACK_MIN = 75,
        _SC_THREAD_THREADS_MAX = 76,
        _SC_THREAD_ATTR_STACKADDR = 77,
        _SC_THREAD_ATTR_STACKSIZE = 78,
        _SC_THREAD_PRIORITY_SCHEDULING = 79,
        _SC_THREAD_PRIO_INHERIT = 80,
        _SC_THREAD_PRIO_PROTECT = 81,
        _SC_THREAD_PROCESS_SHARED = 82,
        _SC_NPROCESSORS_CONF = 83,
        _SC_NPROCESSORS_ONLN = 84,
        _SC_PHYS_PAGES = 85,
        _SC_AVPHYS_PAGES = 86,
        _SC_ATEXIT_MAX = 87,
        _SC_PASS_MAX = 88,
        _SC_XOPEN_VERSION = 89,
        _SC_XOPEN_XCU_VERSION = 90,
        _SC_XOPEN_UNIX = 91,
        _SC_XOPEN_CRYPT = 92,
        _SC_XOPEN_ENH_I18N = 93,
        _SC_XOPEN_SHM = 94,
        _SC_2_CHAR_TERM = 95,
        _SC_2_C_VERSION = 96,
        _SC_2_UPE = 97,
        _SC_XOPEN_XPG2 = 98,
        _SC_XOPEN_XPG3 = 99,
        _SC_XOPEN_XPG4 = 100,
        _SC_CHAR_BIT = 101,
        _SC_CHAR_MAX = 102,
        _SC_CHAR_MIN = 103,
        _SC_INT_MAX = 104,
        _SC_INT_MIN = 105,
        _SC_LONG_BIT = 106,
        _SC_WORD_BIT = 107,
        _SC_MB_LEN_MAX = 108,
        _SC_NZERO = 109,
        _SC_SSIZE_MAX = 110,
        _SC_SCHAR_MAX = 111,
        _SC_SCHAR_MIN = 112,
        _SC_SHRT_MAX = 113,
        _SC_SHRT_MIN = 114,
        _SC_UCHAR_MAX = 115,
        _SC_UINT_MAX = 116,
        _SC_ULONG_MAX = 117,
        _SC_USHRT_MAX = 118,
        _SC_NL_ARGMAX = 119,
        _SC_NL_LANGMAX = 120,
        _SC_NL_MSGMAX = 121,
        _SC_NL_NMAX = 122,
        _SC_NL_SETMAX = 123,
        _SC_NL_TEXTMAX = 124,
        _SC_XBS5_ILP32_OFF32 = 125,
        _SC_XBS5_ILP32_OFFBIG = 126,
        _SC_XBS5_LP64_OFF64 = 127,
        _SC_XBS5_LPBIG_OFFBIG = 128,
        _SC_XOPEN_LEGACY = 129,
        _SC_XOPEN_REALTIME = 130,
        _SC_XOPEN_REALTIME_THREADS = 131,
        _SC_ADVISORY_INFO = 132,
        _SC_BARRIERS = 133,
        _SC_BASE = 134,
        _SC_C_LANG_SUPPORT = 135,
        _SC_C_LANG_SUPPORT_R = 136,
        _SC_CLOCK_SELECTION = 137,
        _SC_CPUTIME = 138,
        _SC_THREAD_CPUTIME = 139,
        _SC_DEVICE_IO = 140,
        _SC_DEVICE_SPECIFIC = 141,
        _SC_DEVICE_SPECIFIC_R = 142,
        _SC_FD_MGMT = 143,
        _SC_FIFO = 144,
        _SC_PIPE = 145,
        _SC_FILE_ATTRIBUTES = 146,
        _SC_FILE_LOCKING = 147,
        _SC_FILE_SYSTEM = 148,
        _SC_MONOTONIC_CLOCK = 149,
        _SC_MULTI_PROCESS = 150,
        _SC_SINGLE_PROCESS = 151,
        _SC_NETWORKING = 152,
        _SC_READER_WRITER_LOCKS = 153,
        _SC_SPIN_LOCKS = 154,
        _SC_REGEXP = 155,
        _SC_REGEX_VERSION = 156,
        _SC_SHELL = 157,
        _SC_SIGNALS = 158,
        _SC_SPAWN = 159,
        _SC_SPORADIC_SERVER = 160,
        _SC_THREAD_SPORADIC_SERVER = 161,
        _SC_SYSTEM_DATABASE = 162,
        _SC_SYSTEM_DATABASE_R = 163,
        _SC_TIMEOUTS = 164,
        _SC_TYPED_MEMORY_OBJECTS = 165,
        _SC_USER_GROUPS = 166,
        _SC_USER_GROUPS_R = 167,
        _SC_2_PBS = 168,
        _SC_2_PBS_ACCOUNTING = 169,
        _SC_2_PBS_LOCATE = 170,
        _SC_2_PBS_MESSAGE = 171,
        _SC_2_PBS_TRACK = 172,
        _SC_SYMLOOP_MAX = 173,
        _SC_STREAMS = 174,
        _SC_2_PBS_CHECKPOINT = 175,
        _SC_V6_ILP32_OFF32 = 176,
        _SC_V6_ILP32_OFFBIG = 177,
        _SC_V6_LP64_OFF64 = 178,
        _SC_V6_LPBIG_OFFBIG = 179,
        _SC_HOST_NAME_MAX = 180,
        _SC_TRACE = 181,
        _SC_TRACE_EVENT_FILTER = 182,
        _SC_TRACE_INHERIT = 183,
        _SC_TRACE_LOG = 184,
        _SC_LEVEL1_ICACHE_SIZE = 185,
        _SC_LEVEL1_ICACHE_ASSOC = 186,
        _SC_LEVEL1_ICACHE_LINESIZE = 187,
        _SC_LEVEL1_DCACHE_SIZE = 188,
        _SC_LEVEL1_DCACHE_ASSOC = 189,
        _SC_LEVEL1_DCACHE_LINESIZE = 190,
        _SC_LEVEL2_CACHE_SIZE = 191,
        _SC_LEVEL2_CACHE_ASSOC = 192,
        _SC_LEVEL2_CACHE_LINESIZE = 193,
        _SC_LEVEL3_CACHE_SIZE = 194,
        _SC_LEVEL3_CACHE_ASSOC = 195,
        _SC_LEVEL3_CACHE_LINESIZE = 196,
        _SC_LEVEL4_CACHE_SIZE = 197,
        _SC_LEVEL4_CACHE_ASSOC = 198,
        _SC_LEVEL4_CACHE_LINESIZE = 199,
        _SC_IPV6 = 235,
        _SC_RAW_SOCKETS = 236,
        _SC_V7_ILP32_OFF32 = 237,
        _SC_V7_ILP32_OFFBIG = 238,
        _SC_V7_LP64_OFF64 = 239,
        _SC_V7_LPBIG_OFFBIG = 240,
        _SC_SS_REPL_MAX = 241,
        _SC_TRACE_EVENT_NAME_MAX = 242,
        _SC_TRACE_NAME_MAX = 243,
        _SC_TRACE_SYS_MAX = 244,
        _SC_TRACE_USER_EVENT_MAX = 245,
        _SC_XOPEN_STREAMS = 246,
        _SC_THREAD_ROBUST_PRIO_INHERIT = 247,
        _SC_THREAD_ROBUST_PRIO_PROTECT = 248,
    }
    union _Anonymous_120
    {
        struct___pthread_cond_s __data;
        char[48] __size;
        long __align;
    }
    union _Anonymous_121
    {
        struct___pthread_rwlock_arch_t __data;
        char[56] __size;
        c_long __align;
    }
    enum _Anonymous_122
    {
        FPE_INTDIV = 1,
        FPE_INTOVF = 2,
        FPE_FLTDIV = 3,
        FPE_FLTOVF = 4,
        FPE_FLTUND = 5,
        FPE_FLTRES = 6,
        FPE_FLTINV = 7,
        FPE_FLTSUB = 8,
    }
    union _Anonymous_123
    {
        char[8] __size;
        c_long __align;
    }
    union _Anonymous_124
    {
        char[32] __size;
        c_long __align;
    }
    enum _Anonymous_125
    {
        SEGV_MAPERR = 1,
        SEGV_ACCERR = 2,
    }
    union _Anonymous_126
    {
        char[4] __size;
        int __align;
    }
    enum _Anonymous_127
    {
        BUS_ADRALN = 1,
        BUS_ADRERR = 2,
        BUS_OBJERR = 3,
        BUS_MCEERR_AR = 4,
        BUS_MCEERR_AO = 5,
    }
    struct _Anonymous_128
    {
        gregset_t gregs;
        fpregset_t fpregs;
        ulong[8] __reserved1;
    }
    struct _Anonymous_129
    {
        int[2] __val;
    }
    enum _Anonymous_130
    {
        CLD_EXITED = 1,
        CLD_KILLED = 2,
        CLD_DUMPED = 3,
        CLD_TRAPPED = 4,
        CLD_STOPPED = 5,
        CLD_CONTINUED = 6,
    }
    enum _Anonymous_131
    {
        POLL_IN = 1,
        POLL_OUT = 2,
        POLL_MSG = 3,
        POLL_ERR = 4,
        POLL_PRI = 5,
        POLL_HUP = 6,
    }
    struct _Anonymous_132
    {
        c_long quot;
        c_long rem;
    }
    enum _Anonymous_133
    {
        _CS_PATH = 0,
        _CS_V6_WIDTH_RESTRICTED_ENVS = 1,
        _CS_GNU_LIBC_VERSION = 2,
        _CS_GNU_LIBPTHREAD_VERSION = 3,
        _CS_V5_WIDTH_RESTRICTED_ENVS = 4,
        _CS_V7_WIDTH_RESTRICTED_ENVS = 5,
        _CS_LFS_CFLAGS = 1000,
        _CS_LFS_LDFLAGS = 1001,
        _CS_LFS_LIBS = 1002,
        _CS_LFS_LINTFLAGS = 1003,
        _CS_LFS64_CFLAGS = 1004,
        _CS_LFS64_LDFLAGS = 1005,
        _CS_LFS64_LIBS = 1006,
        _CS_LFS64_LINTFLAGS = 1007,
        _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
        _CS_XBS5_ILP32_OFF32_LDFLAGS = 1101,
        _CS_XBS5_ILP32_OFF32_LIBS = 1102,
        _CS_XBS5_ILP32_OFF32_LINTFLAGS = 1103,
        _CS_XBS5_ILP32_OFFBIG_CFLAGS = 1104,
        _CS_XBS5_ILP32_OFFBIG_LDFLAGS = 1105,
        _CS_XBS5_ILP32_OFFBIG_LIBS = 1106,
        _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = 1107,
        _CS_XBS5_LP64_OFF64_CFLAGS = 1108,
        _CS_XBS5_LP64_OFF64_LDFLAGS = 1109,
        _CS_XBS5_LP64_OFF64_LIBS = 1110,
        _CS_XBS5_LP64_OFF64_LINTFLAGS = 1111,
        _CS_XBS5_LPBIG_OFFBIG_CFLAGS = 1112,
        _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = 1113,
        _CS_XBS5_LPBIG_OFFBIG_LIBS = 1114,
        _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = 1115,
        _CS_POSIX_V6_ILP32_OFF32_CFLAGS = 1116,
        _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = 1117,
        _CS_POSIX_V6_ILP32_OFF32_LIBS = 1118,
        _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS = 1119,
        _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = 1120,
        _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = 1121,
        _CS_POSIX_V6_ILP32_OFFBIG_LIBS = 1122,
        _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS = 1123,
        _CS_POSIX_V6_LP64_OFF64_CFLAGS = 1124,
        _CS_POSIX_V6_LP64_OFF64_LDFLAGS = 1125,
        _CS_POSIX_V6_LP64_OFF64_LIBS = 1126,
        _CS_POSIX_V6_LP64_OFF64_LINTFLAGS = 1127,
        _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = 1128,
        _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = 1129,
        _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = 1130,
        _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS = 1131,
        _CS_POSIX_V7_ILP32_OFF32_CFLAGS = 1132,
        _CS_POSIX_V7_ILP32_OFF32_LDFLAGS = 1133,
        _CS_POSIX_V7_ILP32_OFF32_LIBS = 1134,
        _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS = 1135,
        _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS = 1136,
        _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS = 1137,
        _CS_POSIX_V7_ILP32_OFFBIG_LIBS = 1138,
        _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS = 1139,
        _CS_POSIX_V7_LP64_OFF64_CFLAGS = 1140,
        _CS_POSIX_V7_LP64_OFF64_LDFLAGS = 1141,
        _CS_POSIX_V7_LP64_OFF64_LIBS = 1142,
        _CS_POSIX_V7_LP64_OFF64_LINTFLAGS = 1143,
        _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS = 1144,
        _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS = 1145,
        _CS_POSIX_V7_LPBIG_OFFBIG_LIBS = 1146,
        _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS = 1147,
        _CS_V6_ENV = 1148,
        _CS_V7_ENV = 1149,
    }
}

extern(C) {
    struct _Anonymous_134
    {
        c_ulong[16] __val;
    }
    union _Anonymous_135
    {
        char[4] __size;
        int __align;
    }
    union _Anonymous_136
    {
        char[4] __size;
        int __align;
    }
    struct _Anonymous_137
    {
        __fd_mask[16] __fds_bits;
    }
    union _Anonymous_138
    {
        struct___pthread_mutex_s __data;
        char[40] __size;
        c_long __align;
    }
    union _Anonymous_139
    {
        struct___pthread_cond_s __data;
        char[48] __size;
        long __align;
    }
    union _Anonymous_140
    {
        struct___pthread_rwlock_arch_t __data;
        char[56] __size;
        c_long __align;
    }
    union _Anonymous_141
    {
        char[8] __size;
        c_long __align;
    }
    union _Anonymous_142
    {
        char[32] __size;
        c_long __align;
    }
    union _Anonymous_143
    {
        char[4] __size;
        int __align;
    }
    struct _Anonymous_144
    {
        int[2] __val;
    }
}

extern(C) {


}

extern(C) {
    struct _Anonymous_145
    {
        c_ulong[16] __val;
    }


    enum _Anonymous_146
    {
        _PC_LINK_MAX = 0,
        _PC_MAX_CANON = 1,
        _PC_MAX_INPUT = 2,
        _PC_NAME_MAX = 3,
        _PC_PATH_MAX = 4,
        _PC_PIPE_BUF = 5,
        _PC_CHOWN_RESTRICTED = 6,
        _PC_NO_TRUNC = 7,
        _PC_VDISABLE = 8,
        _PC_SYNC_IO = 9,
        _PC_ASYNC_IO = 10,
        _PC_PRIO_IO = 11,
        _PC_SOCK_MAXBUF = 12,
        _PC_FILESIZEBITS = 13,
        _PC_REC_INCR_XFER_SIZE = 14,
        _PC_REC_MAX_XFER_SIZE = 15,
        _PC_REC_MIN_XFER_SIZE = 16,
        _PC_REC_XFER_ALIGN = 17,
        _PC_ALLOC_SIZE_MIN = 18,
        _PC_SYMLINK_MAX = 19,
        _PC_2_SYMLINKS = 20,
    }
    enum enum_zio_priority
    {
        ZIO_PRIORITY_SYNC_READ = 0,
        ZIO_PRIORITY_SYNC_WRITE = 1,
        ZIO_PRIORITY_ASYNC_READ = 2,
        ZIO_PRIORITY_ASYNC_WRITE = 3,
        ZIO_PRIORITY_SCRUB = 4,
        ZIO_PRIORITY_NUM_QUEUEABLE = 5,
        ZIO_PRIORITY_NOW = 6,
    }
    enum
    {
        ZIO_PRIORITY_SYNC_READ = 0,
        ZIO_PRIORITY_SYNC_WRITE = 1,
        ZIO_PRIORITY_ASYNC_READ = 2,
        ZIO_PRIORITY_ASYNC_WRITE = 3,
        ZIO_PRIORITY_SCRUB = 4,
        ZIO_PRIORITY_NUM_QUEUEABLE = 5,
        ZIO_PRIORITY_NOW = 6,
    }
    alias zio_priority_t = enum_zio_priority;
    struct _Anonymous_147
    {
        void* ss_sp;
        int ss_flags;
        int ss_size;
    }
    enum _Anonymous_148
    {
        SIGEV_SIGNAL = 0,
        SIGEV_NONE = 1,
        SIGEV_THREAD = 2,
        SIGEV_THREAD_ID = 4,
    }
    enum _Anonymous_149
    {
        SS_ONSTACK = 1,
        SS_DISABLE = 2,
    }
    union _Anonymous_150
    {
        char[4] __size;
        int __align;
    }


    enum _Anonymous_151
    {
        SI_ASYNCNL = -60,
        SI_TKILL = -6,
        SI_SIGIO = -5,
        SI_ASYNCIO = -4,
        SI_MESGQ = -3,
        SI_TIMER = -2,
        SI_QUEUE = -1,
        SI_USER = 0,
        SI_KERNEL = 128,
    }
    struct _Anonymous_152
    {
        int si_signo;
        int si_errno;
        int si_code;
        int __pad0;
        union _Anonymous_153
        {
            int[28] _pad;
            struct _Anonymous_154
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
            }
            _Anonymous_154 _kill;
            struct _Anonymous_155
            {
                int si_tid;
                int si_overrun; // _sifields._timer.si_overrun;
                sigval_t si_sigval;
            }
            _Anonymous_155 _timer;
            struct _Anonymous_156
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
                sigval_t si_sigval;
            }
            _Anonymous_156 _rt;
            struct _Anonymous_157
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
                int si_status; // _sifields._sigchld.si_status;
                __clock_t si_utime; // _sifields._sigchld.si_utime;
                __clock_t si_stime; // _sifields._sigchld.si_stime;
            }
            _Anonymous_157 _sigchld;
            struct _Anonymous_158
            {
                void* si_addr; // _sifields._sigfault.si_addr;
                short si_addr_ldb; // _sifields._sigfault.si_addr_lsb;
                union _Anonymous_159
                {
                    struct _Anonymous_160
                    {
                        void* _lower;
                        void* _upper;
                    }
                    _Anonymous_160 _addr_bnd;
                    __uint32_t _pkey;
                }
                _Anonymous_159 _bounds;
            }
            _Anonymous_158 _sigfault;
            struct _Anonymous_161
            {
                c_long si_band; // _sifields._sigpoll.si_band;
                int si_fd; // _sifields._sigpoll.si_fd;
            }
            _Anonymous_161 _sigpoll;
            struct _Anonymous_162
            {
                void* _call_addr;
                int _syscall;
                uint _arch;
            }
            _Anonymous_162 _sigsys;
        }
        _Anonymous_153 _sifields;
    }
    union _Anonymous_163
    {
        char[4] __size;
        int __align;
    }
    enum _Anonymous_164
    {
        ZFS_TYPE_FILESYSTEM = 1,
        ZFS_TYPE_SNAPSHOT = 2,
        ZFS_TYPE_VOLUME = 4,
        ZFS_TYPE_POOL = 8,
        ZFS_TYPE_BOOKMARK = 16,
    }
    enum
    {
        ZFS_TYPE_FILESYSTEM = 1,
        ZFS_TYPE_SNAPSHOT = 2,
        ZFS_TYPE_VOLUME = 4,
        ZFS_TYPE_POOL = 8,
        ZFS_TYPE_BOOKMARK = 16,
    }
    alias zfs_type_t = _Anonymous_164;
    struct _Anonymous_165
    {
        __fd_mask[16] __fds_bits;
    }
    enum enum_dmu_objset_type
    {
        DMU_OST_NONE = 0,
        DMU_OST_META = 1,
        DMU_OST_ZFS = 2,
        DMU_OST_ZVOL = 3,
        DMU_OST_OTHER = 4,
        DMU_OST_ANY = 5,
        DMU_OST_NUMTYPES = 6,
    }
    enum
    {
        DMU_OST_NONE = 0,
        DMU_OST_META = 1,
        DMU_OST_ZFS = 2,
        DMU_OST_ZVOL = 3,
        DMU_OST_OTHER = 4,
        DMU_OST_ANY = 5,
        DMU_OST_NUMTYPES = 6,
    }
    alias dmu_objset_type_t = enum_dmu_objset_type;
    union _Anonymous_166
    {
        struct___pthread_mutex_s __data;
        char[40] __size;
        c_long __align;
    }
    enum _Anonymous_167
    {
        ILL_ILLOPC = 1,
        ILL_ILLOPN = 2,
        ILL_ILLADR = 3,
        ILL_ILLTRP = 4,
        ILL_PRVOPC = 5,
        ILL_PRVREG = 6,
        ILL_COPROC = 7,
        ILL_BADSTK = 8,
    }
    enum _Anonymous_168
    {
        _SC_ARG_MAX = 0,
        _SC_CHILD_MAX = 1,
        _SC_CLK_TCK = 2,
        _SC_NGROUPS_MAX = 3,
        _SC_OPEN_MAX = 4,
        _SC_STREAM_MAX = 5,
        _SC_TZNAME_MAX = 6,
        _SC_JOB_CONTROL = 7,
        _SC_SAVED_IDS = 8,
        _SC_REALTIME_SIGNALS = 9,
        _SC_PRIORITY_SCHEDULING = 10,
        _SC_TIMERS = 11,
        _SC_ASYNCHRONOUS_IO = 12,
        _SC_PRIORITIZED_IO = 13,
        _SC_SYNCHRONIZED_IO = 14,
        _SC_FSYNC = 15,
        _SC_MAPPED_FILES = 16,
        _SC_MEMLOCK = 17,
        _SC_MEMLOCK_RANGE = 18,
        _SC_MEMORY_PROTECTION = 19,
        _SC_MESSAGE_PASSING = 20,
        _SC_SEMAPHORES = 21,
        _SC_SHARED_MEMORY_OBJECTS = 22,
        _SC_AIO_LISTIO_MAX = 23,
        _SC_AIO_MAX = 24,
        _SC_AIO_PRIO_DELTA_MAX = 25,
        _SC_DELAYTIMER_MAX = 26,
        _SC_MQ_OPEN_MAX = 27,
        _SC_MQ_PRIO_MAX = 28,
        _SC_VERSION = 29,
        _SC_PAGESIZE = 30,
        _SC_RTSIG_MAX = 31,
        _SC_SEM_NSEMS_MAX = 32,
        _SC_SEM_VALUE_MAX = 33,
        _SC_SIGQUEUE_MAX = 34,
        _SC_TIMER_MAX = 35,
        _SC_BC_BASE_MAX = 36,
        _SC_BC_DIM_MAX = 37,
        _SC_BC_SCALE_MAX = 38,
        _SC_BC_STRING_MAX = 39,
        _SC_COLL_WEIGHTS_MAX = 40,
        _SC_EQUIV_CLASS_MAX = 41,
        _SC_EXPR_NEST_MAX = 42,
        _SC_LINE_MAX = 43,
        _SC_RE_DUP_MAX = 44,
        _SC_CHARCLASS_NAME_MAX = 45,
        _SC_2_VERSION = 46,
        _SC_2_C_BIND = 47,
        _SC_2_C_DEV = 48,
        _SC_2_FORT_DEV = 49,
        _SC_2_FORT_RUN = 50,
        _SC_2_SW_DEV = 51,
        _SC_2_LOCALEDEF = 52,
        _SC_PII = 53,
        _SC_PII_XTI = 54,
        _SC_PII_SOCKET = 55,
        _SC_PII_INTERNET = 56,
        _SC_PII_OSI = 57,
        _SC_POLL = 58,
        _SC_SELECT = 59,
        _SC_UIO_MAXIOV = 60,
        _SC_IOV_MAX = 60,
        _SC_PII_INTERNET_STREAM = 61,
        _SC_PII_INTERNET_DGRAM = 62,
        _SC_PII_OSI_COTS = 63,
        _SC_PII_OSI_CLTS = 64,
        _SC_PII_OSI_M = 65,
        _SC_T_IOV_MAX = 66,
        _SC_THREADS = 67,
        _SC_THREAD_SAFE_FUNCTIONS = 68,
        _SC_GETGR_R_SIZE_MAX = 69,
        _SC_GETPW_R_SIZE_MAX = 70,
        _SC_LOGIN_NAME_MAX = 71,
        _SC_TTY_NAME_MAX = 72,
        _SC_THREAD_DESTRUCTOR_ITERATIONS = 73,
        _SC_THREAD_KEYS_MAX = 74,
        _SC_THREAD_STACK_MIN = 75,
        _SC_THREAD_THREADS_MAX = 76,
        _SC_THREAD_ATTR_STACKADDR = 77,
        _SC_THREAD_ATTR_STACKSIZE = 78,
        _SC_THREAD_PRIORITY_SCHEDULING = 79,
        _SC_THREAD_PRIO_INHERIT = 80,
        _SC_THREAD_PRIO_PROTECT = 81,
        _SC_THREAD_PROCESS_SHARED = 82,
        _SC_NPROCESSORS_CONF = 83,
        _SC_NPROCESSORS_ONLN = 84,
        _SC_PHYS_PAGES = 85,
        _SC_AVPHYS_PAGES = 86,
        _SC_ATEXIT_MAX = 87,
        _SC_PASS_MAX = 88,
        _SC_XOPEN_VERSION = 89,
        _SC_XOPEN_XCU_VERSION = 90,
        _SC_XOPEN_UNIX = 91,
        _SC_XOPEN_CRYPT = 92,
        _SC_XOPEN_ENH_I18N = 93,
        _SC_XOPEN_SHM = 94,
        _SC_2_CHAR_TERM = 95,
        _SC_2_C_VERSION = 96,
        _SC_2_UPE = 97,
        _SC_XOPEN_XPG2 = 98,
        _SC_XOPEN_XPG3 = 99,
        _SC_XOPEN_XPG4 = 100,
        _SC_CHAR_BIT = 101,
        _SC_CHAR_MAX = 102,
        _SC_CHAR_MIN = 103,
        _SC_INT_MAX = 104,
        _SC_INT_MIN = 105,
        _SC_LONG_BIT = 106,
        _SC_WORD_BIT = 107,
        _SC_MB_LEN_MAX = 108,
        _SC_NZERO = 109,
        _SC_SSIZE_MAX = 110,
        _SC_SCHAR_MAX = 111,
        _SC_SCHAR_MIN = 112,
        _SC_SHRT_MAX = 113,
        _SC_SHRT_MIN = 114,
        _SC_UCHAR_MAX = 115,
        _SC_UINT_MAX = 116,
        _SC_ULONG_MAX = 117,
        _SC_USHRT_MAX = 118,
        _SC_NL_ARGMAX = 119,
        _SC_NL_LANGMAX = 120,
        _SC_NL_MSGMAX = 121,
        _SC_NL_NMAX = 122,
        _SC_NL_SETMAX = 123,
        _SC_NL_TEXTMAX = 124,
        _SC_XBS5_ILP32_OFF32 = 125,
        _SC_XBS5_ILP32_OFFBIG = 126,
        _SC_XBS5_LP64_OFF64 = 127,
        _SC_XBS5_LPBIG_OFFBIG = 128,
        _SC_XOPEN_LEGACY = 129,
        _SC_XOPEN_REALTIME = 130,
        _SC_XOPEN_REALTIME_THREADS = 131,
        _SC_ADVISORY_INFO = 132,
        _SC_BARRIERS = 133,
        _SC_BASE = 134,
        _SC_C_LANG_SUPPORT = 135,
        _SC_C_LANG_SUPPORT_R = 136,
        _SC_CLOCK_SELECTION = 137,
        _SC_CPUTIME = 138,
        _SC_THREAD_CPUTIME = 139,
        _SC_DEVICE_IO = 140,
        _SC_DEVICE_SPECIFIC = 141,
        _SC_DEVICE_SPECIFIC_R = 142,
        _SC_FD_MGMT = 143,
        _SC_FIFO = 144,
        _SC_PIPE = 145,
        _SC_FILE_ATTRIBUTES = 146,
        _SC_FILE_LOCKING = 147,
        _SC_FILE_SYSTEM = 148,
        _SC_MONOTONIC_CLOCK = 149,
        _SC_MULTI_PROCESS = 150,
        _SC_SINGLE_PROCESS = 151,
        _SC_NETWORKING = 152,
        _SC_READER_WRITER_LOCKS = 153,
        _SC_SPIN_LOCKS = 154,
        _SC_REGEXP = 155,
        _SC_REGEX_VERSION = 156,
        _SC_SHELL = 157,
        _SC_SIGNALS = 158,
        _SC_SPAWN = 159,
        _SC_SPORADIC_SERVER = 160,
        _SC_THREAD_SPORADIC_SERVER = 161,
        _SC_SYSTEM_DATABASE = 162,
        _SC_SYSTEM_DATABASE_R = 163,
        _SC_TIMEOUTS = 164,
        _SC_TYPED_MEMORY_OBJECTS = 165,
        _SC_USER_GROUPS = 166,
        _SC_USER_GROUPS_R = 167,
        _SC_2_PBS = 168,
        _SC_2_PBS_ACCOUNTING = 169,
        _SC_2_PBS_LOCATE = 170,
        _SC_2_PBS_MESSAGE = 171,
        _SC_2_PBS_TRACK = 172,
        _SC_SYMLOOP_MAX = 173,
        _SC_STREAMS = 174,
        _SC_2_PBS_CHECKPOINT = 175,
        _SC_V6_ILP32_OFF32 = 176,
        _SC_V6_ILP32_OFFBIG = 177,
        _SC_V6_LP64_OFF64 = 178,
        _SC_V6_LPBIG_OFFBIG = 179,
        _SC_HOST_NAME_MAX = 180,
        _SC_TRACE = 181,
        _SC_TRACE_EVENT_FILTER = 182,
        _SC_TRACE_INHERIT = 183,
        _SC_TRACE_LOG = 184,
        _SC_LEVEL1_ICACHE_SIZE = 185,
        _SC_LEVEL1_ICACHE_ASSOC = 186,
        _SC_LEVEL1_ICACHE_LINESIZE = 187,
        _SC_LEVEL1_DCACHE_SIZE = 188,
        _SC_LEVEL1_DCACHE_ASSOC = 189,
        _SC_LEVEL1_DCACHE_LINESIZE = 190,
        _SC_LEVEL2_CACHE_SIZE = 191,
        _SC_LEVEL2_CACHE_ASSOC = 192,
        _SC_LEVEL2_CACHE_LINESIZE = 193,
        _SC_LEVEL3_CACHE_SIZE = 194,
        _SC_LEVEL3_CACHE_ASSOC = 195,
        _SC_LEVEL3_CACHE_LINESIZE = 196,
        _SC_LEVEL4_CACHE_SIZE = 197,
        _SC_LEVEL4_CACHE_ASSOC = 198,
        _SC_LEVEL4_CACHE_LINESIZE = 199,
        _SC_IPV6 = 235,
        _SC_RAW_SOCKETS = 236,
        _SC_V7_ILP32_OFF32 = 237,
        _SC_V7_ILP32_OFFBIG = 238,
        _SC_V7_LP64_OFF64 = 239,
        _SC_V7_LPBIG_OFFBIG = 240,
        _SC_SS_REPL_MAX = 241,
        _SC_TRACE_EVENT_NAME_MAX = 242,
        _SC_TRACE_NAME_MAX = 243,
        _SC_TRACE_SYS_MAX = 244,
        _SC_TRACE_USER_EVENT_MAX = 245,
        _SC_XOPEN_STREAMS = 246,
        _SC_THREAD_ROBUST_PRIO_INHERIT = 247,
        _SC_THREAD_ROBUST_PRIO_PROTECT = 248,
    }



    union _Anonymous_169
    {
        struct___pthread_cond_s __data;
        char[48] __size;
        long __align;
    }
    union _Anonymous_170
    {
        struct___pthread_rwlock_arch_t __data;
        char[56] __size;
        c_long __align;
    }
    enum _Anonymous_171
    {
        FPE_INTDIV = 1,
        FPE_INTOVF = 2,
        FPE_FLTDIV = 3,
        FPE_FLTOVF = 4,
        FPE_FLTUND = 5,
        FPE_FLTRES = 6,
        FPE_FLTINV = 7,
        FPE_FLTSUB = 8,
    }
    enum _Anonymous_172
    {
        ZFS_PROP_BAD = -1,
        ZFS_PROP_TYPE = 0,
        ZFS_PROP_CREATION = 1,
        ZFS_PROP_USED = 2,
        ZFS_PROP_AVAILABLE = 3,
        ZFS_PROP_REFERENCED = 4,
        ZFS_PROP_COMPRESSRATIO = 5,
        ZFS_PROP_MOUNTED = 6,
        ZFS_PROP_ORIGIN = 7,
        ZFS_PROP_QUOTA = 8,
        ZFS_PROP_RESERVATION = 9,
        ZFS_PROP_VOLSIZE = 10,
        ZFS_PROP_VOLBLOCKSIZE = 11,
        ZFS_PROP_RECORDSIZE = 12,
        ZFS_PROP_MOUNTPOINT = 13,
        ZFS_PROP_SHARENFS = 14,
        ZFS_PROP_CHECKSUM = 15,
        ZFS_PROP_COMPRESSION = 16,
        ZFS_PROP_ATIME = 17,
        ZFS_PROP_DEVICES = 18,
        ZFS_PROP_EXEC = 19,
        ZFS_PROP_SETUID = 20,
        ZFS_PROP_READONLY = 21,
        ZFS_PROP_ZONED = 22,
        ZFS_PROP_SNAPDIR = 23,
        ZFS_PROP_PRIVATE = 24,
        ZFS_PROP_ACLINHERIT = 25,
        ZFS_PROP_CREATETXG = 26,
        ZFS_PROP_NAME = 27,
        ZFS_PROP_CANMOUNT = 28,
        ZFS_PROP_ISCSIOPTIONS = 29,
        ZFS_PROP_XATTR = 30,
        ZFS_PROP_NUMCLONES = 31,
        ZFS_PROP_COPIES = 32,
        ZFS_PROP_VERSION = 33,
        ZFS_PROP_UTF8ONLY = 34,
        ZFS_PROP_NORMALIZE = 35,
        ZFS_PROP_CASE = 36,
        ZFS_PROP_VSCAN = 37,
        ZFS_PROP_NBMAND = 38,
        ZFS_PROP_SHARESMB = 39,
        ZFS_PROP_REFQUOTA = 40,
        ZFS_PROP_REFRESERVATION = 41,
        ZFS_PROP_GUID = 42,
        ZFS_PROP_PRIMARYCACHE = 43,
        ZFS_PROP_SECONDARYCACHE = 44,
        ZFS_PROP_USEDSNAP = 45,
        ZFS_PROP_USEDDS = 46,
        ZFS_PROP_USEDCHILD = 47,
        ZFS_PROP_USEDREFRESERV = 48,
        ZFS_PROP_USERACCOUNTING = 49,
        ZFS_PROP_STMF_SHAREINFO = 50,
        ZFS_PROP_DEFER_DESTROY = 51,
        ZFS_PROP_USERREFS = 52,
        ZFS_PROP_LOGBIAS = 53,
        ZFS_PROP_UNIQUE = 54,
        ZFS_PROP_OBJSETID = 55,
        ZFS_PROP_DEDUP = 56,
        ZFS_PROP_MLSLABEL = 57,
        ZFS_PROP_SYNC = 58,
        ZFS_PROP_DNODESIZE = 59,
        ZFS_PROP_REFRATIO = 60,
        ZFS_PROP_WRITTEN = 61,
        ZFS_PROP_CLONES = 62,
        ZFS_PROP_LOGICALUSED = 63,
        ZFS_PROP_LOGICALREFERENCED = 64,
        ZFS_PROP_INCONSISTENT = 65,
        ZFS_PROP_VOLMODE = 66,
        ZFS_PROP_FILESYSTEM_LIMIT = 67,
        ZFS_PROP_SNAPSHOT_LIMIT = 68,
        ZFS_PROP_FILESYSTEM_COUNT = 69,
        ZFS_PROP_SNAPSHOT_COUNT = 70,
        ZFS_PROP_SNAPDEV = 71,
        ZFS_PROP_ACLTYPE = 72,
        ZFS_PROP_SELINUX_CONTEXT = 73,
        ZFS_PROP_SELINUX_FSCONTEXT = 74,
        ZFS_PROP_SELINUX_DEFCONTEXT = 75,
        ZFS_PROP_SELINUX_ROOTCONTEXT = 76,
        ZFS_PROP_RELATIME = 77,
        ZFS_PROP_REDUNDANT_METADATA = 78,
        ZFS_PROP_OVERLAY = 79,
        ZFS_PROP_PREV_SNAP = 80,
        ZFS_PROP_RECEIVE_RESUME_TOKEN = 81,
        ZFS_PROP_ENCRYPTION = 82,
        ZFS_PROP_KEYLOCATION = 83,
        ZFS_PROP_KEYFORMAT = 84,
        ZFS_PROP_PBKDF2_SALT = 85,
        ZFS_PROP_PBKDF2_ITERS = 86,
        ZFS_PROP_ENCRYPTION_ROOT = 87,
        ZFS_PROP_KEY_GUID = 88,
        ZFS_PROP_KEYSTATUS = 89,
        ZFS_NUM_PROPS = 90,
    }
    enum
    {
        ZFS_PROP_BAD = -1,
        ZFS_PROP_TYPE = 0,
        ZFS_PROP_CREATION = 1,
        ZFS_PROP_USED = 2,
        ZFS_PROP_AVAILABLE = 3,
        ZFS_PROP_REFERENCED = 4,
        ZFS_PROP_COMPRESSRATIO = 5,
        ZFS_PROP_MOUNTED = 6,
        ZFS_PROP_ORIGIN = 7,
        ZFS_PROP_QUOTA = 8,
        ZFS_PROP_RESERVATION = 9,
        ZFS_PROP_VOLSIZE = 10,
        ZFS_PROP_VOLBLOCKSIZE = 11,
        ZFS_PROP_RECORDSIZE = 12,
        ZFS_PROP_MOUNTPOINT = 13,
        ZFS_PROP_SHARENFS = 14,
        ZFS_PROP_CHECKSUM = 15,
        ZFS_PROP_COMPRESSION = 16,
        ZFS_PROP_ATIME = 17,
        ZFS_PROP_DEVICES = 18,
        ZFS_PROP_EXEC = 19,
        ZFS_PROP_SETUID = 20,
        ZFS_PROP_READONLY = 21,
        ZFS_PROP_ZONED = 22,
        ZFS_PROP_SNAPDIR = 23,
        ZFS_PROP_PRIVATE = 24,
        ZFS_PROP_ACLINHERIT = 25,
        ZFS_PROP_CREATETXG = 26,
        ZFS_PROP_NAME = 27,
        ZFS_PROP_CANMOUNT = 28,
        ZFS_PROP_ISCSIOPTIONS = 29,
        ZFS_PROP_XATTR = 30,
        ZFS_PROP_NUMCLONES = 31,
        ZFS_PROP_COPIES = 32,
        ZFS_PROP_VERSION = 33,
        ZFS_PROP_UTF8ONLY = 34,
        ZFS_PROP_NORMALIZE = 35,
        ZFS_PROP_CASE = 36,
        ZFS_PROP_VSCAN = 37,
        ZFS_PROP_NBMAND = 38,
        ZFS_PROP_SHARESMB = 39,
        ZFS_PROP_REFQUOTA = 40,
        ZFS_PROP_REFRESERVATION = 41,
        ZFS_PROP_GUID = 42,
        ZFS_PROP_PRIMARYCACHE = 43,
        ZFS_PROP_SECONDARYCACHE = 44,
        ZFS_PROP_USEDSNAP = 45,
        ZFS_PROP_USEDDS = 46,
        ZFS_PROP_USEDCHILD = 47,
        ZFS_PROP_USEDREFRESERV = 48,
        ZFS_PROP_USERACCOUNTING = 49,
        ZFS_PROP_STMF_SHAREINFO = 50,
        ZFS_PROP_DEFER_DESTROY = 51,
        ZFS_PROP_USERREFS = 52,
        ZFS_PROP_LOGBIAS = 53,
        ZFS_PROP_UNIQUE = 54,
        ZFS_PROP_OBJSETID = 55,
        ZFS_PROP_DEDUP = 56,
        ZFS_PROP_MLSLABEL = 57,
        ZFS_PROP_SYNC = 58,
        ZFS_PROP_DNODESIZE = 59,
        ZFS_PROP_REFRATIO = 60,
        ZFS_PROP_WRITTEN = 61,
        ZFS_PROP_CLONES = 62,
        ZFS_PROP_LOGICALUSED = 63,
        ZFS_PROP_LOGICALREFERENCED = 64,
        ZFS_PROP_INCONSISTENT = 65,
        ZFS_PROP_VOLMODE = 66,
        ZFS_PROP_FILESYSTEM_LIMIT = 67,
        ZFS_PROP_SNAPSHOT_LIMIT = 68,
        ZFS_PROP_FILESYSTEM_COUNT = 69,
        ZFS_PROP_SNAPSHOT_COUNT = 70,
        ZFS_PROP_SNAPDEV = 71,
        ZFS_PROP_ACLTYPE = 72,
        ZFS_PROP_SELINUX_CONTEXT = 73,
        ZFS_PROP_SELINUX_FSCONTEXT = 74,
        ZFS_PROP_SELINUX_DEFCONTEXT = 75,
        ZFS_PROP_SELINUX_ROOTCONTEXT = 76,
        ZFS_PROP_RELATIME = 77,
        ZFS_PROP_REDUNDANT_METADATA = 78,
        ZFS_PROP_OVERLAY = 79,
        ZFS_PROP_PREV_SNAP = 80,
        ZFS_PROP_RECEIVE_RESUME_TOKEN = 81,
        ZFS_PROP_ENCRYPTION = 82,
        ZFS_PROP_KEYLOCATION = 83,
        ZFS_PROP_KEYFORMAT = 84,
        ZFS_PROP_PBKDF2_SALT = 85,
        ZFS_PROP_PBKDF2_ITERS = 86,
        ZFS_PROP_ENCRYPTION_ROOT = 87,
        ZFS_PROP_KEY_GUID = 88,
        ZFS_PROP_KEYSTATUS = 89,
        ZFS_NUM_PROPS = 90,
    }
    alias zfs_prop_t = _Anonymous_172;
    union _Anonymous_173
    {
        char[8] __size;
        c_long __align;
    }
    union _Anonymous_174
    {
        char[32] __size;
        c_long __align;
    }
    enum _Anonymous_175
    {
        SEGV_MAPERR = 1,
        SEGV_ACCERR = 2,
    }
    union _Anonymous_176
    {
        char[4] __size;
        int __align;
    }
    enum _Anonymous_177
    {
        BUS_ADRALN = 1,
        BUS_ADRERR = 2,
        BUS_OBJERR = 3,
        BUS_MCEERR_AR = 4,
        BUS_MCEERR_AO = 5,
    }
    struct _Anonymous_178
    {
        gregset_t gregs;
        fpregset_t fpregs;
        ulong[8] __reserved1;
    }
    struct _Anonymous_179
    {
        int[2] __val;
    }
    enum _Anonymous_180
    {
        CLD_EXITED = 1,
        CLD_KILLED = 2,
        CLD_DUMPED = 3,
        CLD_TRAPPED = 4,
        CLD_STOPPED = 5,
        CLD_CONTINUED = 6,
    }
    enum _Anonymous_181
    {
        POLL_IN = 1,
        POLL_OUT = 2,
        POLL_MSG = 3,
        POLL_ERR = 4,
        POLL_PRI = 5,
        POLL_HUP = 6,
    }
    enum _Anonymous_182
    {
        ZFS_PROP_USERUSED = 0,
        ZFS_PROP_USERQUOTA = 1,
        ZFS_PROP_GROUPUSED = 2,
        ZFS_PROP_GROUPQUOTA = 3,
        ZFS_PROP_USEROBJUSED = 4,
        ZFS_PROP_USEROBJQUOTA = 5,
        ZFS_PROP_GROUPOBJUSED = 6,
        ZFS_PROP_GROUPOBJQUOTA = 7,
        ZFS_NUM_USERQUOTA_PROPS = 8,
    }
    enum
    {
        ZFS_PROP_USERUSED = 0,
        ZFS_PROP_USERQUOTA = 1,
        ZFS_PROP_GROUPUSED = 2,
        ZFS_PROP_GROUPQUOTA = 3,
        ZFS_PROP_USEROBJUSED = 4,
        ZFS_PROP_USEROBJQUOTA = 5,
        ZFS_PROP_GROUPOBJUSED = 6,
        ZFS_PROP_GROUPOBJQUOTA = 7,
        ZFS_NUM_USERQUOTA_PROPS = 8,
    }
    alias zfs_userquota_prop_t = _Anonymous_182;
    extern __gshared const(char)*[8] zfs_userquota_prop_prefixes;
    alias zpool_prop_t = _Anonymous_183;
    enum _Anonymous_183
    {
        ZPOOL_PROP_NAME = 0,
        ZPOOL_PROP_SIZE = 1,
        ZPOOL_PROP_CAPACITY = 2,
        ZPOOL_PROP_ALTROOT = 3,
        ZPOOL_PROP_HEALTH = 4,
        ZPOOL_PROP_GUID = 5,
        ZPOOL_PROP_VERSION = 6,
        ZPOOL_PROP_BOOTFS = 7,
        ZPOOL_PROP_DELEGATION = 8,
        ZPOOL_PROP_AUTOREPLACE = 9,
        ZPOOL_PROP_CACHEFILE = 10,
        ZPOOL_PROP_FAILUREMODE = 11,
        ZPOOL_PROP_LISTSNAPS = 12,
        ZPOOL_PROP_AUTOEXPAND = 13,
        ZPOOL_PROP_DEDUPDITTO = 14,
        ZPOOL_PROP_DEDUPRATIO = 15,
        ZPOOL_PROP_FREE = 16,
        ZPOOL_PROP_ALLOCATED = 17,
        ZPOOL_PROP_READONLY = 18,
        ZPOOL_PROP_ASHIFT = 19,
        ZPOOL_PROP_COMMENT = 20,
        ZPOOL_PROP_EXPANDSZ = 21,
        ZPOOL_PROP_FREEING = 22,
        ZPOOL_PROP_FRAGMENTATION = 23,
        ZPOOL_PROP_LEAKED = 24,
        ZPOOL_PROP_MAXBLOCKSIZE = 25,
        ZPOOL_PROP_TNAME = 26,
        ZPOOL_PROP_MAXDNODESIZE = 27,
        ZPOOL_PROP_MULTIHOST = 28,
        ZPOOL_NUM_PROPS = 29,
    }
    enum
    {
        ZPOOL_PROP_NAME = 0,
        ZPOOL_PROP_SIZE = 1,
        ZPOOL_PROP_CAPACITY = 2,
        ZPOOL_PROP_ALTROOT = 3,
        ZPOOL_PROP_HEALTH = 4,
        ZPOOL_PROP_GUID = 5,
        ZPOOL_PROP_VERSION = 6,
        ZPOOL_PROP_BOOTFS = 7,
        ZPOOL_PROP_DELEGATION = 8,
        ZPOOL_PROP_AUTOREPLACE = 9,
        ZPOOL_PROP_CACHEFILE = 10,
        ZPOOL_PROP_FAILUREMODE = 11,
        ZPOOL_PROP_LISTSNAPS = 12,
        ZPOOL_PROP_AUTOEXPAND = 13,
        ZPOOL_PROP_DEDUPDITTO = 14,
        ZPOOL_PROP_DEDUPRATIO = 15,
        ZPOOL_PROP_FREE = 16,
        ZPOOL_PROP_ALLOCATED = 17,
        ZPOOL_PROP_READONLY = 18,
        ZPOOL_PROP_ASHIFT = 19,
        ZPOOL_PROP_COMMENT = 20,
        ZPOOL_PROP_EXPANDSZ = 21,
        ZPOOL_PROP_FREEING = 22,
        ZPOOL_PROP_FRAGMENTATION = 23,
        ZPOOL_PROP_LEAKED = 24,
        ZPOOL_PROP_MAXBLOCKSIZE = 25,
        ZPOOL_PROP_TNAME = 26,
        ZPOOL_PROP_MAXDNODESIZE = 27,
        ZPOOL_PROP_MULTIHOST = 28,
        ZPOOL_NUM_PROPS = 29,
    }
    alias zprop_source_t = _Anonymous_184;
    enum _Anonymous_184
    {
        ZPROP_SRC_NONE = 1,
        ZPROP_SRC_DEFAULT = 2,
        ZPROP_SRC_TEMPORARY = 4,
        ZPROP_SRC_LOCAL = 8,
        ZPROP_SRC_INHERITED = 16,
        ZPROP_SRC_RECEIVED = 32,
    }
    enum
    {
        ZPROP_SRC_NONE = 1,
        ZPROP_SRC_DEFAULT = 2,
        ZPROP_SRC_TEMPORARY = 4,
        ZPROP_SRC_LOCAL = 8,
        ZPROP_SRC_INHERITED = 16,
        ZPROP_SRC_RECEIVED = 32,
    }
    enum _Anonymous_185
    {
        ZPROP_ERR_NOCLEAR = 1,
        ZPROP_ERR_NORESTORE = 2,
    }
    enum
    {
        ZPROP_ERR_NOCLEAR = 1,
        ZPROP_ERR_NORESTORE = 2,
    }
    alias zprop_errflags_t = _Anonymous_185;
    struct _Anonymous_186
    {
        c_long quot;
        c_long rem;
    }
    alias zprop_func = int function(int, void*);


    const(char)* zfs_prop_default_string(zfs_prop_t, );
    uint64_t zfs_prop_default_numeric(zfs_prop_t, );
    boolean_t zfs_prop_readonly(zfs_prop_t, );
    boolean_t zfs_prop_inheritable(zfs_prop_t, );
    boolean_t zfs_prop_setonce(zfs_prop_t, );
    boolean_t zfs_prop_encryption_key_param(zfs_prop_t, );
    boolean_t zfs_prop_valid_keylocation(const(char)*, boolean_t, );
    const(char)* zfs_prop_to_name(zfs_prop_t, );
    zfs_prop_t zfs_name_to_prop(const(char)*, );
    boolean_t zfs_prop_user(const(char)*, );
    boolean_t zfs_prop_userquota(const(char)*, );
    boolean_t zfs_prop_written(const(char)*, );
    int zfs_prop_index_to_string(zfs_prop_t, uint64_t, const(char)**, );
    int zfs_prop_string_to_index(zfs_prop_t, const(char)*, uint64_t*, );
    uint64_t zfs_prop_random_value(zfs_prop_t, uint64_t, );
    boolean_t zfs_prop_valid_for_type(int, zfs_type_t, boolean_t, );
    zpool_prop_t zpool_name_to_prop(const(char)*, );
    const(char)* zpool_prop_to_name(zpool_prop_t, );
    const(char)* zpool_prop_default_string(zpool_prop_t, );
    uint64_t zpool_prop_default_numeric(zpool_prop_t, );
    boolean_t zpool_prop_readonly(zpool_prop_t, );
    boolean_t zpool_prop_feature(const(char)*, );
    boolean_t zpool_prop_unsupported(const(char)*, );
    int zpool_prop_index_to_string(zpool_prop_t, uint64_t, const(char)**, );
    int zpool_prop_string_to_index(zpool_prop_t, const(char)*, uint64_t*, );
    uint64_t zpool_prop_random_value(zpool_prop_t, uint64_t, );
    alias zfs_deleg_who_type_t = _Anonymous_187;
    enum _Anonymous_187
    {
        ZFS_DELEG_WHO_UNKNOWN = 0,
        ZFS_DELEG_USER = 117,
        ZFS_DELEG_USER_SETS = 85,
        ZFS_DELEG_GROUP = 103,
        ZFS_DELEG_GROUP_SETS = 71,
        ZFS_DELEG_EVERYONE = 101,
        ZFS_DELEG_EVERYONE_SETS = 69,
        ZFS_DELEG_CREATE = 99,
        ZFS_DELEG_CREATE_SETS = 67,
        ZFS_DELEG_NAMED_SET = 115,
        ZFS_DELEG_NAMED_SET_SETS = 83,
    }
    enum
    {
        ZFS_DELEG_WHO_UNKNOWN = 0,
        ZFS_DELEG_USER = 117,
        ZFS_DELEG_USER_SETS = 85,
        ZFS_DELEG_GROUP = 103,
        ZFS_DELEG_GROUP_SETS = 71,
        ZFS_DELEG_EVERYONE = 101,
        ZFS_DELEG_EVERYONE_SETS = 69,
        ZFS_DELEG_CREATE = 99,
        ZFS_DELEG_CREATE_SETS = 67,
        ZFS_DELEG_NAMED_SET = 115,
        ZFS_DELEG_NAMED_SET_SETS = 83,
    }
    enum _Anonymous_188
    {
        ZFS_DELEG_NONE = 0,
        ZFS_DELEG_PERM_LOCAL = 1,
        ZFS_DELEG_PERM_DESCENDENT = 2,
        ZFS_DELEG_PERM_LOCALDESCENDENT = 3,
        ZFS_DELEG_PERM_CREATE = 4,
    }
    enum
    {
        ZFS_DELEG_NONE = 0,
        ZFS_DELEG_PERM_LOCAL = 1,
        ZFS_DELEG_PERM_DESCENDENT = 2,
        ZFS_DELEG_PERM_LOCALDESCENDENT = 3,
        ZFS_DELEG_PERM_CREATE = 4,
    }
    alias zfs_deleg_inherit_t = _Anonymous_188;
    enum _Anonymous_189
    {
        ZFS_CANMOUNT_OFF = 0,
        ZFS_CANMOUNT_ON = 1,
        ZFS_CANMOUNT_NOAUTO = 2,
    }
    enum
    {
        ZFS_CANMOUNT_OFF = 0,
        ZFS_CANMOUNT_ON = 1,
        ZFS_CANMOUNT_NOAUTO = 2,
    }
    alias zfs_canmount_type_t = _Anonymous_189;
    alias zfs_logbias_op_t = _Anonymous_190;
    enum _Anonymous_190
    {
        ZFS_LOGBIAS_LATENCY = 0,
        ZFS_LOGBIAS_THROUGHPUT = 1,
    }
    enum
    {
        ZFS_LOGBIAS_LATENCY = 0,
        ZFS_LOGBIAS_THROUGHPUT = 1,
    }
    enum enum_zfs_share_op
    {
        ZFS_SHARE_NFS = 0,
        ZFS_UNSHARE_NFS = 1,
        ZFS_SHARE_SMB = 2,
        ZFS_UNSHARE_SMB = 3,
    }
    enum
    {
        ZFS_SHARE_NFS = 0,
        ZFS_UNSHARE_NFS = 1,
        ZFS_SHARE_SMB = 2,
        ZFS_UNSHARE_SMB = 3,
    }
    alias zfs_share_op_t = enum_zfs_share_op;
    enum enum_zfs_smb_acl_op
    {
        ZFS_SMB_ACL_ADD = 0,
        ZFS_SMB_ACL_REMOVE = 1,
        ZFS_SMB_ACL_RENAME = 2,
        ZFS_SMB_ACL_PURGE = 3,
    }
    enum
    {
        ZFS_SMB_ACL_ADD = 0,
        ZFS_SMB_ACL_REMOVE = 1,
        ZFS_SMB_ACL_RENAME = 2,
        ZFS_SMB_ACL_PURGE = 3,
    }
    alias zfs_smb_acl_op_t = enum_zfs_smb_acl_op;
    enum enum_zfs_cache_type
    {
        ZFS_CACHE_NONE = 0,
        ZFS_CACHE_METADATA = 1,
        ZFS_CACHE_ALL = 2,
    }
    enum
    {
        ZFS_CACHE_NONE = 0,
        ZFS_CACHE_METADATA = 1,
        ZFS_CACHE_ALL = 2,
    }
    alias zfs_cache_type_t = enum_zfs_cache_type;
    enum _Anonymous_191
    {
        ZFS_SYNC_STANDARD = 0,
        ZFS_SYNC_ALWAYS = 1,
        ZFS_SYNC_DISABLED = 2,
    }
    enum
    {
        ZFS_SYNC_STANDARD = 0,
        ZFS_SYNC_ALWAYS = 1,
        ZFS_SYNC_DISABLED = 2,
    }
    alias zfs_sync_type_t = _Anonymous_191;
    alias zfs_xattr_type_t = _Anonymous_192;
    enum _Anonymous_192
    {
        ZFS_XATTR_OFF = 0,
        ZFS_XATTR_DIR = 1,
        ZFS_XATTR_SA = 2,
    }
    enum
    {
        ZFS_XATTR_OFF = 0,
        ZFS_XATTR_DIR = 1,
        ZFS_XATTR_SA = 2,
    }
    alias zfs_dnsize_type_t = _Anonymous_193;
    enum _Anonymous_193
    {
        ZFS_DNSIZE_LEGACY = 0,
        ZFS_DNSIZE_AUTO = 1,
        ZFS_DNSIZE_1K = 1024,
        ZFS_DNSIZE_2K = 2048,
        ZFS_DNSIZE_4K = 4096,
        ZFS_DNSIZE_8K = 8192,
        ZFS_DNSIZE_16K = 16384,
    }
    enum
    {
        ZFS_DNSIZE_LEGACY = 0,
        ZFS_DNSIZE_AUTO = 1,
        ZFS_DNSIZE_1K = 1024,
        ZFS_DNSIZE_2K = 2048,
        ZFS_DNSIZE_4K = 4096,
        ZFS_DNSIZE_8K = 8192,
        ZFS_DNSIZE_16K = 16384,
    }
    enum _Anonymous_194
    {
        ZFS_REDUNDANT_METADATA_ALL = 0,
        ZFS_REDUNDANT_METADATA_MOST = 1,
    }
    enum
    {
        ZFS_REDUNDANT_METADATA_ALL = 0,
        ZFS_REDUNDANT_METADATA_MOST = 1,
    }
    alias zfs_redundant_metadata_type_t = _Anonymous_194;
    enum _Anonymous_195
    {
        ZFS_VOLMODE_DEFAULT = 0,
        ZFS_VOLMODE_GEOM = 1,
        ZFS_VOLMODE_DEV = 2,
        ZFS_VOLMODE_NONE = 3,
    }
    enum
    {
        ZFS_VOLMODE_DEFAULT = 0,
        ZFS_VOLMODE_GEOM = 1,
        ZFS_VOLMODE_DEV = 2,
        ZFS_VOLMODE_NONE = 3,
    }
    alias zfs_volmode_t = _Anonymous_195;
    alias zfs_keystatus_t = enum_zfs_keystatus;
    enum enum_zfs_keystatus
    {
        ZFS_KEYSTATUS_NONE = 0,
        ZFS_KEYSTATUS_UNAVAILABLE = 1,
        ZFS_KEYSTATUS_AVAILABLE = 2,
    }
    enum
    {
        ZFS_KEYSTATUS_NONE = 0,
        ZFS_KEYSTATUS_UNAVAILABLE = 1,
        ZFS_KEYSTATUS_AVAILABLE = 2,
    }
    alias zfs_keyformat_t = enum_zfs_keyformat;
    enum enum_zfs_keyformat
    {
        ZFS_KEYFORMAT_NONE = 0,
        ZFS_KEYFORMAT_RAW = 1,
        ZFS_KEYFORMAT_HEX = 2,
        ZFS_KEYFORMAT_PASSPHRASE = 3,
        ZFS_KEYFORMAT_FORMATS = 4,
    }
    enum
    {
        ZFS_KEYFORMAT_NONE = 0,
        ZFS_KEYFORMAT_RAW = 1,
        ZFS_KEYFORMAT_HEX = 2,
        ZFS_KEYFORMAT_PASSPHRASE = 3,
        ZFS_KEYFORMAT_FORMATS = 4,
    }
    enum enum_zfs_key_location
    {
        ZFS_KEYLOCATION_NONE = 0,
        ZFS_KEYLOCATION_PROMPT = 1,
        ZFS_KEYLOCATION_URI = 2,
        ZFS_KEYLOCATION_LOCATIONS = 3,
    }
    enum
    {
        ZFS_KEYLOCATION_NONE = 0,
        ZFS_KEYLOCATION_PROMPT = 1,
        ZFS_KEYLOCATION_URI = 2,
        ZFS_KEYLOCATION_LOCATIONS = 3,
    }
    alias zfs_keylocation_t = enum_zfs_key_location;
    enum _Anonymous_196
    {
        _CS_PATH = 0,
        _CS_V6_WIDTH_RESTRICTED_ENVS = 1,
        _CS_GNU_LIBC_VERSION = 2,
        _CS_GNU_LIBPTHREAD_VERSION = 3,
        _CS_V5_WIDTH_RESTRICTED_ENVS = 4,
        _CS_V7_WIDTH_RESTRICTED_ENVS = 5,
        _CS_LFS_CFLAGS = 1000,
        _CS_LFS_LDFLAGS = 1001,
        _CS_LFS_LIBS = 1002,
        _CS_LFS_LINTFLAGS = 1003,
        _CS_LFS64_CFLAGS = 1004,
        _CS_LFS64_LDFLAGS = 1005,
        _CS_LFS64_LIBS = 1006,
        _CS_LFS64_LINTFLAGS = 1007,
        _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
        _CS_XBS5_ILP32_OFF32_LDFLAGS = 1101,
        _CS_XBS5_ILP32_OFF32_LIBS = 1102,
        _CS_XBS5_ILP32_OFF32_LINTFLAGS = 1103,
        _CS_XBS5_ILP32_OFFBIG_CFLAGS = 1104,
        _CS_XBS5_ILP32_OFFBIG_LDFLAGS = 1105,
        _CS_XBS5_ILP32_OFFBIG_LIBS = 1106,
        _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = 1107,
        _CS_XBS5_LP64_OFF64_CFLAGS = 1108,
        _CS_XBS5_LP64_OFF64_LDFLAGS = 1109,
        _CS_XBS5_LP64_OFF64_LIBS = 1110,
        _CS_XBS5_LP64_OFF64_LINTFLAGS = 1111,
        _CS_XBS5_LPBIG_OFFBIG_CFLAGS = 1112,
        _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = 1113,
        _CS_XBS5_LPBIG_OFFBIG_LIBS = 1114,
        _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = 1115,
        _CS_POSIX_V6_ILP32_OFF32_CFLAGS = 1116,
        _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = 1117,
        _CS_POSIX_V6_ILP32_OFF32_LIBS = 1118,
        _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS = 1119,
        _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = 1120,
        _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = 1121,
        _CS_POSIX_V6_ILP32_OFFBIG_LIBS = 1122,
        _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS = 1123,
        _CS_POSIX_V6_LP64_OFF64_CFLAGS = 1124,
        _CS_POSIX_V6_LP64_OFF64_LDFLAGS = 1125,
        _CS_POSIX_V6_LP64_OFF64_LIBS = 1126,
        _CS_POSIX_V6_LP64_OFF64_LINTFLAGS = 1127,
        _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = 1128,
        _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = 1129,
        _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = 1130,
        _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS = 1131,
        _CS_POSIX_V7_ILP32_OFF32_CFLAGS = 1132,
        _CS_POSIX_V7_ILP32_OFF32_LDFLAGS = 1133,
        _CS_POSIX_V7_ILP32_OFF32_LIBS = 1134,
        _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS = 1135,
        _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS = 1136,
        _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS = 1137,
        _CS_POSIX_V7_ILP32_OFFBIG_LIBS = 1138,
        _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS = 1139,
        _CS_POSIX_V7_LP64_OFF64_CFLAGS = 1140,
        _CS_POSIX_V7_LP64_OFF64_LDFLAGS = 1141,
        _CS_POSIX_V7_LP64_OFF64_LIBS = 1142,
        _CS_POSIX_V7_LP64_OFF64_LINTFLAGS = 1143,
        _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS = 1144,
        _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS = 1145,
        _CS_POSIX_V7_LPBIG_OFFBIG_LIBS = 1146,
        _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS = 1147,
        _CS_V6_ENV = 1148,
        _CS_V7_ENV = 1149,
    }
    struct struct_zpool_rewind_policy
    {
        uint32_t zrp_request;
        uint64_t zrp_maxmeta;
        uint64_t zrp_maxdata;
        uint64_t zrp_txg;
    }
    alias zpool_rewind_policy_t = struct_zpool_rewind_policy;
    alias vdev_state_t = enum_vdev_state;
    enum enum_vdev_state
    {
        VDEV_STATE_UNKNOWN = 0,
        VDEV_STATE_CLOSED = 1,
        VDEV_STATE_OFFLINE = 2,
        VDEV_STATE_REMOVED = 3,
        VDEV_STATE_CANT_OPEN = 4,
        VDEV_STATE_FAULTED = 5,
        VDEV_STATE_DEGRADED = 6,
        VDEV_STATE_HEALTHY = 7,
    }
    enum
    {
        VDEV_STATE_UNKNOWN = 0,
        VDEV_STATE_CLOSED = 1,
        VDEV_STATE_OFFLINE = 2,
        VDEV_STATE_REMOVED = 3,
        VDEV_STATE_CANT_OPEN = 4,
        VDEV_STATE_FAULTED = 5,
        VDEV_STATE_DEGRADED = 6,
        VDEV_STATE_HEALTHY = 7,
    }


    alias vdev_aux_t = enum_vdev_aux;
    enum enum_vdev_aux
    {
        VDEV_AUX_NONE = 0,
        VDEV_AUX_OPEN_FAILED = 1,
        VDEV_AUX_CORRUPT_DATA = 2,
        VDEV_AUX_NO_REPLICAS = 3,
        VDEV_AUX_BAD_GUID_SUM = 4,
        VDEV_AUX_TOO_SMALL = 5,
        VDEV_AUX_BAD_LABEL = 6,
        VDEV_AUX_VERSION_NEWER = 7,
        VDEV_AUX_VERSION_OLDER = 8,
        VDEV_AUX_UNSUP_FEAT = 9,
        VDEV_AUX_SPARED = 10,
        VDEV_AUX_ERR_EXCEEDED = 11,
        VDEV_AUX_IO_FAILURE = 12,
        VDEV_AUX_BAD_LOG = 13,
        VDEV_AUX_EXTERNAL = 14,
        VDEV_AUX_SPLIT_POOL = 15,
        VDEV_AUX_BAD_ASHIFT = 16,
        VDEV_AUX_EXTERNAL_PERSIST = 17,
        VDEV_AUX_ACTIVE = 18,
    }
    enum
    {
        VDEV_AUX_NONE = 0,
        VDEV_AUX_OPEN_FAILED = 1,
        VDEV_AUX_CORRUPT_DATA = 2,
        VDEV_AUX_NO_REPLICAS = 3,
        VDEV_AUX_BAD_GUID_SUM = 4,
        VDEV_AUX_TOO_SMALL = 5,
        VDEV_AUX_BAD_LABEL = 6,
        VDEV_AUX_VERSION_NEWER = 7,
        VDEV_AUX_VERSION_OLDER = 8,
        VDEV_AUX_UNSUP_FEAT = 9,
        VDEV_AUX_SPARED = 10,
        VDEV_AUX_ERR_EXCEEDED = 11,
        VDEV_AUX_IO_FAILURE = 12,
        VDEV_AUX_BAD_LOG = 13,
        VDEV_AUX_EXTERNAL = 14,
        VDEV_AUX_SPLIT_POOL = 15,
        VDEV_AUX_BAD_ASHIFT = 16,
        VDEV_AUX_EXTERNAL_PERSIST = 17,
        VDEV_AUX_ACTIVE = 18,
    }
    alias pool_state_t = enum_pool_state;
    enum enum_pool_state
    {
        POOL_STATE_ACTIVE = 0,
        POOL_STATE_EXPORTED = 1,
        POOL_STATE_DESTROYED = 2,
        POOL_STATE_SPARE = 3,
        POOL_STATE_L2CACHE = 4,
        POOL_STATE_UNINITIALIZED = 5,
        POOL_STATE_UNAVAIL = 6,
        POOL_STATE_POTENTIALLY_ACTIVE = 7,
    }
    enum
    {
        POOL_STATE_ACTIVE = 0,
        POOL_STATE_EXPORTED = 1,
        POOL_STATE_DESTROYED = 2,
        POOL_STATE_SPARE = 3,
        POOL_STATE_L2CACHE = 4,
        POOL_STATE_UNINITIALIZED = 5,
        POOL_STATE_UNAVAIL = 6,
        POOL_STATE_POTENTIALLY_ACTIVE = 7,
    }
    alias mmp_state_t = enum_mmp_state;
    enum enum_mmp_state
    {
        MMP_STATE_ACTIVE = 0,
        MMP_STATE_INACTIVE = 1,
        MMP_STATE_NO_HOSTID = 2,
    }
    enum
    {
        MMP_STATE_ACTIVE = 0,
        MMP_STATE_INACTIVE = 1,
        MMP_STATE_NO_HOSTID = 2,
    }
    alias pool_scan_func_t = enum_pool_scan_func;
    enum enum_pool_scan_func
    {
        POOL_SCAN_NONE = 0,
        POOL_SCAN_SCRUB = 1,
        POOL_SCAN_RESILVER = 2,
        POOL_SCAN_FUNCS = 3,
    }
    enum
    {
        POOL_SCAN_NONE = 0,
        POOL_SCAN_SCRUB = 1,
        POOL_SCAN_RESILVER = 2,
        POOL_SCAN_FUNCS = 3,
    }
    alias pool_scrub_cmd_t = enum_pool_scrub_cmd;
    enum enum_pool_scrub_cmd
    {
        POOL_SCRUB_NORMAL = 0,
        POOL_SCRUB_PAUSE = 1,
        POOL_SCRUB_FLAGS_END = 2,
    }
    enum
    {
        POOL_SCRUB_NORMAL = 0,
        POOL_SCRUB_PAUSE = 1,
        POOL_SCRUB_FLAGS_END = 2,
    }
    enum enum_zio_type
    {
        ZIO_TYPE_NULL = 0,
        ZIO_TYPE_READ = 1,
        ZIO_TYPE_WRITE = 2,
        ZIO_TYPE_FREE = 3,
        ZIO_TYPE_CLAIM = 4,
        ZIO_TYPE_IOCTL = 5,
        ZIO_TYPES = 6,
    }
    enum
    {
        ZIO_TYPE_NULL = 0,
        ZIO_TYPE_READ = 1,
        ZIO_TYPE_WRITE = 2,
        ZIO_TYPE_FREE = 3,
        ZIO_TYPE_CLAIM = 4,
        ZIO_TYPE_IOCTL = 5,
        ZIO_TYPES = 6,
    }
    alias zio_type_t = enum_zio_type;
    struct struct_pool_scan_stat
    {
        uint64_t pss_func;
        uint64_t pss_state;
        uint64_t pss_start_time;
        uint64_t pss_end_time;
        uint64_t pss_to_examine;
        uint64_t pss_examined;
        uint64_t pss_to_process;
        uint64_t pss_processed;
        uint64_t pss_errors;
        uint64_t pss_pass_exam;
        uint64_t pss_pass_start;
        uint64_t pss_pass_scrub_pause;
        uint64_t pss_pass_scrub_spent_paused;
    }
    alias pool_scan_stat_t = struct_pool_scan_stat;
    alias dsl_scan_state_t = enum_dsl_scan_state;
    enum enum_dsl_scan_state
    {
        DSS_NONE = 0,
        DSS_SCANNING = 1,
        DSS_FINISHED = 2,
        DSS_CANCELED = 3,
        DSS_NUM_STATES = 4,
    }
    enum
    {
        DSS_NONE = 0,
        DSS_SCANNING = 1,
        DSS_FINISHED = 2,
        DSS_CANCELED = 3,
        DSS_NUM_STATES = 4,
    }
    enum enum_zpool_errata
    {
        ZPOOL_ERRATA_NONE = 0,
        ZPOOL_ERRATA_ZOL_2094_SCRUB = 1,
        ZPOOL_ERRATA_ZOL_2094_ASYNC_DESTROY = 2,
    }
    enum
    {
        ZPOOL_ERRATA_NONE = 0,
        ZPOOL_ERRATA_ZOL_2094_SCRUB = 1,
        ZPOOL_ERRATA_ZOL_2094_ASYNC_DESTROY = 2,
    }
    alias zpool_errata_t = enum_zpool_errata;
    struct struct_vdev_stat
    {
        hrtime_t vs_timestamp;
        uint64_t vs_state;
        uint64_t vs_aux;
        uint64_t vs_alloc;
        uint64_t vs_space;
        uint64_t vs_dspace;
        uint64_t vs_rsize;
        uint64_t vs_esize;
        uint64_t[6] vs_ops;
        uint64_t[6] vs_bytes;
        uint64_t vs_read_errors;
        uint64_t vs_write_errors;
        uint64_t vs_checksum_errors;
        uint64_t vs_self_healed;
        uint64_t vs_scan_removing;
        uint64_t vs_scan_processed;
        uint64_t vs_fragmentation;
    }
    alias vdev_stat_t = struct_vdev_stat;
    struct struct_vdev_stat_ex
    {
        uint64_t[5] vsx_active_queue;
        uint64_t[5] vsx_pend_queue;
        uint64_t[37][5] vsx_queue_histo;
        uint64_t[37][6] vsx_total_histo;
        uint64_t[37][6] vsx_disk_histo;
        uint64_t[25][5] vsx_ind_histo;
        uint64_t[25][5] vsx_agg_histo;
    }
    alias vdev_stat_ex_t = struct_vdev_stat_ex;
    struct struct_ddt_object
    {
        uint64_t ddo_count;
        uint64_t ddo_dspace;
        uint64_t ddo_mspace;
    }
    alias ddt_object_t = struct_ddt_object;
    struct struct_ddt_stat
    {
        uint64_t dds_blocks;
        uint64_t dds_lsize;
        uint64_t dds_psize;
        uint64_t dds_dsize;
        uint64_t dds_ref_blocks;
        uint64_t dds_ref_lsize;
        uint64_t dds_ref_psize;
        uint64_t dds_ref_dsize;
    }
    alias ddt_stat_t = struct_ddt_stat;
    alias ddt_histogram_t = struct_ddt_histogram;
    struct struct_ddt_histogram
    {
        ddt_stat_t[64] ddh_stat;
    }
    enum enum_zfs_ioc
    {
        ZFS_IOC_FIRST = 23040,
        ZFS_IOC = 23040,
        ZFS_IOC_POOL_CREATE = 23040,
        ZFS_IOC_POOL_DESTROY = 23041,
        ZFS_IOC_POOL_IMPORT = 23042,
        ZFS_IOC_POOL_EXPORT = 23043,
        ZFS_IOC_POOL_CONFIGS = 23044,
        ZFS_IOC_POOL_STATS = 23045,
        ZFS_IOC_POOL_TRYIMPORT = 23046,
        ZFS_IOC_POOL_SCAN = 23047,
        ZFS_IOC_POOL_FREEZE = 23048,
        ZFS_IOC_POOL_UPGRADE = 23049,
        ZFS_IOC_POOL_GET_HISTORY = 23050,
        ZFS_IOC_VDEV_ADD = 23051,
        ZFS_IOC_VDEV_REMOVE = 23052,
        ZFS_IOC_VDEV_SET_STATE = 23053,
        ZFS_IOC_VDEV_ATTACH = 23054,
        ZFS_IOC_VDEV_DETACH = 23055,
        ZFS_IOC_VDEV_SETPATH = 23056,
        ZFS_IOC_VDEV_SETFRU = 23057,
        ZFS_IOC_OBJSET_STATS = 23058,
        ZFS_IOC_OBJSET_ZPLPROPS = 23059,
        ZFS_IOC_DATASET_LIST_NEXT = 23060,
        ZFS_IOC_SNAPSHOT_LIST_NEXT = 23061,
        ZFS_IOC_SET_PROP = 23062,
        ZFS_IOC_CREATE = 23063,
        ZFS_IOC_DESTROY = 23064,
        ZFS_IOC_ROLLBACK = 23065,
        ZFS_IOC_RENAME = 23066,
        ZFS_IOC_RECV = 23067,
        ZFS_IOC_SEND = 23068,
        ZFS_IOC_INJECT_FAULT = 23069,
        ZFS_IOC_CLEAR_FAULT = 23070,
        ZFS_IOC_INJECT_LIST_NEXT = 23071,
        ZFS_IOC_ERROR_LOG = 23072,
        ZFS_IOC_CLEAR = 23073,
        ZFS_IOC_PROMOTE = 23074,
        ZFS_IOC_SNAPSHOT = 23075,
        ZFS_IOC_DSOBJ_TO_DSNAME = 23076,
        ZFS_IOC_OBJ_TO_PATH = 23077,
        ZFS_IOC_POOL_SET_PROPS = 23078,
        ZFS_IOC_POOL_GET_PROPS = 23079,
        ZFS_IOC_SET_FSACL = 23080,
        ZFS_IOC_GET_FSACL = 23081,
        ZFS_IOC_SHARE = 23082,
        ZFS_IOC_INHERIT_PROP = 23083,
        ZFS_IOC_SMB_ACL = 23084,
        ZFS_IOC_USERSPACE_ONE = 23085,
        ZFS_IOC_USERSPACE_MANY = 23086,
        ZFS_IOC_USERSPACE_UPGRADE = 23087,
        ZFS_IOC_HOLD = 23088,
        ZFS_IOC_RELEASE = 23089,
        ZFS_IOC_GET_HOLDS = 23090,
        ZFS_IOC_OBJSET_RECVD_PROPS = 23091,
        ZFS_IOC_VDEV_SPLIT = 23092,
        ZFS_IOC_NEXT_OBJ = 23093,
        ZFS_IOC_DIFF = 23094,
        ZFS_IOC_TMP_SNAPSHOT = 23095,
        ZFS_IOC_OBJ_TO_STATS = 23096,
        ZFS_IOC_SPACE_WRITTEN = 23097,
        ZFS_IOC_SPACE_SNAPS = 23098,
        ZFS_IOC_DESTROY_SNAPS = 23099,
        ZFS_IOC_POOL_REGUID = 23100,
        ZFS_IOC_POOL_REOPEN = 23101,
        ZFS_IOC_SEND_PROGRESS = 23102,
        ZFS_IOC_LOG_HISTORY = 23103,
        ZFS_IOC_SEND_NEW = 23104,
        ZFS_IOC_SEND_SPACE = 23105,
        ZFS_IOC_CLONE = 23106,
        ZFS_IOC_BOOKMARK = 23107,
        ZFS_IOC_GET_BOOKMARKS = 23108,
        ZFS_IOC_DESTROY_BOOKMARKS = 23109,
        ZFS_IOC_RECV_NEW = 23110,
        ZFS_IOC_POOL_SYNC = 23111,
        ZFS_IOC_LOAD_KEY = 23112,
        ZFS_IOC_UNLOAD_KEY = 23113,
        ZFS_IOC_CHANGE_KEY = 23114,
        ZFS_IOC_LINUX = 23168,
        ZFS_IOC_EVENTS_NEXT = 23169,
        ZFS_IOC_EVENTS_CLEAR = 23170,
        ZFS_IOC_EVENTS_SEEK = 23171,
        ZFS_IOC_FREEBSD = 23232,
        ZFS_IOC_LAST = 23233,
    }
    enum
    {
        ZFS_IOC_FIRST = 23040,
        ZFS_IOC = 23040,
        ZFS_IOC_POOL_CREATE = 23040,
        ZFS_IOC_POOL_DESTROY = 23041,
        ZFS_IOC_POOL_IMPORT = 23042,
        ZFS_IOC_POOL_EXPORT = 23043,
        ZFS_IOC_POOL_CONFIGS = 23044,
        ZFS_IOC_POOL_STATS = 23045,
        ZFS_IOC_POOL_TRYIMPORT = 23046,
        ZFS_IOC_POOL_SCAN = 23047,
        ZFS_IOC_POOL_FREEZE = 23048,
        ZFS_IOC_POOL_UPGRADE = 23049,
        ZFS_IOC_POOL_GET_HISTORY = 23050,
        ZFS_IOC_VDEV_ADD = 23051,
        ZFS_IOC_VDEV_REMOVE = 23052,
        ZFS_IOC_VDEV_SET_STATE = 23053,
        ZFS_IOC_VDEV_ATTACH = 23054,
        ZFS_IOC_VDEV_DETACH = 23055,
        ZFS_IOC_VDEV_SETPATH = 23056,
        ZFS_IOC_VDEV_SETFRU = 23057,
        ZFS_IOC_OBJSET_STATS = 23058,
        ZFS_IOC_OBJSET_ZPLPROPS = 23059,
        ZFS_IOC_DATASET_LIST_NEXT = 23060,
        ZFS_IOC_SNAPSHOT_LIST_NEXT = 23061,
        ZFS_IOC_SET_PROP = 23062,
        ZFS_IOC_CREATE = 23063,
        ZFS_IOC_DESTROY = 23064,
        ZFS_IOC_ROLLBACK = 23065,
        ZFS_IOC_RENAME = 23066,
        ZFS_IOC_RECV = 23067,
        ZFS_IOC_SEND = 23068,
        ZFS_IOC_INJECT_FAULT = 23069,
        ZFS_IOC_CLEAR_FAULT = 23070,
        ZFS_IOC_INJECT_LIST_NEXT = 23071,
        ZFS_IOC_ERROR_LOG = 23072,
        ZFS_IOC_CLEAR = 23073,
        ZFS_IOC_PROMOTE = 23074,
        ZFS_IOC_SNAPSHOT = 23075,
        ZFS_IOC_DSOBJ_TO_DSNAME = 23076,
        ZFS_IOC_OBJ_TO_PATH = 23077,
        ZFS_IOC_POOL_SET_PROPS = 23078,
        ZFS_IOC_POOL_GET_PROPS = 23079,
        ZFS_IOC_SET_FSACL = 23080,
        ZFS_IOC_GET_FSACL = 23081,
        ZFS_IOC_SHARE = 23082,
        ZFS_IOC_INHERIT_PROP = 23083,
        ZFS_IOC_SMB_ACL = 23084,
        ZFS_IOC_USERSPACE_ONE = 23085,
        ZFS_IOC_USERSPACE_MANY = 23086,
        ZFS_IOC_USERSPACE_UPGRADE = 23087,
        ZFS_IOC_HOLD = 23088,
        ZFS_IOC_RELEASE = 23089,
        ZFS_IOC_GET_HOLDS = 23090,
        ZFS_IOC_OBJSET_RECVD_PROPS = 23091,
        ZFS_IOC_VDEV_SPLIT = 23092,
        ZFS_IOC_NEXT_OBJ = 23093,
        ZFS_IOC_DIFF = 23094,
        ZFS_IOC_TMP_SNAPSHOT = 23095,
        ZFS_IOC_OBJ_TO_STATS = 23096,
        ZFS_IOC_SPACE_WRITTEN = 23097,
        ZFS_IOC_SPACE_SNAPS = 23098,
        ZFS_IOC_DESTROY_SNAPS = 23099,
        ZFS_IOC_POOL_REGUID = 23100,
        ZFS_IOC_POOL_REOPEN = 23101,
        ZFS_IOC_SEND_PROGRESS = 23102,
        ZFS_IOC_LOG_HISTORY = 23103,
        ZFS_IOC_SEND_NEW = 23104,
        ZFS_IOC_SEND_SPACE = 23105,
        ZFS_IOC_CLONE = 23106,
        ZFS_IOC_BOOKMARK = 23107,
        ZFS_IOC_GET_BOOKMARKS = 23108,
        ZFS_IOC_DESTROY_BOOKMARKS = 23109,
        ZFS_IOC_RECV_NEW = 23110,
        ZFS_IOC_POOL_SYNC = 23111,
        ZFS_IOC_LOAD_KEY = 23112,
        ZFS_IOC_UNLOAD_KEY = 23113,
        ZFS_IOC_CHANGE_KEY = 23114,
        ZFS_IOC_LINUX = 23168,
        ZFS_IOC_EVENTS_NEXT = 23169,
        ZFS_IOC_EVENTS_CLEAR = 23170,
        ZFS_IOC_EVENTS_SEEK = 23171,
        ZFS_IOC_FREEBSD = 23232,
        ZFS_IOC_LAST = 23233,
    }
    alias zfs_ioc_t = enum_zfs_ioc;


    alias spa_load_state_t = _Anonymous_197;
    enum _Anonymous_197
    {
        SPA_LOAD_NONE = 0,
        SPA_LOAD_OPEN = 1,
        SPA_LOAD_IMPORT = 2,
        SPA_LOAD_TRYIMPORT = 3,
        SPA_LOAD_RECOVER = 4,
        SPA_LOAD_ERROR = 5,
        SPA_LOAD_CREATE = 6,
    }
    enum
    {
        SPA_LOAD_NONE = 0,
        SPA_LOAD_OPEN = 1,
        SPA_LOAD_IMPORT = 2,
        SPA_LOAD_TRYIMPORT = 3,
        SPA_LOAD_RECOVER = 4,
        SPA_LOAD_ERROR = 5,
        SPA_LOAD_CREATE = 6,
    }
}

extern(C) {
    struct _Anonymous_198
    {
        c_ulong[16] __val;
    }
    enum _Anonymous_199
    {
        _PC_LINK_MAX = 0,
        _PC_MAX_CANON = 1,
        _PC_MAX_INPUT = 2,
        _PC_NAME_MAX = 3,
        _PC_PATH_MAX = 4,
        _PC_PIPE_BUF = 5,
        _PC_CHOWN_RESTRICTED = 6,
        _PC_NO_TRUNC = 7,
        _PC_VDISABLE = 8,
        _PC_SYNC_IO = 9,
        _PC_ASYNC_IO = 10,
        _PC_PRIO_IO = 11,
        _PC_SOCK_MAXBUF = 12,
        _PC_FILESIZEBITS = 13,
        _PC_REC_INCR_XFER_SIZE = 14,
        _PC_REC_MAX_XFER_SIZE = 15,
        _PC_REC_MIN_XFER_SIZE = 16,
        _PC_REC_XFER_ALIGN = 17,
        _PC_ALLOC_SIZE_MIN = 18,
        _PC_SYMLINK_MAX = 19,
        _PC_2_SYMLINKS = 20,
    }
    struct _Anonymous_200
    {
        void* ss_sp;
        int ss_flags;
        int ss_size;
    }
    enum _Anonymous_201
    {
        SS_ONSTACK = 1,
        SS_DISABLE = 2,
    }
    enum _Anonymous_202
    {
        SIGEV_SIGNAL = 0,
        SIGEV_NONE = 1,
        SIGEV_THREAD = 2,
        SIGEV_THREAD_ID = 4,
    }


    union _Anonymous_203
    {
        char[4] __size;
        int __align;
    }
    enum _Anonymous_204
    {
        SI_ASYNCNL = -60,
        SI_TKILL = -6,
        SI_SIGIO = -5,
        SI_ASYNCIO = -4,
        SI_MESGQ = -3,
        SI_TIMER = -2,
        SI_QUEUE = -1,
        SI_USER = 0,
        SI_KERNEL = 128,
    }
    struct _Anonymous_205
    {
        int si_signo;
        int si_errno;
        int si_code;
        int __pad0;
        union _Anonymous_206
        {
            int[28] _pad;
            struct _Anonymous_207
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; //_sifields._kill.si_uid;
            }
            _Anonymous_207 _kill;
            struct _Anonymous_208
            {
                int si_tid;
                int si_overrun; // _sifields._timer.si_overrun;
                sigval_t si_sigval;
            }
            _Anonymous_208 _timer;
            struct _Anonymous_209
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
                sigval_t si_sigval;
            }
            _Anonymous_209 _rt;
            struct _Anonymous_210
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
                int si_status; // _sifields._sigchld.si_status;
                __clock_t si_utime; // _sifields._sigchld.si_utime;
                __clock_t si_stime; // _sifields._sigchld.si_stime;
            }
            _Anonymous_210 _sigchld;
            struct _Anonymous_211
            {
                void* si_addr; // _sifields._sigfault.si_addr;
                short si_add_lsb; // _sifields._sigfault.si_addr_lsb;
                union _Anonymous_212
                {
                    struct _Anonymous_213
                    {
                        void* _lower;
                        void* _upper;
                    }
                    _Anonymous_213 _addr_bnd;
                    __uint32_t _pkey;
                }
                _Anonymous_212 _bounds;
            }
            _Anonymous_211 _sigfault;
            struct _Anonymous_214
            {
                c_long si_band; // _sifields._sigpoll.si_band;
                int si_fd; // _sifields._sigpoll.si_fd;
            }
            _Anonymous_214 _sigpoll;
            struct _Anonymous_215
            {
                void* _call_addr;
                int _syscall;
                uint _arch;
            }
            _Anonymous_215 _sigsys;
        }
        _Anonymous_206 _sifields;
    }
    union _Anonymous_216
    {
        char[4] __size;
        int __align;
    }
    struct _Anonymous_217
    {
        __fd_mask[16] __fds_bits;
    }
    union _Anonymous_218
    {
        struct___pthread_mutex_s __data;
        char[40] __size;
        c_long __align;
    }
    enum _Anonymous_219
    {
        ILL_ILLOPC = 1,
        ILL_ILLOPN = 2,
        ILL_ILLADR = 3,
        ILL_ILLTRP = 4,
        ILL_PRVOPC = 5,
        ILL_PRVREG = 6,
        ILL_COPROC = 7,
        ILL_BADSTK = 8,
    }
    enum _Anonymous_220
    {
        _SC_ARG_MAX = 0,
        _SC_CHILD_MAX = 1,
        _SC_CLK_TCK = 2,
        _SC_NGROUPS_MAX = 3,
        _SC_OPEN_MAX = 4,
        _SC_STREAM_MAX = 5,
        _SC_TZNAME_MAX = 6,
        _SC_JOB_CONTROL = 7,
        _SC_SAVED_IDS = 8,
        _SC_REALTIME_SIGNALS = 9,
        _SC_PRIORITY_SCHEDULING = 10,
        _SC_TIMERS = 11,
        _SC_ASYNCHRONOUS_IO = 12,
        _SC_PRIORITIZED_IO = 13,
        _SC_SYNCHRONIZED_IO = 14,
        _SC_FSYNC = 15,
        _SC_MAPPED_FILES = 16,
        _SC_MEMLOCK = 17,
        _SC_MEMLOCK_RANGE = 18,
        _SC_MEMORY_PROTECTION = 19,
        _SC_MESSAGE_PASSING = 20,
        _SC_SEMAPHORES = 21,
        _SC_SHARED_MEMORY_OBJECTS = 22,
        _SC_AIO_LISTIO_MAX = 23,
        _SC_AIO_MAX = 24,
        _SC_AIO_PRIO_DELTA_MAX = 25,
        _SC_DELAYTIMER_MAX = 26,
        _SC_MQ_OPEN_MAX = 27,
        _SC_MQ_PRIO_MAX = 28,
        _SC_VERSION = 29,
        _SC_PAGESIZE = 30,
        _SC_RTSIG_MAX = 31,
        _SC_SEM_NSEMS_MAX = 32,
        _SC_SEM_VALUE_MAX = 33,
        _SC_SIGQUEUE_MAX = 34,
        _SC_TIMER_MAX = 35,
        _SC_BC_BASE_MAX = 36,
        _SC_BC_DIM_MAX = 37,
        _SC_BC_SCALE_MAX = 38,
        _SC_BC_STRING_MAX = 39,
        _SC_COLL_WEIGHTS_MAX = 40,
        _SC_EQUIV_CLASS_MAX = 41,
        _SC_EXPR_NEST_MAX = 42,
        _SC_LINE_MAX = 43,
        _SC_RE_DUP_MAX = 44,
        _SC_CHARCLASS_NAME_MAX = 45,
        _SC_2_VERSION = 46,
        _SC_2_C_BIND = 47,
        _SC_2_C_DEV = 48,
        _SC_2_FORT_DEV = 49,
        _SC_2_FORT_RUN = 50,
        _SC_2_SW_DEV = 51,
        _SC_2_LOCALEDEF = 52,
        _SC_PII = 53,
        _SC_PII_XTI = 54,
        _SC_PII_SOCKET = 55,
        _SC_PII_INTERNET = 56,
        _SC_PII_OSI = 57,
        _SC_POLL = 58,
        _SC_SELECT = 59,
        _SC_UIO_MAXIOV = 60,
        _SC_IOV_MAX = 60,
        _SC_PII_INTERNET_STREAM = 61,
        _SC_PII_INTERNET_DGRAM = 62,
        _SC_PII_OSI_COTS = 63,
        _SC_PII_OSI_CLTS = 64,
        _SC_PII_OSI_M = 65,
        _SC_T_IOV_MAX = 66,
        _SC_THREADS = 67,
        _SC_THREAD_SAFE_FUNCTIONS = 68,
        _SC_GETGR_R_SIZE_MAX = 69,
        _SC_GETPW_R_SIZE_MAX = 70,
        _SC_LOGIN_NAME_MAX = 71,
        _SC_TTY_NAME_MAX = 72,
        _SC_THREAD_DESTRUCTOR_ITERATIONS = 73,
        _SC_THREAD_KEYS_MAX = 74,
        _SC_THREAD_STACK_MIN = 75,
        _SC_THREAD_THREADS_MAX = 76,
        _SC_THREAD_ATTR_STACKADDR = 77,
        _SC_THREAD_ATTR_STACKSIZE = 78,
        _SC_THREAD_PRIORITY_SCHEDULING = 79,
        _SC_THREAD_PRIO_INHERIT = 80,
        _SC_THREAD_PRIO_PROTECT = 81,
        _SC_THREAD_PROCESS_SHARED = 82,
        _SC_NPROCESSORS_CONF = 83,
        _SC_NPROCESSORS_ONLN = 84,
        _SC_PHYS_PAGES = 85,
        _SC_AVPHYS_PAGES = 86,
        _SC_ATEXIT_MAX = 87,
        _SC_PASS_MAX = 88,
        _SC_XOPEN_VERSION = 89,
        _SC_XOPEN_XCU_VERSION = 90,
        _SC_XOPEN_UNIX = 91,
        _SC_XOPEN_CRYPT = 92,
        _SC_XOPEN_ENH_I18N = 93,
        _SC_XOPEN_SHM = 94,
        _SC_2_CHAR_TERM = 95,
        _SC_2_C_VERSION = 96,
        _SC_2_UPE = 97,
        _SC_XOPEN_XPG2 = 98,
        _SC_XOPEN_XPG3 = 99,
        _SC_XOPEN_XPG4 = 100,
        _SC_CHAR_BIT = 101,
        _SC_CHAR_MAX = 102,
        _SC_CHAR_MIN = 103,
        _SC_INT_MAX = 104,
        _SC_INT_MIN = 105,
        _SC_LONG_BIT = 106,
        _SC_WORD_BIT = 107,
        _SC_MB_LEN_MAX = 108,
        _SC_NZERO = 109,
        _SC_SSIZE_MAX = 110,
        _SC_SCHAR_MAX = 111,
        _SC_SCHAR_MIN = 112,
        _SC_SHRT_MAX = 113,
        _SC_SHRT_MIN = 114,
        _SC_UCHAR_MAX = 115,
        _SC_UINT_MAX = 116,
        _SC_ULONG_MAX = 117,
        _SC_USHRT_MAX = 118,
        _SC_NL_ARGMAX = 119,
        _SC_NL_LANGMAX = 120,
        _SC_NL_MSGMAX = 121,
        _SC_NL_NMAX = 122,
        _SC_NL_SETMAX = 123,
        _SC_NL_TEXTMAX = 124,
        _SC_XBS5_ILP32_OFF32 = 125,
        _SC_XBS5_ILP32_OFFBIG = 126,
        _SC_XBS5_LP64_OFF64 = 127,
        _SC_XBS5_LPBIG_OFFBIG = 128,
        _SC_XOPEN_LEGACY = 129,
        _SC_XOPEN_REALTIME = 130,
        _SC_XOPEN_REALTIME_THREADS = 131,
        _SC_ADVISORY_INFO = 132,
        _SC_BARRIERS = 133,
        _SC_BASE = 134,
        _SC_C_LANG_SUPPORT = 135,
        _SC_C_LANG_SUPPORT_R = 136,
        _SC_CLOCK_SELECTION = 137,
        _SC_CPUTIME = 138,
        _SC_THREAD_CPUTIME = 139,
        _SC_DEVICE_IO = 140,
        _SC_DEVICE_SPECIFIC = 141,
        _SC_DEVICE_SPECIFIC_R = 142,
        _SC_FD_MGMT = 143,
        _SC_FIFO = 144,
        _SC_PIPE = 145,
        _SC_FILE_ATTRIBUTES = 146,
        _SC_FILE_LOCKING = 147,
        _SC_FILE_SYSTEM = 148,
        _SC_MONOTONIC_CLOCK = 149,
        _SC_MULTI_PROCESS = 150,
        _SC_SINGLE_PROCESS = 151,
        _SC_NETWORKING = 152,
        _SC_READER_WRITER_LOCKS = 153,
        _SC_SPIN_LOCKS = 154,
        _SC_REGEXP = 155,
        _SC_REGEX_VERSION = 156,
        _SC_SHELL = 157,
        _SC_SIGNALS = 158,
        _SC_SPAWN = 159,
        _SC_SPORADIC_SERVER = 160,
        _SC_THREAD_SPORADIC_SERVER = 161,
        _SC_SYSTEM_DATABASE = 162,
        _SC_SYSTEM_DATABASE_R = 163,
        _SC_TIMEOUTS = 164,
        _SC_TYPED_MEMORY_OBJECTS = 165,
        _SC_USER_GROUPS = 166,
        _SC_USER_GROUPS_R = 167,
        _SC_2_PBS = 168,
        _SC_2_PBS_ACCOUNTING = 169,
        _SC_2_PBS_LOCATE = 170,
        _SC_2_PBS_MESSAGE = 171,
        _SC_2_PBS_TRACK = 172,
        _SC_SYMLOOP_MAX = 173,
        _SC_STREAMS = 174,
        _SC_2_PBS_CHECKPOINT = 175,
        _SC_V6_ILP32_OFF32 = 176,
        _SC_V6_ILP32_OFFBIG = 177,
        _SC_V6_LP64_OFF64 = 178,
        _SC_V6_LPBIG_OFFBIG = 179,
        _SC_HOST_NAME_MAX = 180,
        _SC_TRACE = 181,
        _SC_TRACE_EVENT_FILTER = 182,
        _SC_TRACE_INHERIT = 183,
        _SC_TRACE_LOG = 184,
        _SC_LEVEL1_ICACHE_SIZE = 185,
        _SC_LEVEL1_ICACHE_ASSOC = 186,
        _SC_LEVEL1_ICACHE_LINESIZE = 187,
        _SC_LEVEL1_DCACHE_SIZE = 188,
        _SC_LEVEL1_DCACHE_ASSOC = 189,
        _SC_LEVEL1_DCACHE_LINESIZE = 190,
        _SC_LEVEL2_CACHE_SIZE = 191,
        _SC_LEVEL2_CACHE_ASSOC = 192,
        _SC_LEVEL2_CACHE_LINESIZE = 193,
        _SC_LEVEL3_CACHE_SIZE = 194,
        _SC_LEVEL3_CACHE_ASSOC = 195,
        _SC_LEVEL3_CACHE_LINESIZE = 196,
        _SC_LEVEL4_CACHE_SIZE = 197,
        _SC_LEVEL4_CACHE_ASSOC = 198,
        _SC_LEVEL4_CACHE_LINESIZE = 199,
        _SC_IPV6 = 235,
        _SC_RAW_SOCKETS = 236,
        _SC_V7_ILP32_OFF32 = 237,
        _SC_V7_ILP32_OFFBIG = 238,
        _SC_V7_LP64_OFF64 = 239,
        _SC_V7_LPBIG_OFFBIG = 240,
        _SC_SS_REPL_MAX = 241,
        _SC_TRACE_EVENT_NAME_MAX = 242,
        _SC_TRACE_NAME_MAX = 243,
        _SC_TRACE_SYS_MAX = 244,
        _SC_TRACE_USER_EVENT_MAX = 245,
        _SC_XOPEN_STREAMS = 246,
        _SC_THREAD_ROBUST_PRIO_INHERIT = 247,
        _SC_THREAD_ROBUST_PRIO_PROTECT = 248,
    }
    union _Anonymous_221
    {
        struct___pthread_cond_s __data;
        char[48] __size;
        long __align;
    }
    union _Anonymous_222
    {
        struct___pthread_rwlock_arch_t __data;
        char[56] __size;
        c_long __align;
    }
    enum _Anonymous_223
    {
        FPE_INTDIV = 1,
        FPE_INTOVF = 2,
        FPE_FLTDIV = 3,
        FPE_FLTOVF = 4,
        FPE_FLTUND = 5,
        FPE_FLTRES = 6,
        FPE_FLTINV = 7,
        FPE_FLTSUB = 8,
    }
    struct struct_avl_node
    {
        struct_avl_node*[2] avl_child;
        uintptr_t avl_pcb;
    }
    union _Anonymous_224
    {
        char[8] __size;
        c_long __align;
    }
    union _Anonymous_225
    {
        char[32] __size;
        c_long __align;
    }
    enum _Anonymous_226
    {
        SEGV_MAPERR = 1,
        SEGV_ACCERR = 2,
    }


    union _Anonymous_227
    {
        char[4] __size;
        int __align;
    }





    enum _Anonymous_228
    {
        BUS_ADRALN = 1,
        BUS_ADRERR = 2,
        BUS_OBJERR = 3,
        BUS_MCEERR_AR = 4,
        BUS_MCEERR_AO = 5,
    }
    alias avl_tree_t = struct_avl_tree;
    alias avl_node_t = struct_avl_node;




    alias avl_index_t = uintptr_t;
    struct _Anonymous_229
    {
        gregset_t gregs;
        fpregset_t fpregs;
        ulong[8] __reserved1;
    }
    struct _Anonymous_230
    {
        int[2] __val;
    }
    struct struct_avl_tree
    {
        struct_avl_node* avl_root;
        int function(const(void)*, const(void)*) avl_compar;
        int avl_offset;
        ulong_t avl_numnodes;
        int avl_size;
    }
    enum _Anonymous_231
    {
        CLD_EXITED = 1,
        CLD_KILLED = 2,
        CLD_DUMPED = 3,
        CLD_TRAPPED = 4,
        CLD_STOPPED = 5,
        CLD_CONTINUED = 6,
    }
    void* avl_walk(struct_avl_tree*, void*, int, );
    void avl_create(avl_tree_t*, int function(const(void)*, const(void)*), int, int, );
    enum _Anonymous_232
    {
        POLL_IN = 1,
        POLL_OUT = 2,
        POLL_MSG = 3,
        POLL_ERR = 4,
        POLL_PRI = 5,
        POLL_HUP = 6,
    }
    void* avl_find(avl_tree_t*, const(void)*, avl_index_t*, );
    void avl_insert(avl_tree_t*, void*, avl_index_t, );
    void avl_insert_here(avl_tree_t*, void*, void*, int, );
    void* avl_first(avl_tree_t*, );
    void* avl_last(avl_tree_t*, );




    void* avl_nearest(avl_tree_t*, avl_index_t, int, );
    void avl_add(avl_tree_t*, void*, );
    void avl_remove(avl_tree_t*, void*, );
    void avl_swap(avl_tree_t*, avl_tree_t*, );
    ulong_t avl_numnodes(avl_tree_t*, );
    struct _Anonymous_233
    {
        c_long quot;
        c_long rem;
    }
    boolean_t avl_is_empty(avl_tree_t*, );
    void* avl_destroy_nodes(avl_tree_t*, void**, );
    void avl_destroy(avl_tree_t*, );
    enum _Anonymous_234
    {
        _CS_PATH = 0,
        _CS_V6_WIDTH_RESTRICTED_ENVS = 1,
        _CS_GNU_LIBC_VERSION = 2,
        _CS_GNU_LIBPTHREAD_VERSION = 3,
        _CS_V5_WIDTH_RESTRICTED_ENVS = 4,
        _CS_V7_WIDTH_RESTRICTED_ENVS = 5,
        _CS_LFS_CFLAGS = 1000,
        _CS_LFS_LDFLAGS = 1001,
        _CS_LFS_LIBS = 1002,
        _CS_LFS_LINTFLAGS = 1003,
        _CS_LFS64_CFLAGS = 1004,
        _CS_LFS64_LDFLAGS = 1005,
        _CS_LFS64_LIBS = 1006,
        _CS_LFS64_LINTFLAGS = 1007,
        _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
        _CS_XBS5_ILP32_OFF32_LDFLAGS = 1101,
        _CS_XBS5_ILP32_OFF32_LIBS = 1102,
        _CS_XBS5_ILP32_OFF32_LINTFLAGS = 1103,
        _CS_XBS5_ILP32_OFFBIG_CFLAGS = 1104,
        _CS_XBS5_ILP32_OFFBIG_LDFLAGS = 1105,
        _CS_XBS5_ILP32_OFFBIG_LIBS = 1106,
        _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = 1107,
        _CS_XBS5_LP64_OFF64_CFLAGS = 1108,
        _CS_XBS5_LP64_OFF64_LDFLAGS = 1109,
        _CS_XBS5_LP64_OFF64_LIBS = 1110,
        _CS_XBS5_LP64_OFF64_LINTFLAGS = 1111,
        _CS_XBS5_LPBIG_OFFBIG_CFLAGS = 1112,
        _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = 1113,
        _CS_XBS5_LPBIG_OFFBIG_LIBS = 1114,
        _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = 1115,
        _CS_POSIX_V6_ILP32_OFF32_CFLAGS = 1116,
        _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = 1117,
        _CS_POSIX_V6_ILP32_OFF32_LIBS = 1118,
        _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS = 1119,
        _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = 1120,
        _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = 1121,
        _CS_POSIX_V6_ILP32_OFFBIG_LIBS = 1122,
        _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS = 1123,
        _CS_POSIX_V6_LP64_OFF64_CFLAGS = 1124,
        _CS_POSIX_V6_LP64_OFF64_LDFLAGS = 1125,
        _CS_POSIX_V6_LP64_OFF64_LIBS = 1126,
        _CS_POSIX_V6_LP64_OFF64_LINTFLAGS = 1127,
        _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = 1128,
        _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = 1129,
        _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = 1130,
        _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS = 1131,
        _CS_POSIX_V7_ILP32_OFF32_CFLAGS = 1132,
        _CS_POSIX_V7_ILP32_OFF32_LDFLAGS = 1133,
        _CS_POSIX_V7_ILP32_OFF32_LIBS = 1134,
        _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS = 1135,
        _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS = 1136,
        _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS = 1137,
        _CS_POSIX_V7_ILP32_OFFBIG_LIBS = 1138,
        _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS = 1139,
        _CS_POSIX_V7_LP64_OFF64_CFLAGS = 1140,
        _CS_POSIX_V7_LP64_OFF64_LDFLAGS = 1141,
        _CS_POSIX_V7_LP64_OFF64_LIBS = 1142,
        _CS_POSIX_V7_LP64_OFF64_LINTFLAGS = 1143,
        _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS = 1144,
        _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS = 1145,
        _CS_POSIX_V7_LPBIG_OFFBIG_LIBS = 1146,
        _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS = 1147,
        _CS_V6_ENV = 1148,
        _CS_V7_ENV = 1149,
    }
}

extern(C) {


    alias ucred_t = int;
}

extern(C) {
    struct _Anonymous_235
    {
        c_ulong[16] __val;
    }
    struct _Anonymous_236
    {
        int __count;
        union _Anonymous_237
        {
            uint __wch;
            char[4] __wchb;
        }
        _Anonymous_237 __value;
    }
    struct _Anonymous_238
    {
        __off_t __pos;
        __mbstate_t __state;
    }
    enum _Anonymous_239
    {
        _PC_LINK_MAX = 0,
        _PC_MAX_CANON = 1,
        _PC_MAX_INPUT = 2,
        _PC_NAME_MAX = 3,
        _PC_PATH_MAX = 4,
        _PC_PIPE_BUF = 5,
        _PC_CHOWN_RESTRICTED = 6,
        _PC_NO_TRUNC = 7,
        _PC_VDISABLE = 8,
        _PC_SYNC_IO = 9,
        _PC_ASYNC_IO = 10,
        _PC_PRIO_IO = 11,
        _PC_SOCK_MAXBUF = 12,
        _PC_FILESIZEBITS = 13,
        _PC_REC_INCR_XFER_SIZE = 14,
        _PC_REC_MAX_XFER_SIZE = 15,
        _PC_REC_MIN_XFER_SIZE = 16,
        _PC_REC_XFER_ALIGN = 17,
        _PC_ALLOC_SIZE_MIN = 18,
        _PC_SYMLINK_MAX = 19,
        _PC_2_SYMLINKS = 20,
    }
    struct _Anonymous_240
    {
        void* ss_sp;
        int ss_flags;
        int ss_size;
    }
    struct _Anonymous_241
    {
        __off64_t __pos;
        __mbstate_t __state;
    }
    enum _Anonymous_242
    {
        SIGEV_SIGNAL = 0,
        SIGEV_NONE = 1,
        SIGEV_THREAD = 2,
        SIGEV_THREAD_ID = 4,
    }
    enum _Anonymous_243
    {
        SS_ONSTACK = 1,
        SS_DISABLE = 2,
    }

    union _Anonymous_244
    {
        char[4] __size;
        int __align;
    }
    enum _Anonymous_245
    {
        SI_ASYNCNL = -60,
        SI_TKILL = -6,
        SI_SIGIO = -5,
        SI_ASYNCIO = -4,
        SI_MESGQ = -3,
        SI_TIMER = -2,
        SI_QUEUE = -1,
        SI_USER = 0,
        SI_KERNEL = 128,
    }
    struct _Anonymous_246
    {
        int si_signo;
        int si_errno;
        int si_code;
        int __pad0;
        union _Anonymous_247
        {
            int[28] _pad;
            struct _Anonymous_248
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
            }
            _Anonymous_248 _kill;
            struct _Anonymous_249
            {
                int si_tid;
                int si_overrun; // _sifields._timer.si_overrun;
                sigval_t si_sigval;
            }
            _Anonymous_249 _timer;
            struct _Anonymous_250
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
                sigval_t si_sigval;
            }
            _Anonymous_250 _rt;
            struct _Anonymous_251
            {
                __pid_t si_pid; // _sifields._kill.si_pid;
                __uid_t si_uid; // _sifields._kill.si_uid;
                int si_status; // _sifields._sigchld.si_status;
                __clock_t si_utime; // _sifields._sigchld.si_utime;
                __clock_t si_stime; // _sifields._sigchld.si_stime;
            }
            _Anonymous_251 _sigchld;
            struct _Anonymous_252
            {
                void* si_addr;//_sifields._sigfault.si_addr;
                short si_addr_lsb; //_sifields._sigfault.si_addr_lsb;
                union _Anonymous_253
                {
                    struct _Anonymous_254
                    {
                        void* _lower;
                        void* _upper;
                    }
                    _Anonymous_254 _addr_bnd;
                    __uint32_t _pkey;
                }
                _Anonymous_253 _bounds;
            }
            _Anonymous_252 _sigfault;
            struct _Anonymous_255
            {
                c_long si_band; // _sifields._sigpoll.si_band;
                int si_fd; // _sifields._sigpoll.si_fd;
            }
            _Anonymous_255 _sigpoll;
            struct _Anonymous_256
            {
                void* _call_addr;
                int _syscall;
                uint _arch;
            }
            _Anonymous_256 _sigsys;
        }
        _Anonymous_247 _sifields;
    }
    int libzfs_core_init();
    union _Anonymous_257
    {
        char[4] __size;
        int __align;
    }
    enum _Anonymous_258
    {
        DATA_TYPE_UNKNOWN = 0,
        DATA_TYPE_BOOLEAN = 1,
        DATA_TYPE_BYTE = 2,
        DATA_TYPE_INT16 = 3,
        DATA_TYPE_UINT16 = 4,
        DATA_TYPE_INT32 = 5,
        DATA_TYPE_UINT32 = 6,
        DATA_TYPE_INT64 = 7,
        DATA_TYPE_UINT64 = 8,
        DATA_TYPE_STRING = 9,
        DATA_TYPE_BYTE_ARRAY = 10,
        DATA_TYPE_INT16_ARRAY = 11,
        DATA_TYPE_UINT16_ARRAY = 12,
        DATA_TYPE_INT32_ARRAY = 13,
        DATA_TYPE_UINT32_ARRAY = 14,
        DATA_TYPE_INT64_ARRAY = 15,
        DATA_TYPE_UINT64_ARRAY = 16,
        DATA_TYPE_STRING_ARRAY = 17,
        DATA_TYPE_HRTIME = 18,
        DATA_TYPE_NVLIST = 19,
        DATA_TYPE_NVLIST_ARRAY = 20,
        DATA_TYPE_BOOLEAN_VALUE = 21,
        DATA_TYPE_INT8 = 22,
        DATA_TYPE_UINT8 = 23,
        DATA_TYPE_BOOLEAN_ARRAY = 24,
        DATA_TYPE_INT8_ARRAY = 25,
        DATA_TYPE_UINT8_ARRAY = 26,
        DATA_TYPE_DOUBLE = 27,
    }
    void libzfs_core_fini();
    enum enum_lzc_dataset_type
    {
        LZC_DATSET_TYPE_ZFS = 2,
        LZC_DATSET_TYPE_ZVOL = 3,
    }
    enum
    {
        LZC_DATSET_TYPE_ZFS = 2,
        LZC_DATSET_TYPE_ZVOL = 3,
    }
    enum _Anonymous_259
    {
        ZFS_TYPE_FILESYSTEM = 1,
        ZFS_TYPE_SNAPSHOT = 2,
        ZFS_TYPE_VOLUME = 4,
        ZFS_TYPE_POOL = 8,
        ZFS_TYPE_BOOKMARK = 16,
    }
    int lzc_snapshot(nvlist_t*, nvlist_t*, nvlist_t**, );
    int lzc_create(const(char)*, enum_lzc_dataset_type, nvlist_t*, uint8_t*, uint_t, );
    int lzc_clone(const(char)*, const(char)*, nvlist_t*, );
    int lzc_promote(const(char)*, char*, int, );
    int lzc_destroy_snaps(nvlist_t*, boolean_t, nvlist_t**, );
    struct _Anonymous_260
    {
        int quot;
        int rem;
    }
    int lzc_bookmark(nvlist_t*, nvlist_t**, );
    int lzc_get_bookmarks(const(char)*, nvlist_t*, nvlist_t**, );
    struct _Anonymous_261
    {
        __fd_mask[16] __fds_bits;
    }
    int lzc_destroy_bookmarks(nvlist_t*, nvlist_t**, );
    int lzc_load_key(const(char)*, boolean_t, uint8_t*, uint_t, );
    int lzc_unload_key(const(char)*, );
    int lzc_change_key(const(char)*, uint64_t, nvlist_t*, uint8_t*, uint_t, );
    int lzc_snaprange_space(const(char)*, const(char)*, uint64_t*, );
    struct _Anonymous_262
    {
        c_long quot;
        c_long rem;
    }
    int lzc_hold(nvlist_t*, int, nvlist_t**, );
    union _Anonymous_263
    {
        struct___pthread_mutex_s __data;
        char[40] __size;
        c_long __align;
    }
    int lzc_release(nvlist_t*, nvlist_t**, );
    enum _Anonymous_264
    {
        ILL_ILLOPC = 1,
        ILL_ILLOPN = 2,
        ILL_ILLADR = 3,
        ILL_ILLTRP = 4,
        ILL_PRVOPC = 5,
        ILL_PRVREG = 6,
        ILL_COPROC = 7,
        ILL_BADSTK = 8,
    }
    int lzc_get_holds(const(char)*, nvlist_t**, );
    enum _Anonymous_265
    {
        _SC_ARG_MAX = 0,
        _SC_CHILD_MAX = 1,
        _SC_CLK_TCK = 2,
        _SC_NGROUPS_MAX = 3,
        _SC_OPEN_MAX = 4,
        _SC_STREAM_MAX = 5,
        _SC_TZNAME_MAX = 6,
        _SC_JOB_CONTROL = 7,
        _SC_SAVED_IDS = 8,
        _SC_REALTIME_SIGNALS = 9,
        _SC_PRIORITY_SCHEDULING = 10,
        _SC_TIMERS = 11,
        _SC_ASYNCHRONOUS_IO = 12,
        _SC_PRIORITIZED_IO = 13,
        _SC_SYNCHRONIZED_IO = 14,
        _SC_FSYNC = 15,
        _SC_MAPPED_FILES = 16,
        _SC_MEMLOCK = 17,
        _SC_MEMLOCK_RANGE = 18,
        _SC_MEMORY_PROTECTION = 19,
        _SC_MESSAGE_PASSING = 20,
        _SC_SEMAPHORES = 21,
        _SC_SHARED_MEMORY_OBJECTS = 22,
        _SC_AIO_LISTIO_MAX = 23,
        _SC_AIO_MAX = 24,
        _SC_AIO_PRIO_DELTA_MAX = 25,
        _SC_DELAYTIMER_MAX = 26,
        _SC_MQ_OPEN_MAX = 27,
        _SC_MQ_PRIO_MAX = 28,
        _SC_VERSION = 29,
        _SC_PAGESIZE = 30,
        _SC_RTSIG_MAX = 31,
        _SC_SEM_NSEMS_MAX = 32,
        _SC_SEM_VALUE_MAX = 33,
        _SC_SIGQUEUE_MAX = 34,
        _SC_TIMER_MAX = 35,
        _SC_BC_BASE_MAX = 36,
        _SC_BC_DIM_MAX = 37,
        _SC_BC_SCALE_MAX = 38,
        _SC_BC_STRING_MAX = 39,
        _SC_COLL_WEIGHTS_MAX = 40,
        _SC_EQUIV_CLASS_MAX = 41,
        _SC_EXPR_NEST_MAX = 42,
        _SC_LINE_MAX = 43,
        _SC_RE_DUP_MAX = 44,
        _SC_CHARCLASS_NAME_MAX = 45,
        _SC_2_VERSION = 46,
        _SC_2_C_BIND = 47,
        _SC_2_C_DEV = 48,
        _SC_2_FORT_DEV = 49,
        _SC_2_FORT_RUN = 50,
        _SC_2_SW_DEV = 51,
        _SC_2_LOCALEDEF = 52,
        _SC_PII = 53,
        _SC_PII_XTI = 54,
        _SC_PII_SOCKET = 55,
        _SC_PII_INTERNET = 56,
        _SC_PII_OSI = 57,
        _SC_POLL = 58,
        _SC_SELECT = 59,
        _SC_UIO_MAXIOV = 60,
        _SC_IOV_MAX = 60,
        _SC_PII_INTERNET_STREAM = 61,
        _SC_PII_INTERNET_DGRAM = 62,
        _SC_PII_OSI_COTS = 63,
        _SC_PII_OSI_CLTS = 64,
        _SC_PII_OSI_M = 65,
        _SC_T_IOV_MAX = 66,
        _SC_THREADS = 67,
        _SC_THREAD_SAFE_FUNCTIONS = 68,
        _SC_GETGR_R_SIZE_MAX = 69,
        _SC_GETPW_R_SIZE_MAX = 70,
        _SC_LOGIN_NAME_MAX = 71,
        _SC_TTY_NAME_MAX = 72,
        _SC_THREAD_DESTRUCTOR_ITERATIONS = 73,
        _SC_THREAD_KEYS_MAX = 74,
        _SC_THREAD_STACK_MIN = 75,
        _SC_THREAD_THREADS_MAX = 76,
        _SC_THREAD_ATTR_STACKADDR = 77,
        _SC_THREAD_ATTR_STACKSIZE = 78,
        _SC_THREAD_PRIORITY_SCHEDULING = 79,
        _SC_THREAD_PRIO_INHERIT = 80,
        _SC_THREAD_PRIO_PROTECT = 81,
        _SC_THREAD_PROCESS_SHARED = 82,
        _SC_NPROCESSORS_CONF = 83,
        _SC_NPROCESSORS_ONLN = 84,
        _SC_PHYS_PAGES = 85,
        _SC_AVPHYS_PAGES = 86,
        _SC_ATEXIT_MAX = 87,
        _SC_PASS_MAX = 88,
        _SC_XOPEN_VERSION = 89,
        _SC_XOPEN_XCU_VERSION = 90,
        _SC_XOPEN_UNIX = 91,
        _SC_XOPEN_CRYPT = 92,
        _SC_XOPEN_ENH_I18N = 93,
        _SC_XOPEN_SHM = 94,
        _SC_2_CHAR_TERM = 95,
        _SC_2_C_VERSION = 96,
        _SC_2_UPE = 97,
        _SC_XOPEN_XPG2 = 98,
        _SC_XOPEN_XPG3 = 99,
        _SC_XOPEN_XPG4 = 100,
        _SC_CHAR_BIT = 101,
        _SC_CHAR_MAX = 102,
        _SC_CHAR_MIN = 103,
        _SC_INT_MAX = 104,
        _SC_INT_MIN = 105,
        _SC_LONG_BIT = 106,
        _SC_WORD_BIT = 107,
        _SC_MB_LEN_MAX = 108,
        _SC_NZERO = 109,
        _SC_SSIZE_MAX = 110,
        _SC_SCHAR_MAX = 111,
        _SC_SCHAR_MIN = 112,
        _SC_SHRT_MAX = 113,
        _SC_SHRT_MIN = 114,
        _SC_UCHAR_MAX = 115,
        _SC_UINT_MAX = 116,
        _SC_ULONG_MAX = 117,
        _SC_USHRT_MAX = 118,
        _SC_NL_ARGMAX = 119,
        _SC_NL_LANGMAX = 120,
        _SC_NL_MSGMAX = 121,
        _SC_NL_NMAX = 122,
        _SC_NL_SETMAX = 123,
        _SC_NL_TEXTMAX = 124,
        _SC_XBS5_ILP32_OFF32 = 125,
        _SC_XBS5_ILP32_OFFBIG = 126,
        _SC_XBS5_LP64_OFF64 = 127,
        _SC_XBS5_LPBIG_OFFBIG = 128,
        _SC_XOPEN_LEGACY = 129,
        _SC_XOPEN_REALTIME = 130,
        _SC_XOPEN_REALTIME_THREADS = 131,
        _SC_ADVISORY_INFO = 132,
        _SC_BARRIERS = 133,
        _SC_BASE = 134,
        _SC_C_LANG_SUPPORT = 135,
        _SC_C_LANG_SUPPORT_R = 136,
        _SC_CLOCK_SELECTION = 137,
        _SC_CPUTIME = 138,
        _SC_THREAD_CPUTIME = 139,
        _SC_DEVICE_IO = 140,
        _SC_DEVICE_SPECIFIC = 141,
        _SC_DEVICE_SPECIFIC_R = 142,
        _SC_FD_MGMT = 143,
        _SC_FIFO = 144,
        _SC_PIPE = 145,
        _SC_FILE_ATTRIBUTES = 146,
        _SC_FILE_LOCKING = 147,
        _SC_FILE_SYSTEM = 148,
        _SC_MONOTONIC_CLOCK = 149,
        _SC_MULTI_PROCESS = 150,
        _SC_SINGLE_PROCESS = 151,
        _SC_NETWORKING = 152,
        _SC_READER_WRITER_LOCKS = 153,
        _SC_SPIN_LOCKS = 154,
        _SC_REGEXP = 155,
        _SC_REGEX_VERSION = 156,
        _SC_SHELL = 157,
        _SC_SIGNALS = 158,
        _SC_SPAWN = 159,
        _SC_SPORADIC_SERVER = 160,
        _SC_THREAD_SPORADIC_SERVER = 161,
        _SC_SYSTEM_DATABASE = 162,
        _SC_SYSTEM_DATABASE_R = 163,
        _SC_TIMEOUTS = 164,
        _SC_TYPED_MEMORY_OBJECTS = 165,
        _SC_USER_GROUPS = 166,
        _SC_USER_GROUPS_R = 167,
        _SC_2_PBS = 168,
        _SC_2_PBS_ACCOUNTING = 169,
        _SC_2_PBS_LOCATE = 170,
        _SC_2_PBS_MESSAGE = 171,
        _SC_2_PBS_TRACK = 172,
        _SC_SYMLOOP_MAX = 173,
        _SC_STREAMS = 174,
        _SC_2_PBS_CHECKPOINT = 175,
        _SC_V6_ILP32_OFF32 = 176,
        _SC_V6_ILP32_OFFBIG = 177,
        _SC_V6_LP64_OFF64 = 178,
        _SC_V6_LPBIG_OFFBIG = 179,
        _SC_HOST_NAME_MAX = 180,
        _SC_TRACE = 181,
        _SC_TRACE_EVENT_FILTER = 182,
        _SC_TRACE_INHERIT = 183,
        _SC_TRACE_LOG = 184,
        _SC_LEVEL1_ICACHE_SIZE = 185,
        _SC_LEVEL1_ICACHE_ASSOC = 186,
        _SC_LEVEL1_ICACHE_LINESIZE = 187,
        _SC_LEVEL1_DCACHE_SIZE = 188,
        _SC_LEVEL1_DCACHE_ASSOC = 189,
        _SC_LEVEL1_DCACHE_LINESIZE = 190,
        _SC_LEVEL2_CACHE_SIZE = 191,
        _SC_LEVEL2_CACHE_ASSOC = 192,
        _SC_LEVEL2_CACHE_LINESIZE = 193,
        _SC_LEVEL3_CACHE_SIZE = 194,
        _SC_LEVEL3_CACHE_ASSOC = 195,
        _SC_LEVEL3_CACHE_LINESIZE = 196,
        _SC_LEVEL4_CACHE_SIZE = 197,
        _SC_LEVEL4_CACHE_ASSOC = 198,
        _SC_LEVEL4_CACHE_LINESIZE = 199,
        _SC_IPV6 = 235,
        _SC_RAW_SOCKETS = 236,
        _SC_V7_ILP32_OFF32 = 237,
        _SC_V7_ILP32_OFFBIG = 238,
        _SC_V7_LP64_OFF64 = 239,
        _SC_V7_LPBIG_OFFBIG = 240,
        _SC_SS_REPL_MAX = 241,
        _SC_TRACE_EVENT_NAME_MAX = 242,
        _SC_TRACE_NAME_MAX = 243,
        _SC_TRACE_SYS_MAX = 244,
        _SC_TRACE_USER_EVENT_MAX = 245,
        _SC_XOPEN_STREAMS = 246,
        _SC_THREAD_ROBUST_PRIO_INHERIT = 247,
        _SC_THREAD_ROBUST_PRIO_PROTECT = 248,
    }
    enum enum_lzc_send_flags
    {
        LZC_SEND_FLAG_EMBED_DATA = 1,
        LZC_SEND_FLAG_LARGE_BLOCK = 2,
        LZC_SEND_FLAG_COMPRESS = 4,
        LZC_SEND_FLAG_RAW = 8,
    }
    enum
    {
        LZC_SEND_FLAG_EMBED_DATA = 1,
        LZC_SEND_FLAG_LARGE_BLOCK = 2,
        LZC_SEND_FLAG_COMPRESS = 4,
        LZC_SEND_FLAG_RAW = 8,
    }
    union _Anonymous_266
    {
        struct___pthread_cond_s __data;
        char[48] __size;
        long __align;
    }
    struct _Anonymous_267
    {
        long quot;
        long rem;
    }
    int lzc_send(const(char)*, const(char)*, int, enum_lzc_send_flags, );
    int lzc_send_resume(const(char)*, const(char)*, int, enum_lzc_send_flags, uint64_t, uint64_t, );
    int lzc_send_space(const(char)*, const(char)*, enum_lzc_send_flags, uint64_t*, );
    struct struct_dmu_replay_record;
    int lzc_receive(const(char)*, nvlist_t*, const(char)*, boolean_t, boolean_t, int, );
    union _Anonymous_268
    {
        struct___pthread_rwlock_arch_t __data;
        char[56] __size;
        c_long __align;
    }
    int lzc_receive_resumable(const(char)*, nvlist_t*, const(char)*, boolean_t, boolean_t, int, );
    int lzc_receive_with_header(const(char)*, nvlist_t*, const(char)*, boolean_t, boolean_t, boolean_t, int, const struct_dmu_replay_record*, );
    enum _Anonymous_269
    {
        FPE_INTDIV = 1,
        FPE_INTOVF = 2,
        FPE_FLTDIV = 3,
        FPE_FLTOVF = 4,
        FPE_FLTUND = 5,
        FPE_FLTRES = 6,
        FPE_FLTINV = 7,
        FPE_FLTSUB = 8,
    }
    enum _Anonymous_270
    {
        ZFS_PROP_BAD = -1,
        ZFS_PROP_TYPE = 0,
        ZFS_PROP_CREATION = 1,
        ZFS_PROP_USED = 2,
        ZFS_PROP_AVAILABLE = 3,
        ZFS_PROP_REFERENCED = 4,
        ZFS_PROP_COMPRESSRATIO = 5,
        ZFS_PROP_MOUNTED = 6,
        ZFS_PROP_ORIGIN = 7,
        ZFS_PROP_QUOTA = 8,
        ZFS_PROP_RESERVATION = 9,
        ZFS_PROP_VOLSIZE = 10,
        ZFS_PROP_VOLBLOCKSIZE = 11,
        ZFS_PROP_RECORDSIZE = 12,
        ZFS_PROP_MOUNTPOINT = 13,
        ZFS_PROP_SHARENFS = 14,
        ZFS_PROP_CHECKSUM = 15,
        ZFS_PROP_COMPRESSION = 16,
        ZFS_PROP_ATIME = 17,
        ZFS_PROP_DEVICES = 18,
        ZFS_PROP_EXEC = 19,
        ZFS_PROP_SETUID = 20,
        ZFS_PROP_READONLY = 21,
        ZFS_PROP_ZONED = 22,
        ZFS_PROP_SNAPDIR = 23,
        ZFS_PROP_PRIVATE = 24,
        ZFS_PROP_ACLINHERIT = 25,
        ZFS_PROP_CREATETXG = 26,
        ZFS_PROP_NAME = 27,
        ZFS_PROP_CANMOUNT = 28,
        ZFS_PROP_ISCSIOPTIONS = 29,
        ZFS_PROP_XATTR = 30,
        ZFS_PROP_NUMCLONES = 31,
        ZFS_PROP_COPIES = 32,
        ZFS_PROP_VERSION = 33,
        ZFS_PROP_UTF8ONLY = 34,
        ZFS_PROP_NORMALIZE = 35,
        ZFS_PROP_CASE = 36,
        ZFS_PROP_VSCAN = 37,
        ZFS_PROP_NBMAND = 38,
        ZFS_PROP_SHARESMB = 39,
        ZFS_PROP_REFQUOTA = 40,
        ZFS_PROP_REFRESERVATION = 41,
        ZFS_PROP_GUID = 42,
        ZFS_PROP_PRIMARYCACHE = 43,
        ZFS_PROP_SECONDARYCACHE = 44,
        ZFS_PROP_USEDSNAP = 45,
        ZFS_PROP_USEDDS = 46,
        ZFS_PROP_USEDCHILD = 47,
        ZFS_PROP_USEDREFRESERV = 48,
        ZFS_PROP_USERACCOUNTING = 49,
        ZFS_PROP_STMF_SHAREINFO = 50,
        ZFS_PROP_DEFER_DESTROY = 51,
        ZFS_PROP_USERREFS = 52,
        ZFS_PROP_LOGBIAS = 53,
        ZFS_PROP_UNIQUE = 54,
        ZFS_PROP_OBJSETID = 55,
        ZFS_PROP_DEDUP = 56,
        ZFS_PROP_MLSLABEL = 57,
        ZFS_PROP_SYNC = 58,
        ZFS_PROP_DNODESIZE = 59,
        ZFS_PROP_REFRATIO = 60,
        ZFS_PROP_WRITTEN = 61,
        ZFS_PROP_CLONES = 62,
        ZFS_PROP_LOGICALUSED = 63,
        ZFS_PROP_LOGICALREFERENCED = 64,
        ZFS_PROP_INCONSISTENT = 65,
        ZFS_PROP_VOLMODE = 66,
        ZFS_PROP_FILESYSTEM_LIMIT = 67,
        ZFS_PROP_SNAPSHOT_LIMIT = 68,
        ZFS_PROP_FILESYSTEM_COUNT = 69,
        ZFS_PROP_SNAPSHOT_COUNT = 70,
        ZFS_PROP_SNAPDEV = 71,
        ZFS_PROP_ACLTYPE = 72,
        ZFS_PROP_SELINUX_CONTEXT = 73,
        ZFS_PROP_SELINUX_FSCONTEXT = 74,
        ZFS_PROP_SELINUX_DEFCONTEXT = 75,
        ZFS_PROP_SELINUX_ROOTCONTEXT = 76,
        ZFS_PROP_RELATIME = 77,
        ZFS_PROP_REDUNDANT_METADATA = 78,
        ZFS_PROP_OVERLAY = 79,
        ZFS_PROP_PREV_SNAP = 80,
        ZFS_PROP_RECEIVE_RESUME_TOKEN = 81,
        ZFS_PROP_ENCRYPTION = 82,
        ZFS_PROP_KEYLOCATION = 83,
        ZFS_PROP_KEYFORMAT = 84,
        ZFS_PROP_PBKDF2_SALT = 85,
        ZFS_PROP_PBKDF2_ITERS = 86,
        ZFS_PROP_ENCRYPTION_ROOT = 87,
        ZFS_PROP_KEY_GUID = 88,
        ZFS_PROP_KEYSTATUS = 89,
        ZFS_NUM_PROPS = 90,
    }
    int lzc_receive_one(const(char)*, nvlist_t*, const(char)*, boolean_t, boolean_t, boolean_t, int, const struct_dmu_replay_record*, int, uint64_t*, uint64_t*, uint64_t*, nvlist_t**, );
    union _Anonymous_271
    {
        char[8] __size;
        c_long __align;
    }
    int lzc_receive_with_cmdprops(const(char)*, nvlist_t*, nvlist_t*, const(char)*, boolean_t, boolean_t, boolean_t, int, const struct_dmu_replay_record*, int, uint64_t*, uint64_t*, uint64_t*, nvlist_t**, );
    boolean_t lzc_exists(const(char)*, );
    int lzc_rollback(const(char)*, char*, int, );
    int lzc_rollback_to(const(char)*, const(char)*, );
    int lzc_sync(const(char)*, nvlist_t*, nvlist_t**, );
    int lzc_reopen(const(char)*, boolean_t, );
    union _Anonymous_272
    {
        char[32] __size;
        c_long __align;
    }
    enum _Anonymous_273
    {
        SEGV_MAPERR = 1,
        SEGV_ACCERR = 2,
    }
    union _Anonymous_274
    {
        char[4] __size;
        int __align;
    }
    enum _Anonymous_275
    {
        BUS_ADRALN = 1,
        BUS_ADRERR = 2,
        BUS_OBJERR = 3,
        BUS_MCEERR_AR = 4,
        BUS_MCEERR_AO = 5,
    }
    struct _Anonymous_276
    {
        gregset_t gregs;
        fpregset_t fpregs;
        ulong[8] __reserved1;
    }
    struct _Anonymous_277
    {
        int[2] __val;
    }
    enum _Anonymous_278
    {
        CLD_EXITED = 1,
        CLD_KILLED = 2,
        CLD_DUMPED = 3,
        CLD_TRAPPED = 4,
        CLD_STOPPED = 5,
        CLD_CONTINUED = 6,
    }
    enum _Anonymous_279
    {
        POLL_IN = 1,
        POLL_OUT = 2,
        POLL_MSG = 3,
        POLL_ERR = 4,
        POLL_PRI = 5,
        POLL_HUP = 6,
    }
    enum _Anonymous_280
    {
        ZFS_PROP_USERUSED = 0,
        ZFS_PROP_USERQUOTA = 1,
        ZFS_PROP_GROUPUSED = 2,
        ZFS_PROP_GROUPQUOTA = 3,
        ZFS_PROP_USEROBJUSED = 4,
        ZFS_PROP_USEROBJQUOTA = 5,
        ZFS_PROP_GROUPOBJUSED = 6,
        ZFS_PROP_GROUPOBJQUOTA = 7,
        ZFS_NUM_USERQUOTA_PROPS = 8,
    }
    enum _Anonymous_281
    {
        ZPOOL_PROP_NAME = 0,
        ZPOOL_PROP_SIZE = 1,
        ZPOOL_PROP_CAPACITY = 2,
        ZPOOL_PROP_ALTROOT = 3,
        ZPOOL_PROP_HEALTH = 4,
        ZPOOL_PROP_GUID = 5,
        ZPOOL_PROP_VERSION = 6,
        ZPOOL_PROP_BOOTFS = 7,
        ZPOOL_PROP_DELEGATION = 8,
        ZPOOL_PROP_AUTOREPLACE = 9,
        ZPOOL_PROP_CACHEFILE = 10,
        ZPOOL_PROP_FAILUREMODE = 11,
        ZPOOL_PROP_LISTSNAPS = 12,
        ZPOOL_PROP_AUTOEXPAND = 13,
        ZPOOL_PROP_DEDUPDITTO = 14,
        ZPOOL_PROP_DEDUPRATIO = 15,
        ZPOOL_PROP_FREE = 16,
        ZPOOL_PROP_ALLOCATED = 17,
        ZPOOL_PROP_READONLY = 18,
        ZPOOL_PROP_ASHIFT = 19,
        ZPOOL_PROP_COMMENT = 20,
        ZPOOL_PROP_EXPANDSZ = 21,
        ZPOOL_PROP_FREEING = 22,
        ZPOOL_PROP_FRAGMENTATION = 23,
        ZPOOL_PROP_LEAKED = 24,
        ZPOOL_PROP_MAXBLOCKSIZE = 25,
        ZPOOL_PROP_TNAME = 26,
        ZPOOL_PROP_MAXDNODESIZE = 27,
        ZPOOL_PROP_MULTIHOST = 28,
        ZPOOL_NUM_PROPS = 29,
    }
    enum _Anonymous_282
    {
        ZPROP_SRC_NONE = 1,
        ZPROP_SRC_DEFAULT = 2,
        ZPROP_SRC_TEMPORARY = 4,
        ZPROP_SRC_LOCAL = 8,
        ZPROP_SRC_INHERITED = 16,
        ZPROP_SRC_RECEIVED = 32,
    }
    enum _Anonymous_283
    {
        ZPROP_ERR_NOCLEAR = 1,
        ZPROP_ERR_NORESTORE = 2,
    }
    struct _Anonymous_284
    {
        c_long quot;
        c_long rem;
    }
    enum _Anonymous_285
    {
        REG_ENOSYS = -1,
        REG_NOERROR = 0,
        REG_NOMATCH = 1,
        REG_BADPAT = 2,
        REG_ECOLLATE = 3,
        REG_ECTYPE = 4,
        REG_EESCAPE = 5,
        REG_ESUBREG = 6,
        REG_EBRACK = 7,
        REG_EPAREN = 8,
        REG_EBRACE = 9,
        REG_BADBR = 10,
        REG_ERANGE = 11,
        REG_ESPACE = 12,
        REG_BADRPT = 13,
        REG_EEND = 14,
        REG_ESIZE = 15,
        REG_ERPAREN = 16,
    }
    enum _Anonymous_286
    {
        ZFS_DELEG_WHO_UNKNOWN = 0,
        ZFS_DELEG_USER = 117,
        ZFS_DELEG_USER_SETS = 85,
        ZFS_DELEG_GROUP = 103,
        ZFS_DELEG_GROUP_SETS = 71,
        ZFS_DELEG_EVERYONE = 101,
        ZFS_DELEG_EVERYONE_SETS = 69,
        ZFS_DELEG_CREATE = 99,
        ZFS_DELEG_CREATE_SETS = 67,
        ZFS_DELEG_NAMED_SET = 115,
        ZFS_DELEG_NAMED_SET_SETS = 83,
    }
    enum _Anonymous_287
    {
        ZFS_DELEG_NONE = 0,
        ZFS_DELEG_PERM_LOCAL = 1,
        ZFS_DELEG_PERM_DESCENDENT = 2,
        ZFS_DELEG_PERM_LOCALDESCENDENT = 3,
        ZFS_DELEG_PERM_CREATE = 4,
    }
    enum _Anonymous_288
    {
        ZFS_CANMOUNT_OFF = 0,
        ZFS_CANMOUNT_ON = 1,
        ZFS_CANMOUNT_NOAUTO = 2,
    }
    enum _Anonymous_289
    {
        ZFS_LOGBIAS_LATENCY = 0,
        ZFS_LOGBIAS_THROUGHPUT = 1,
    }
    enum _Anonymous_290
    {
        ZFS_SYNC_STANDARD = 0,
        ZFS_SYNC_ALWAYS = 1,
        ZFS_SYNC_DISABLED = 2,
    }
    enum _Anonymous_291
    {
        ZFS_XATTR_OFF = 0,
        ZFS_XATTR_DIR = 1,
        ZFS_XATTR_SA = 2,
    }
    enum _Anonymous_292
    {
        ZFS_DNSIZE_LEGACY = 0,
        ZFS_DNSIZE_AUTO = 1,
        ZFS_DNSIZE_1K = 1024,
        ZFS_DNSIZE_2K = 2048,
        ZFS_DNSIZE_4K = 4096,
        ZFS_DNSIZE_8K = 8192,
        ZFS_DNSIZE_16K = 16384,
    }
    enum _Anonymous_293
    {
        ZFS_REDUNDANT_METADATA_ALL = 0,
        ZFS_REDUNDANT_METADATA_MOST = 1,
    }
    enum _Anonymous_294
    {
        ZFS_VOLMODE_DEFAULT = 0,
        ZFS_VOLMODE_GEOM = 1,
        ZFS_VOLMODE_DEV = 2,
        ZFS_VOLMODE_NONE = 3,
    }
    struct _Anonymous_295
    {
        regoff_t rm_so;
        regoff_t rm_eo;
    }
    enum _Anonymous_296
    {
        _CS_PATH = 0,
        _CS_V6_WIDTH_RESTRICTED_ENVS = 1,
        _CS_GNU_LIBC_VERSION = 2,
        _CS_GNU_LIBPTHREAD_VERSION = 3,
        _CS_V5_WIDTH_RESTRICTED_ENVS = 4,
        _CS_V7_WIDTH_RESTRICTED_ENVS = 5,
        _CS_LFS_CFLAGS = 1000,
        _CS_LFS_LDFLAGS = 1001,
        _CS_LFS_LIBS = 1002,
        _CS_LFS_LINTFLAGS = 1003,
        _CS_LFS64_CFLAGS = 1004,
        _CS_LFS64_LDFLAGS = 1005,
        _CS_LFS64_LIBS = 1006,
        _CS_LFS64_LINTFLAGS = 1007,
        _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
        _CS_XBS5_ILP32_OFF32_LDFLAGS = 1101,
        _CS_XBS5_ILP32_OFF32_LIBS = 1102,
        _CS_XBS5_ILP32_OFF32_LINTFLAGS = 1103,
        _CS_XBS5_ILP32_OFFBIG_CFLAGS = 1104,
        _CS_XBS5_ILP32_OFFBIG_LDFLAGS = 1105,
        _CS_XBS5_ILP32_OFFBIG_LIBS = 1106,
        _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = 1107,
        _CS_XBS5_LP64_OFF64_CFLAGS = 1108,
        _CS_XBS5_LP64_OFF64_LDFLAGS = 1109,
        _CS_XBS5_LP64_OFF64_LIBS = 1110,
        _CS_XBS5_LP64_OFF64_LINTFLAGS = 1111,
        _CS_XBS5_LPBIG_OFFBIG_CFLAGS = 1112,
        _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = 1113,
        _CS_XBS5_LPBIG_OFFBIG_LIBS = 1114,
        _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = 1115,
        _CS_POSIX_V6_ILP32_OFF32_CFLAGS = 1116,
        _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = 1117,
        _CS_POSIX_V6_ILP32_OFF32_LIBS = 1118,
        _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS = 1119,
        _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = 1120,
        _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = 1121,
        _CS_POSIX_V6_ILP32_OFFBIG_LIBS = 1122,
        _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS = 1123,
        _CS_POSIX_V6_LP64_OFF64_CFLAGS = 1124,
        _CS_POSIX_V6_LP64_OFF64_LDFLAGS = 1125,
        _CS_POSIX_V6_LP64_OFF64_LIBS = 1126,
        _CS_POSIX_V6_LP64_OFF64_LINTFLAGS = 1127,
        _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = 1128,
        _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = 1129,
        _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = 1130,
        _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS = 1131,
        _CS_POSIX_V7_ILP32_OFF32_CFLAGS = 1132,
        _CS_POSIX_V7_ILP32_OFF32_LDFLAGS = 1133,
        _CS_POSIX_V7_ILP32_OFF32_LIBS = 1134,
        _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS = 1135,
        _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS = 1136,
        _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS = 1137,
        _CS_POSIX_V7_ILP32_OFFBIG_LIBS = 1138,
        _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS = 1139,
        _CS_POSIX_V7_LP64_OFF64_CFLAGS = 1140,
        _CS_POSIX_V7_LP64_OFF64_LDFLAGS = 1141,
        _CS_POSIX_V7_LP64_OFF64_LIBS = 1142,
        _CS_POSIX_V7_LP64_OFF64_LINTFLAGS = 1143,
        _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS = 1144,
        _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS = 1145,
        _CS_POSIX_V7_LPBIG_OFFBIG_LIBS = 1146,
        _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS = 1147,
        _CS_V6_ENV = 1148,
        _CS_V7_ENV = 1149,
    }
    enum _Anonymous_297
    {
        SPA_LOAD_NONE = 0,
        SPA_LOAD_OPEN = 1,
        SPA_LOAD_IMPORT = 2,
        SPA_LOAD_TRYIMPORT = 3,
        SPA_LOAD_RECOVER = 4,
        SPA_LOAD_ERROR = 5,
        SPA_LOAD_CREATE = 6,
    }
}
extern(C)
{
    extern char*[9] zpool_default_import_path;





    //alias zfs_error_t = zfs_error;

    struct zfs_perm_node {
     avl_node_t z_node;
     char[4096] z_pname;
    }
    alias zfs_perm_node_t = zfs_perm_node;

    struct zfs_allow_node {
     avl_node_t z_node;
     char[4096] z_key;
     avl_tree_t z_localdescend;
     avl_tree_t z_local;
     avl_tree_t z_descend;
    }
    alias zfs_allow_node_t = zfs_allow_node;

    struct zfs_allow {
     zfs_allow *z_next;
     char[4096] z_setpoint;
     avl_tree_t z_sets;
     avl_tree_t z_crperms;
     avl_tree_t z_user;
     avl_tree_t z_group;
     avl_tree_t z_everyone;
    }
    //alias zfs_allow_t = zfs_allow;



    struct zfs_handle {}

    alias zfs_handle_t= zfs_handle;
    //alias zpool_handle_t=zpool_handle;
    //alias libzfs_handle_t= libzfs_handle;
    struct libzfs_handle {}
    alias libzfs_handle_t= libzfs_handle;
    struct zpool_handle_t {}

    extern libzfs_handle_t* libzfs_init();
    extern void libzfs_fini(libzfs_handle_t *);

    extern libzfs_handle_t *zpool_get_handle(zpool_handle_t *);
    extern libzfs_handle_t *zfs_get_handle(zfs_handle_t *);

    extern void libzfs_print_on_error(libzfs_handle_t *, boolean_t);

    extern void zfs_save_arguments(int argc, char **, char *, int);
    extern int zpool_log_history(libzfs_handle_t *, const(char)* );

    extern int libzfs_errno(libzfs_handle_t *);
    extern const(char)* libzfs_error_init(int);
    extern const(char)* libzfs_error_action(libzfs_handle_t *);
    extern const(char)* libzfs_error_description(libzfs_handle_t *);
    extern int zfs_standard_error(libzfs_handle_t *, int, const(char)* );
    extern void libzfs_mnttab_init(libzfs_handle_t *);
    extern void libzfs_mnttab_fini(libzfs_handle_t *);
    extern void libzfs_mnttab_cache(libzfs_handle_t *, boolean_t);
    extern int libzfs_mnttab_find(libzfs_handle_t *, const(char)*, mnttab *);
    extern void libzfs_mnttab_add(libzfs_handle_t *, const(char)*, const(char)*, const(char)* );
    extern void libzfs_mnttab_remove(libzfs_handle_t *, const(char)* );




    extern zpool_handle_t *zpool_open(libzfs_handle_t *, const(char)* );
    extern zpool_handle_t *zpool_open_canfail(libzfs_handle_t *, const(char)* );
    extern void zpool_close(zpool_handle_t *);
    extern const(char)* zpool_get_name(zpool_handle_t *);
    extern int zpool_get_state(zpool_handle_t *);
    extern char *zpool_state_to_name(vdev_state_t, vdev_aux_t);
    extern const(char)* zpool_pool_state_to_name(pool_state_t);
    extern void zpool_free_handles(libzfs_handle_t *);




    alias  zpool_iter_f  = int function(zpool_handle_t *, void *);
    alias  zpool_iter = int function(libzfs_handle_t *, zpool_iter_f, void *);
    alias zpool_skip_pool = boolean_t function(const(char)* );




    extern int zpool_create(libzfs_handle_t *, const(char)* , nvlist_t *,
        nvlist_t *, nvlist_t *);
    extern int zpool_destroy(zpool_handle_t *, const(char)* );
    extern int zpool_add(zpool_handle_t *, nvlist_t *);

    struct splitflags {
        import std.bitmanip;
        mixin(bitfields!(
            int,"dryrun",1,
            int,"import_",1,
            int,"junk",6
        ));
        int name_flags;
    }

    alias splitflags_t = splitflags;




    extern int zpool_scan(zpool_handle_t *, pool_scan_func_t, pool_scrub_cmd_t);
    extern int zpool_clear(zpool_handle_t *, const(char)* , nvlist_t *);
    extern int zpool_reguid(zpool_handle_t *);
    extern int zpool_reopen_one(zpool_handle_t *, void *);

    extern int zpool_sync_one(zpool_handle_t *, void *);

    extern int zpool_vdev_online(zpool_handle_t *, const(char)* , int,
        vdev_state_t *);
    extern int zpool_vdev_offline(zpool_handle_t *, const(char)* , boolean_t);
    extern int zpool_vdev_attach(zpool_handle_t *, const(char)* ,
        const(char)* , nvlist_t *, int);
    extern int zpool_vdev_detach(zpool_handle_t *, const(char)* );
    extern int zpool_vdev_remove(zpool_handle_t *, const(char)* );
    extern int zpool_vdev_split(zpool_handle_t *, char *, nvlist_t **, nvlist_t *,
        splitflags_t);

    extern int zpool_vdev_fault(zpool_handle_t *, uint64_t, vdev_aux_t);
    extern int zpool_vdev_degrade(zpool_handle_t *, uint64_t, vdev_aux_t);
    extern int zpool_vdev_clear(zpool_handle_t *, uint64_t);

    extern nvlist_t *zpool_find_vdev(zpool_handle_t *, const(char)* , boolean_t *,
        boolean_t *, boolean_t *);
    extern nvlist_t *zpool_find_vdev_by_physpath(zpool_handle_t *, const(char)* ,
        boolean_t *, boolean_t *, boolean_t *);
    extern int zpool_label_disk_wait(char *, int);
    extern int zpool_label_disk(libzfs_handle_t *, zpool_handle_t *, char *);
    extern uint64_t zpool_vdev_path_to_guid(zpool_handle_t *zhp, const(char)* path);

    int zfs_dev_is_dm(char *dev_name);
    int zfs_dev_is_whole_disk(char *dev_name);
    char *zfs_get_underlying_path(char *dev_name);
    char *zfs_get_enclosure_sysfs_path(char *dev_name);




    extern int zpool_set_prop(zpool_handle_t *, const(char)* , const(char)* );
    extern int zpool_get_prop(zpool_handle_t *, zpool_prop_t, char *,
        size_t proplen, zprop_source_t *, boolean_t literal);
    extern uint64_t zpool_get_prop_int(zpool_handle_t *, zpool_prop_t,
        zprop_source_t *);

    extern const(char)* zpool_prop_to_name(zpool_prop_t);
    extern const(char)* zpool_prop_values(zpool_prop_t);




    enum zpool_status_t
    {
     ZPOOL_STATUS_CORRUPT_CACHE,
     ZPOOL_STATUS_MISSING_DEV_R,
     ZPOOL_STATUS_MISSING_DEV_NR,
     ZPOOL_STATUS_CORRUPT_LABEL_R,
     ZPOOL_STATUS_CORRUPT_LABEL_NR,
     ZPOOL_STATUS_BAD_GUID_SUM,
     ZPOOL_STATUS_CORRUPT_POOL,
     ZPOOL_STATUS_CORRUPT_DATA,
     ZPOOL_STATUS_FAILING_DEV,
     ZPOOL_STATUS_VERSION_NEWER,
     ZPOOL_STATUS_HOSTID_MISMATCH,
     ZPOOL_STATUS_HOSTID_ACTIVE,
     ZPOOL_STATUS_HOSTID_REQUIRED,
     ZPOOL_STATUS_IO_FAILURE_WAIT,
     ZPOOL_STATUS_IO_FAILURE_CONTINUE,
     ZPOOL_STATUS_BAD_LOG,
     ZPOOL_STATUS_ERRATA,







     ZPOOL_STATUS_UNSUP_FEAT_READ,
     ZPOOL_STATUS_UNSUP_FEAT_WRITE,






     ZPOOL_STATUS_FAULTED_DEV_R,
     ZPOOL_STATUS_FAULTED_DEV_NR,






     ZPOOL_STATUS_VERSION_OLDER,
     ZPOOL_STATUS_FEAT_DISABLED,
     ZPOOL_STATUS_RESILVERING,
     ZPOOL_STATUS_OFFLINE_DEV,
     ZPOOL_STATUS_REMOVED_DEV,




     ZPOOL_STATUS_OK
    }

    extern zpool_status_t zpool_get_status(zpool_handle_t *, char **,
        zpool_errata_t *);
    extern zpool_status_t zpool_import_status(nvlist_t *, char **,
        zpool_errata_t *);
    extern void zpool_dump_ddt(const ddt_stat_t *dds, const ddt_histogram_t *ddh);




    extern nvlist_t *zpool_get_config(zpool_handle_t *, nvlist_t **);
    extern nvlist_t *zpool_get_features(zpool_handle_t *);
    extern int zpool_refresh_stats(zpool_handle_t *, boolean_t *);
    extern int zpool_get_errlog(zpool_handle_t *, nvlist_t **);




    extern int zpool_export(zpool_handle_t *, boolean_t, const(char)* );
    extern int zpool_export_force(zpool_handle_t *, const(char)* );
    extern int zpool_import(libzfs_handle_t *, nvlist_t *, const(char)* ,
        char *altroot);
    extern int zpool_import_props(libzfs_handle_t *, nvlist_t *, const(char)* ,
        nvlist_t *, int);
    extern void zpool_print_unsup_feat(nvlist_t *config);





    struct importargs {
        import std.bitmanip;
        char **path;
        int paths;
        char *poolname;
        uint64_t guid;
        char *cachefile;
        mixin(bitfields!(
            int,"can_be_active",1,
            int,"unique",1,
            int,"exists",1,
            int,"scan",1,
            int,"junk",4
        ));
    }
    alias importargs_t = importargs;

    extern nvlist_t *zpool_search_import(libzfs_handle_t *, importargs_t *);
    extern int zpool_tryimport(libzfs_handle_t *hdl, char *target,
        nvlist_t **configp, importargs_t *args);


    extern nvlist_t *zpool_find_import(libzfs_handle_t *, int, char **);
    extern nvlist_t *zpool_find_import_cached(libzfs_handle_t *, const(char)* ,
        char *, uint64_t);




    struct zfs_cmd {}

    extern const char** zfs_history_event_names;

    enum vdev_name_t
    {
     VDEV_NAME_PATH = 1 << 0,
     VDEV_NAME_GUID = 1 << 1,
     VDEV_NAME_FOLLOW_LINKS = 1 << 2,
     VDEV_NAME_TYPE_ID = 1 << 3,
    }

    extern char *zpool_vdev_name(libzfs_handle_t *, zpool_handle_t *, nvlist_t *,
        int name_flags);
    extern int zpool_upgrade(zpool_handle_t *, uint64_t);
    extern int zpool_get_history(zpool_handle_t *, nvlist_t **);
    extern int zpool_history_unpack(char *, uint64_t, uint64_t *,
        nvlist_t ***, uint_t *);
    extern int zpool_events_next(libzfs_handle_t *, nvlist_t **, int *, uint,
        int);
    extern int zpool_events_clear(libzfs_handle_t *, int *);
    extern int zpool_events_seek(libzfs_handle_t *, uint64_t, int);
    extern void zpool_obj_to_path(zpool_handle_t *, uint64_t, uint64_t, char *,
        size_t len);
    extern int zfs_ioctl(libzfs_handle_t *, int, zfs_cmd *);
    extern int zpool_get_physpath(zpool_handle_t *, char *, size_t);
    extern void zpool_explain_recover(libzfs_handle_t *, const(char)* , int,
        nvlist_t *);





    extern zfs_handle_t *zfs_open(libzfs_handle_t *, const(char)* , int);
    extern zfs_handle_t *zfs_handle_dup(zfs_handle_t *);
    extern void zfs_close(zfs_handle_t *);
    extern zfs_type_t zfs_get_type(const zfs_handle_t *);
    extern const(char)* zfs_get_name(const zfs_handle_t *);
    extern zpool_handle_t *zfs_get_pool_handle(const zfs_handle_t *);
    extern const(char)* zfs_get_pool_name(const zfs_handle_t *);
    extern const(char)* zfs_prop_default_string(zfs_prop_t);
    extern uint64_t zfs_prop_default_numeric(zfs_prop_t);
    extern const(char)* zfs_prop_column_name(zfs_prop_t);
    extern boolean_t zfs_prop_align_right(zfs_prop_t);

    extern nvlist_t *zfs_valid_proplist(libzfs_handle_t *, zfs_type_t, nvlist_t *,
        uint64_t, zfs_handle_t *, zpool_handle_t *, boolean_t, const(char)* );

    extern const(char)* zfs_prop_to_name(zfs_prop_t);
    extern int zfs_prop_set(zfs_handle_t *, const(char)* , const(char)* );
    extern int zfs_prop_set_list(zfs_handle_t *, nvlist_t *);
    extern int zfs_prop_get(zfs_handle_t *, zfs_prop_t, char *, size_t,
        zprop_source_t *, char *, size_t, boolean_t);
    extern int zfs_prop_get_recvd(zfs_handle_t *, const(char)* , char *, size_t,
        boolean_t);
    extern int zfs_prop_get_numeric(zfs_handle_t *, zfs_prop_t, uint64_t *,
        zprop_source_t *, char *, size_t);
    extern int zfs_prop_get_userquota_int(zfs_handle_t *zhp, const(char)* propname,
        uint64_t *propvalue);
    extern int zfs_prop_get_userquota(zfs_handle_t *zhp, const(char)* propname,
        char *propbuf, int proplen, boolean_t literal);
    extern int zfs_prop_get_written_int(zfs_handle_t *zhp, const(char)* propname,
        uint64_t *propvalue);
    extern int zfs_prop_get_written(zfs_handle_t *zhp, const(char)* propname,
        char *propbuf, int proplen, boolean_t literal);
    extern int zfs_prop_get_feature(zfs_handle_t *zhp, const(char)* propname,
        char *buf, size_t len);
    extern uint64_t getprop_uint64(zfs_handle_t *, zfs_prop_t, char **);
    extern uint64_t zfs_prop_get_int(zfs_handle_t *, zfs_prop_t);
    extern int zfs_prop_inherit(zfs_handle_t *, const(char)* , boolean_t);
    extern const(char)* zfs_prop_values(zfs_prop_t);
    extern int zfs_prop_is_string(zfs_prop_t prop);
    extern nvlist_t *zfs_get_all_props(zfs_handle_t *);
    extern nvlist_t *zfs_get_user_props(zfs_handle_t *);
    extern nvlist_t *zfs_get_recvd_props(zfs_handle_t *);
    extern nvlist_t *zfs_get_clones_nvl(zfs_handle_t *);




    extern int zfs_crypto_get_encryption_root(zfs_handle_t *, boolean_t *, char *);
    extern int zfs_crypto_create(libzfs_handle_t *, char *, nvlist_t *, nvlist_t *,
        uint8_t **, uint_t *);
    extern int zfs_crypto_clone_check(libzfs_handle_t *, zfs_handle_t *, char *,
        nvlist_t *);
    extern int zfs_crypto_attempt_load_keys(libzfs_handle_t *, char *);
    extern int zfs_crypto_load_key(zfs_handle_t *, boolean_t, char *);
    extern int zfs_crypto_unload_key(zfs_handle_t *);
    extern int zfs_crypto_rewrap(zfs_handle_t *, nvlist_t *, boolean_t);

    struct zprop_list {
     int pl_prop;
     char *pl_user_prop;
    zprop_list *pl_next;
     boolean_t pl_all;
     size_t pl_width;
     size_t pl_recvd_width;
     boolean_t pl_fixed;
    }
    alias zprop_list_t = zprop_list;

    extern int zfs_expand_proplist(zfs_handle_t *, zprop_list_t **, boolean_t,
        boolean_t);
    extern void zfs_prune_proplist(zfs_handle_t *, uint8_t *);
    extern int zpool_expand_proplist(zpool_handle_t *, zprop_list_t **);
    extern int zpool_prop_get_feature(zpool_handle_t *, const(char)* , char *,
        size_t);
    extern const(char)* zpool_prop_default_string(zpool_prop_t);
    extern uint64_t zpool_prop_default_numeric(zpool_prop_t);
    extern const(char)* zpool_prop_column_name(zpool_prop_t);
    extern boolean_t zpool_prop_align_right(zpool_prop_t);




    extern int zprop_iter(zprop_func func, void *cb, boolean_t show_all,
        boolean_t ordered, zfs_type_t type);
    extern int zprop_get_list(libzfs_handle_t *, char *, zprop_list_t **,
        zfs_type_t);
    extern void zprop_free_list(zprop_list_t *);



    enum zfs_get_column_t
    {
     GET_COL_NONE,
     GET_COL_NAME,
     GET_COL_PROPERTY,
     GET_COL_VALUE,
     GET_COL_RECVD,
     GET_COL_SOURCE
    }




    struct zprop_get_cbdata {
     int cb_sources;
     zfs_get_column_t[5] cb_columns;
     int[5+1] cb_colwidths;
     boolean_t cb_scripted;
     boolean_t cb_literal;
     boolean_t cb_first;
     zprop_list_t *cb_proplist;
     zfs_type_t cb_type;
    }
    alias zprop_get_cbdata_t = zprop_get_cbdata;

    void zprop_print_one_property(const(char)* , zprop_get_cbdata_t *,
        const(char)* , const(char)* , zprop_source_t, const(char)* ,
        const(char)* );




    alias zfs_iter_f = int function(zfs_handle_t *, void *);
    extern int zfs_iter_root(libzfs_handle_t *, zfs_iter_f, void *);
    extern int zfs_iter_children(zfs_handle_t *, zfs_iter_f, void *);
    extern int zfs_iter_dependents(zfs_handle_t *, boolean_t, zfs_iter_f, void *);
    extern int zfs_iter_filesystems(zfs_handle_t *, zfs_iter_f, void *);
    extern int zfs_iter_snapshots(zfs_handle_t *, boolean_t, zfs_iter_f, void *);
    extern int zfs_iter_snapshots_sorted(zfs_handle_t *, zfs_iter_f, void *);
    extern int zfs_iter_snapspec(zfs_handle_t *, const(char)* , zfs_iter_f, void *);
    extern int zfs_iter_bookmarks(zfs_handle_t *, zfs_iter_f, void *);

    struct get_all_cb {
     zfs_handle_t **cb_handles;
     size_t cb_alloc;
     size_t cb_used;
     boolean_t cb_verbose;
     int function(zfs_handle_t *, void *) cb_getone;
    }
    alias get_all_cb_t = get_all_cb;

    void libzfs_add_handle(get_all_cb_t *, zfs_handle_t *);
    int libzfs_dataset_cmp(const void *, const void *);




    extern int zfs_create(libzfs_handle_t *, const(char)* , zfs_type_t,
        nvlist_t *);
    extern int zfs_create_ancestors(libzfs_handle_t *, const(char)* );
    extern int zfs_destroy(zfs_handle_t *, boolean_t);
    extern int zfs_destroy_snaps(zfs_handle_t *, char *, boolean_t);
    extern int zfs_destroy_snaps_nvl(libzfs_handle_t *, nvlist_t *, boolean_t);
    extern int zfs_clone(zfs_handle_t *, const(char)* , nvlist_t *);
    extern int zfs_snapshot(libzfs_handle_t *, const(char)* , boolean_t, nvlist_t *);
    extern int zfs_snapshot_nvl(libzfs_handle_t *hdl, nvlist_t *snaps,
        nvlist_t *props);
    extern int zfs_rollback(zfs_handle_t *, zfs_handle_t *, boolean_t);
    extern int zfs_rename(zfs_handle_t *, const(char)* , boolean_t, boolean_t);

    struct sendflags {
     boolean_t verbose;
     boolean_t replicate;
     boolean_t doall;
     boolean_t fromorigin;
     boolean_t dedup;
     boolean_t props;
     boolean_t dryrun;
     boolean_t parsable;
     boolean_t progress;
     boolean_t largeblock;
     boolean_t embed_data;
     boolean_t compress;
     boolean_t raw;
    }
    alias sendflags_t = sendflags;

    alias  snapfilter_cb_t = boolean_t  function(zfs_handle_t *, void *);

    extern int zfs_send(zfs_handle_t *, const(char)* , const(char)* ,
        sendflags_t *, int, snapfilter_cb_t, void *, nvlist_t **);
    extern int zfs_send_one(zfs_handle_t *, const(char)* , int, sendflags_t flags);
    extern int zfs_send_resume(libzfs_handle_t *, sendflags_t *, int outfd,
        const(char)* );
    extern nvlist_t *zfs_send_resume_token_to_nvlist(libzfs_handle_t *hdl,
        const(char)* token);

    extern int zfs_promote(zfs_handle_t *);
    extern int zfs_hold(zfs_handle_t *, const(char)* , const(char)* ,
        boolean_t, int);
    extern int zfs_hold_nvl(zfs_handle_t *, int, nvlist_t *);
    extern int zfs_release(zfs_handle_t *, const(char)* , const(char)* , boolean_t);
    extern int zfs_get_holds(zfs_handle_t *, nvlist_t **);
    extern uint64_t zvol_volsize_to_reservation(uint64_t, nvlist_t *);

    alias zfs_userspace_cb_t = int function(void *arg, const(char)* domain, uid_t rid, uint64_t space);

    extern int zfs_userspace(zfs_handle_t *, zfs_userquota_prop_t,
        zfs_userspace_cb_t, void *);

    extern int zfs_get_fsacl(zfs_handle_t *, nvlist_t **);
    extern int zfs_set_fsacl(zfs_handle_t *, boolean_t, nvlist_t *);

    struct recvflags {
     boolean_t verbose;
     boolean_t isprefix;
     boolean_t istail;
     boolean_t dryrun;
     boolean_t force;
     boolean_t canmountoff;
     boolean_t resumable;
     boolean_t byteswap;
     boolean_t nomount;
    }
    alias recvflags_t = recvflags;

    extern int zfs_receive(libzfs_handle_t *, const(char)* , nvlist_t *,
        recvflags_t *, int, avl_tree_t *);

    enum diff_flags {
     ZFS_DIFF_PARSEABLE = 0x1,
     ZFS_DIFF_TIMESTAMP = 0x2,
     ZFS_DIFF_CLASSIFY = 0x4
    }
    alias diff_flags_t = diff_flags;


    extern int zfs_show_diffs(zfs_handle_t *, int, const(char)* , const(char)* ,
        int);




    extern const(char)* zfs_type_to_name(zfs_type_t);
    extern void zfs_refresh_properties(zfs_handle_t *);
    extern int zfs_name_valid(const(char)* , zfs_type_t);
    extern zfs_handle_t *zfs_path_to_zhandle(libzfs_handle_t *, char *, zfs_type_t);
    extern int zfs_parent_name(zfs_handle_t *, char *, size_t);
    extern boolean_t zfs_dataset_exists(libzfs_handle_t *, const(char)* ,
        zfs_type_t);
    extern int zfs_spa_version(zfs_handle_t *, int *);
    extern boolean_t zfs_bookmark_exists(const(char)* path);
    extern int zfs_append_partition(char *path, size_t max_len);
    extern int zfs_resolve_shortname(const(char)* name, char *path, size_t pathlen);
    extern int zfs_strcmp_pathname(char *name, char *cmp_name, int wholedisk);
    extern int zfs_path_order(char *path, int *order);




    extern boolean_t is_mounted(libzfs_handle_t *, const(char)* special, char **);
    extern boolean_t zfs_is_mounted(zfs_handle_t *, char **);
    extern int zfs_mount(zfs_handle_t *, const(char)* , int);
    extern int zfs_unmount(zfs_handle_t *, const(char)* , int);
    extern int zfs_unmountall(zfs_handle_t *, int);




    extern boolean_t zfs_is_shared(zfs_handle_t *);
    extern int zfs_share(zfs_handle_t *);
    extern int zfs_unshare(zfs_handle_t *);




    extern boolean_t zfs_is_shared_nfs(zfs_handle_t *, char **);
    extern boolean_t zfs_is_shared_smb(zfs_handle_t *, char **);
    extern int zfs_share_nfs(zfs_handle_t *);
    extern int zfs_share_smb(zfs_handle_t *);
    extern int zfs_shareall(zfs_handle_t *);
    extern int zfs_unshare_nfs(zfs_handle_t *, const(char)* );
    extern int zfs_unshare_smb(zfs_handle_t *, const(char)* );
    extern int zfs_unshareall_nfs(zfs_handle_t *);
    extern int zfs_unshareall_smb(zfs_handle_t *);
    extern int zfs_unshareall_bypath(zfs_handle_t *, const(char)* );
    extern int zfs_unshareall_bytype(zfs_handle_t *, const(char)* , const(char)* );
    extern int zfs_unshareall(zfs_handle_t *);
    extern int zfs_deleg_share_nfs(libzfs_handle_t *, char *, char *, char *,
        void *, void *, int, zfs_share_op_t);

    enum zfs_nicenum_format_t {
     ZFS_NICENUM_1024 = 0,
     ZFS_NICENUM_BYTES = 1,
     ZFS_NICENUM_TIME = 2,
     ZFS_NICENUM_RAW = 3,
     ZFS_NICENUM_RAWTIME = 4
    };




    extern void zfs_nicenum(uint64_t, char *, size_t);
    extern void zfs_nicenum_format(uint64_t num, char *buf, size_t buflen, zfs_nicenum_format_t type);


    extern void zfs_nicetime(uint64_t, char *, size_t);
    extern void zfs_nicebytes(uint64_t, char *, size_t);
    extern int zfs_nicestrtonum(libzfs_handle_t *, const(char)* , uint64_t *);
    int libzfs_run_process(const(char)* , char **, int flags);
    int libzfs_run_process_get_stdout(const(char)* path, char** argv, char** env,
        char*** lines, int *lines_cnt);
    int libzfs_run_process_get_stdout_nopath(const(char)* path, char** argv,
        char** env, char*** lines, int *lines_cnt);

    void libzfs_free_str_array(char **strs, int count);

    int libzfs_envvar_is_set(char *envvar);




    extern int zpool_in_use(libzfs_handle_t *, int, pool_state_t *, char **,
        boolean_t *);




    extern int zpool_read_label(int, nvlist_t **, int *);
    extern int zpool_clear_label(int);





    int zfs_smb_acl_add(libzfs_handle_t *, char *, char *, char *);
    int zfs_smb_acl_remove(libzfs_handle_t *, char *, char *, char *);
    int zfs_smb_acl_purge(libzfs_handle_t *, char *, char *);
    int zfs_smb_acl_rename(libzfs_handle_t *, char *, char *, char *, char *);





    extern int zpool_enable_datasets(zpool_handle_t *, const(char)* , int);
    extern int zpool_disable_datasets(zpool_handle_t *, boolean_t);




    extern boolean_t is_mpath_whole_disk(const(char)* );
    extern void update_vdev_config_dev_strs(nvlist_t *);
    extern char *zfs_strip_partition(char *);
    extern char *zfs_strip_partition_path(char *);
}
