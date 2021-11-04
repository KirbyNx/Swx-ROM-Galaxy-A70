.class public Lcom/android/server/am/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final AM_ANR:I = 0x7538

.field public static final AM_APP_TRANSITION:I = 0x13d684

.field public static final AM_BROADCAST_DISCARD_APP:I = 0x7549

.field public static final AM_BROADCAST_DISCARD_FILTER:I = 0x7548

.field public static final AM_COMPACT:I = 0x756f

.field public static final AM_CRASH:I = 0x7557

.field public static final AM_CREATE_SERVICE:I = 0x754e

.field public static final AM_DESTROY_SERVICE:I = 0x754f

.field public static final AM_DROP_PROCESS:I = 0x7551

.field public static final AM_FREEZE:I = 0x7574

.field public static final AM_KILL:I = 0x7547

.field public static final AM_KILL_BG_PROC:I = 0xf42a5

.field public static final AM_LOW_MEMORY:I = 0x7541

.field public static final AM_MEMINFO:I = 0x755e

.field public static final AM_MEM_FACTOR:I = 0x7562

.field public static final AM_NANDSWAP:I = 0x13d6e8

.field public static final AM_PRE_BOOT:I = 0x755d

.field public static final AM_PROCESS_CRASHED_TOO_MUCH:I = 0x7550

.field public static final AM_PROCESS_START_TIMEOUT:I = 0x7555

.field public static final AM_PROC_BAD:I = 0x753f

.field public static final AM_PROC_BOUND:I = 0x753a

.field public static final AM_PROC_DIED:I = 0x753b

.field public static final AM_PROC_GOOD:I = 0x7540

.field public static final AM_PROC_START:I = 0x753e

.field public static final AM_PROVIDER_LOST_PROCESS:I = 0x7554

.field public static final AM_PSS:I = 0x755f

.field public static final AM_SCHEDULE_SERVICE_RESTART:I = 0x7553

.field public static final AM_SERVICE_CRASHED_TOO_MUCH:I = 0x7552

.field public static final AM_STOP_IDLE_SERVICE:I = 0x7568

.field public static final AM_SWITCH_USER:I = 0x7559

.field public static final AM_UID_ACTIVE:I = 0x7566

.field public static final AM_UID_IDLE:I = 0x7567

.field public static final AM_UID_RUNNING:I = 0x7564

.field public static final AM_UID_STOPPED:I = 0x7565

.field public static final AM_UNFREEZE:I = 0x7575

.field public static final AM_UNSCHEDULE_SERVICE_RESTART:I = 0xf42a6

.field public static final AM_USER_STATE_CHANGED:I = 0x7563

.field public static final AM_WTF:I = 0x7558

.field public static final BOOT_PROGRESS_AMS_READY:I = 0xbe0

.field public static final BOOT_PROGRESS_AMS_STATE:I = 0xf42a4

.field public static final BOOT_PROGRESS_ENABLE_SCREEN:I = 0xbea

.field public static final CONFIGURATION_CHANGED:I = 0xa9f

.field public static final CPU:I = 0xaa1

.field public static final UC_CONTINUE_USER_SWITCH:I = 0x7580

.field public static final UC_DISPATCH_USER_SWITCH:I = 0x757f

.field public static final UC_FINISH_USER_BOOT:I = 0x757e

.field public static final UC_FINISH_USER_STOPPED:I = 0x757a

.field public static final UC_FINISH_USER_STOPPING:I = 0x7579

.field public static final UC_FINISH_USER_UNLOCKED:I = 0x7577

.field public static final UC_FINISH_USER_UNLOCKED_COMPLETED:I = 0x7578

.field public static final UC_FINISH_USER_UNLOCKING:I = 0x7576

.field public static final UC_SEND_USER_BROADCAST:I = 0x7581

.field public static final UC_START_USER_INTERNAL:I = 0x757c

.field public static final UC_SWITCH_USER:I = 0x757b

.field public static final UC_UNLOCK_USER:I = 0x757d


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeAmAnr(IILjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 195
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/16 v1, 0x7538

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 196
    return-void
.end method

.method public static writeAmAppTransition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "time1"    # J
    .param p5, "time2"    # J
    .param p7, "time3"    # J
    .param p9, "time4"    # J
    .param p11, "comment"    # Ljava/lang/String;
    .param p12, "filter"    # Ljava/lang/String;

    .line 395
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    aput-object p11, v0, v1

    const/16 v1, 0x8

    aput-object p12, v0, v1

    const v1, 0x13d684

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 396
    return-void
.end method

.method public static writeAmBroadcastDiscardApp(IILjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p0, "user"    # I
    .param p1, "broadcast"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "receiverNumber"    # I
    .param p4, "app"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/16 v1, 0x7549

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 232
    return-void
.end method

.method public static writeAmBroadcastDiscardFilter(IILjava/lang/String;II)V
    .registers 8
    .param p0, "user"    # I
    .param p1, "broadcast"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "receiverNumber"    # I
    .param p4, "broadcastfilter"    # I

    .line 227
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x7548

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 228
    return-void
.end method

.method public static writeAmCompact(ILjava/lang/String;Ljava/lang/String;JJJJJJJJJIJIIJJ)V
    .registers 33
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "beforersstotal"    # J
    .param p5, "beforerssfile"    # J
    .param p7, "beforerssanon"    # J
    .param p9, "beforerssswap"    # J
    .param p11, "deltarsstotal"    # J
    .param p13, "deltarssfile"    # J
    .param p15, "deltarssanon"    # J
    .param p17, "deltarssswap"    # J
    .param p19, "time"    # J
    .param p21, "lastaction"    # I
    .param p22, "lastactiontimestamp"    # J
    .param p24, "setadj"    # I
    .param p25, "procstate"    # I
    .param p26, "beforezramfree"    # J
    .param p28, "deltazramfree"    # J

    .line 319
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p11, p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static/range {p15 .. p16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static/range {p17 .. p18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static/range {p19 .. p20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-static/range {p21 .. p21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static/range {p22 .. p23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-static/range {p24 .. p24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    invoke-static/range {p25 .. p25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-static/range {p26 .. p27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    invoke-static/range {p28 .. p29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x756f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 320
    return-void
.end method

.method public static writeAmCrash(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "exception"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "file"    # Ljava/lang/String;
    .param p7, "line"    # I

    .line 267
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x7557

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 268
    return-void
.end method

.method public static writeAmCreateService(IILjava/lang/String;II)V
    .registers 8
    .param p0, "user"    # I
    .param p1, "serviceRecord"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 235
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x754e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 236
    return-void
.end method

.method public static writeAmDestroyService(III)V
    .registers 6
    .param p0, "user"    # I
    .param p1, "serviceRecord"    # I
    .param p2, "pid"    # I

    .line 239
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x754f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 240
    return-void
.end method

.method public static writeAmDropProcess(I)V
    .registers 2
    .param p0, "pid"    # I

    .line 247
    const/16 v0, 0x7551

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 248
    return-void
.end method

.method public static writeAmFreeze(ILjava/lang/String;)V
    .registers 5
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    .line 327
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0x7574

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 328
    return-void
.end method

.method public static writeAmKill(IILjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "oomadj"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 223
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/16 v1, 0x7547

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 224
    return-void
.end method

.method public static writeAmKillBgProc(Ljava/lang/String;II)V
    .registers 6
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "user"    # I
    .param p2, "callingpid"    # I

    .line 387
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xf42a5

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 388
    return-void
.end method

.method public static writeAmLowMemory(I)V
    .registers 2
    .param p0, "numProcesses"    # I

    .line 219
    const/16 v0, 0x7541

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 220
    return-void
.end method

.method public static writeAmMemFactor(II)V
    .registers 5
    .param p0, "current"    # I
    .param p1, "previous"    # I

    .line 291
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7562

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 292
    return-void
.end method

.method public static writeAmMeminfo(JJJJJ)V
    .registers 13
    .param p0, "cached"    # J
    .param p2, "free"    # J
    .param p4, "zram"    # J
    .param p6, "kernel"    # J
    .param p8, "native_"    # J

    .line 283
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x755e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 284
    return-void
.end method

.method public static writeAmNandswap(ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "action"    # J
    .param p4, "adj"    # I
    .param p5, "procstate"    # I
    .param p6, "time"    # Ljava/lang/String;
    .param p7, "needwriteback"    # Ljava/lang/String;
    .param p8, "bdstatbefore"    # Ljava/lang/String;
    .param p9, "writebacklimitbefore"    # Ljava/lang/String;
    .param p10, "zramfreekbbefore"    # Ljava/lang/String;
    .param p11, "bdstatafter"    # Ljava/lang/String;
    .param p12, "writebacklimitafter"    # Ljava/lang/String;
    .param p13, "zramfreekbafter"    # Ljava/lang/String;

    .line 323
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    const v1, 0x13d6e8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 324
    return-void
.end method

.method public static writeAmPreBoot(ILjava/lang/String;)V
    .registers 5
    .param p0, "user"    # I
    .param p1, "package_"    # Ljava/lang/String;

    .line 279
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0x755d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 280
    return-void
.end method

.method public static writeAmProcBad(IILjava/lang/String;)V
    .registers 6
    .param p0, "user"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x753f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 212
    return-void
.end method

.method public static writeAmProcBound(IILjava/lang/String;)V
    .registers 6
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 199
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x753a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 200
    return-void
.end method

.method public static writeAmProcDied(IILjava/lang/String;IIIII)V
    .registers 11
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "cachedProcessCount"    # I
    .param p4, "oomadj"    # I
    .param p5, "procstate"    # I
    .param p6, "free"    # I
    .param p7, "cached"    # I

    .line 203
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x753b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 204
    return-void
.end method

.method public static writeAmProcGood(IILjava/lang/String;)V
    .registers 6
    .param p0, "user"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 215
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7540

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 216
    return-void
.end method

.method public static writeAmProcStart(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "component"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/16 v1, 0x753e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 208
    return-void
.end method

.method public static writeAmProcessCrashedTooMuch(ILjava/lang/String;I)V
    .registers 6
    .param p0, "user"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 243
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x7550

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 244
    return-void
.end method

.method public static writeAmProcessStartTimeout(IIILjava/lang/String;)V
    .registers 7
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .line 263
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/16 v1, 0x7555

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 264
    return-void
.end method

.method public static writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p0, "user"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 259
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/16 v1, 0x7554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 260
    return-void
.end method

.method public static writeAmPss(IILjava/lang/String;JJJJIIJ)V
    .registers 18
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pss"    # J
    .param p5, "uss"    # J
    .param p7, "swappss"    # J
    .param p9, "rss"    # J
    .param p11, "stattype"    # I
    .param p12, "procstate"    # I
    .param p13, "timetocollect"    # J

    .line 287
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x755f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 288
    return-void
.end method

.method public static writeAmScheduleServiceRestart(ILjava/lang/String;JII)V
    .registers 9
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "delaytype"    # I
    .param p5, "iscanceled"    # I

    .line 255
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x7553

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 256
    return-void
.end method

.method public static writeAmServiceCrashedTooMuch(IILjava/lang/String;I)V
    .registers 7
    .param p0, "user"    # I
    .param p1, "crashCount"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .line 251
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x7552

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 252
    return-void
.end method

.method public static writeAmStopIdleService(ILjava/lang/String;)V
    .registers 5
    .param p0, "uid"    # I
    .param p1, "componentName"    # Ljava/lang/String;

    .line 315
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0x7568

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 316
    return-void
.end method

.method public static writeAmSwitchUser(I)V
    .registers 2
    .param p0, "id"    # I

    .line 275
    const/16 v0, 0x7559

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 276
    return-void
.end method

.method public static writeAmUidActive(I)V
    .registers 2
    .param p0, "uid"    # I

    .line 307
    const/16 v0, 0x7566

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 308
    return-void
.end method

.method public static writeAmUidIdle(I)V
    .registers 2
    .param p0, "uid"    # I

    .line 311
    const/16 v0, 0x7567

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 312
    return-void
.end method

.method public static writeAmUidRunning(I)V
    .registers 2
    .param p0, "uid"    # I

    .line 299
    const/16 v0, 0x7564

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 300
    return-void
.end method

.method public static writeAmUidStopped(I)V
    .registers 2
    .param p0, "uid"    # I

    .line 303
    const/16 v0, 0x7565

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 304
    return-void
.end method

.method public static writeAmUnfreeze(ILjava/lang/String;)V
    .registers 5
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    .line 331
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0x7575

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 332
    return-void
.end method

.method public static writeAmUnscheduleServiceRestart(ILjava/lang/String;JLjava/lang/String;)V
    .registers 8
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "reason"    # Ljava/lang/String;

    .line 391
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const v1, 0xf42a6

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 392
    return-void
.end method

.method public static writeAmUserStateChanged(II)V
    .registers 5
    .param p0, "id"    # I
    .param p1, "state"    # I

    .line 295
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7563

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 296
    return-void
.end method

.method public static writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 271
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/16 v1, 0x7558

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 272
    return-void
.end method

.method public static writeBootProgressAmsReady(J)V
    .registers 3
    .param p0, "time"    # J

    .line 187
    const/16 v0, 0xbe0

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 188
    return-void
.end method

.method public static writeBootProgressAmsState(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "user"    # I
    .param p1, "state"    # I
    .param p2, "progress"    # I
    .param p3, "functionname"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;

    .line 383
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const v1, 0xf42a4

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 384
    return-void
.end method

.method public static writeBootProgressEnableScreen(J)V
    .registers 3
    .param p0, "time"    # J

    .line 191
    const/16 v0, 0xbea

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 192
    return-void
.end method

.method public static writeConfigurationChanged(I)V
    .registers 2
    .param p0, "configMask"    # I

    .line 179
    const/16 v0, 0xa9f

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 180
    return-void
.end method

.method public static writeCpu(IIIIII)V
    .registers 9
    .param p0, "total"    # I
    .param p1, "user"    # I
    .param p2, "system"    # I
    .param p3, "iowait"    # I
    .param p4, "irq"    # I
    .param p5, "softirq"    # I

    .line 183
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0xaa1

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 184
    return-void
.end method

.method public static writeUcContinueUserSwitch(I)V
    .registers 2
    .param p0, "olduserid"    # I

    .line 375
    const/16 v0, 0x7580

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 376
    return-void
.end method

.method public static writeUcDispatchUserSwitch(I)V
    .registers 2
    .param p0, "olduserid"    # I

    .line 371
    const/16 v0, 0x757f

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 372
    return-void
.end method

.method public static writeUcFinishUserBoot(I)V
    .registers 2
    .param p0, "userid"    # I

    .line 367
    const/16 v0, 0x757e

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 368
    return-void
.end method

.method public static writeUcFinishUserStopped(I)V
    .registers 2
    .param p0, "userid"    # I

    .line 351
    const/16 v0, 0x757a

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 352
    return-void
.end method

.method public static writeUcFinishUserStopping(I)V
    .registers 2
    .param p0, "userid"    # I

    .line 347
    const/16 v0, 0x7579

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 348
    return-void
.end method

.method public static writeUcFinishUserUnlocked(I)V
    .registers 2
    .param p0, "userid"    # I

    .line 339
    const/16 v0, 0x7577

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 340
    return-void
.end method

.method public static writeUcFinishUserUnlockedCompleted(I)V
    .registers 2
    .param p0, "userid"    # I

    .line 343
    const/16 v0, 0x7578

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 344
    return-void
.end method

.method public static writeUcFinishUserUnlocking(I)V
    .registers 2
    .param p0, "userid"    # I

    .line 335
    const/16 v0, 0x7576

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 336
    return-void
.end method

.method public static writeUcSendUserBroadcast(ILjava/lang/String;)V
    .registers 5
    .param p0, "userid"    # I
    .param p1, "intentaction"    # Ljava/lang/String;

    .line 379
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0x7581

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 380
    return-void
.end method

.method public static writeUcStartUserInternal(I)V
    .registers 2
    .param p0, "userid"    # I

    .line 359
    const/16 v0, 0x757c

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 360
    return-void
.end method

.method public static writeUcSwitchUser(I)V
    .registers 2
    .param p0, "userid"    # I

    .line 355
    const/16 v0, 0x757b

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 356
    return-void
.end method

.method public static writeUcUnlockUser(I)V
    .registers 2
    .param p0, "userid"    # I

    .line 363
    const/16 v0, 0x757d

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 364
    return-void
.end method
