.class Lcom/android/server/sdp/SDPLogger$Logger;
.super Ljava/lang/Thread;
.source "SDPLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sdp/SDPLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Logger"
.end annotation


# static fields
.field private static final MAX_LINES:I = 0x12c

.field private static final cLock:Ljava/lang/Object;

.field private static mLogQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSavQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mState:I

.field private static final qLock:Ljava/lang/Object;

.field private static sFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/android/server/sdp/SDPLogger$Logger;->mState:I

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sdp/SDPLogger$Logger;->sFilePath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sdp/SDPLogger$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/sdp/SDPLogger$1;

    .line 42
    invoke-direct {p0}, Lcom/android/server/sdp/SDPLogger$Logger;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 42
    invoke-static {}, Lcom/android/server/sdp/SDPLogger$Logger;->getLock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .line 42
    invoke-static {}, Lcom/android/server/sdp/SDPLogger$Logger;->getStateLocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)V
    .registers 1
    .param p0, "x0"    # I

    .line 42
    invoke-static {p0}, Lcom/android/server/sdp/SDPLogger$Logger;->setStateLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/sdp/SDPLogger$Logger;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sdp/SDPLogger$Logger;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/sdp/SDPLogger$Logger;->add(Ljava/lang/String;)V

    return-void
.end method

.method private add(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/android/server/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    sget-object v1, Lcom/android/server/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    invoke-static {v1}, Lcom/android/server/sdp/SDPLogger$Logger;->preventBOFLocked(Ljava/util/Queue;)V

    .line 87
    sget-object v1, Lcom/android/server/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private static getLock()Ljava/lang/Object;
    .registers 1

    .line 61
    sget-object v0, Lcom/android/server/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static getStateLocked()I
    .registers 1

    .line 65
    sget v0, Lcom/android/server/sdp/SDPLogger$Logger;->mState:I

    return v0
.end method

.method private static preventBOFLocked(Ljava/util/Queue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p0, "logQ":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_19

    .line 74
    const-string v0, "Log buffer reached the limit! Clearing the buffer..."

    # invokes: Lcom/android/server/sdp/SDPLogger;->LogE(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/sdp/SDPLogger;->access$500(Ljava/lang/String;)V

    .line 75
    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    .line 79
    const-string v0, "ACLog: Unfortunately buffer cleared to prevent overflow!"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLogUtil;->makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_19
    return-void
.end method

.method private static setStateLocked(I)V
    .registers 1
    .param p0, "state"    # I

    .line 69
    sput p0, Lcom/android/server/sdp/SDPLogger$Logger;->mState:I

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 94
    :goto_0
    const-string v0, "Start accumulating..."

    # invokes: Lcom/android/server/sdp/SDPLogger;->LogD(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/sdp/SDPLogger;->access$600(Ljava/lang/String;)V

    .line 96
    const-wide/16 v0, 0xbb8

    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_67

    .line 100
    nop

    .line 102
    sget-object v0, Lcom/android/server/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_e
    sget-object v1, Lcom/android/server/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    sput-object v1, Lcom/android/server/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    .line 104
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/android/server/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    .line 105
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_64

    .line 107
    const-string v0, "Start saving..."

    # invokes: Lcom/android/server/sdp/SDPLogger;->LogD(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/sdp/SDPLogger;->access$600(Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/android/server/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    const/4 v0, 0x2

    :try_start_23
    invoke-static {v0}, Lcom/android/server/sdp/SDPLogger$Logger;->setStateLocked(I)V

    .line 110
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_61

    .line 114
    sget-object v0, Lcom/android/server/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    invoke-static {v0}, Lcom/android/server/sdp/SDPLogFile;->saveFile(Ljava/util/Queue;)V

    .line 115
    sget-object v0, Lcom/android/server/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    .line 118
    sget-object v0, Lcom/android/server/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_37
    sget-object v1, Lcom/android/server/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_5e

    .line 120
    :try_start_3a
    sget-object v2, Lcom/android/server/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 121
    const-string v2, "Back to accumulate!"

    # invokes: Lcom/android/server/sdp/SDPLogger;->LogD(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/sdp/SDPLogger;->access$600(Ljava/lang/String;)V

    .line 122
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/sdp/SDPLogger$Logger;->setStateLocked(I)V

    .line 123
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_5b

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_5e

    goto :goto_0

    .line 125
    :cond_4e
    :try_start_4e
    const-string v2, "Finished!"

    # invokes: Lcom/android/server/sdp/SDPLogger;->LogD(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/sdp/SDPLogger;->access$600(Ljava/lang/String;)V

    .line 126
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/sdp/SDPLogger$Logger;->setStateLocked(I)V

    .line 128
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_5b

    .line 129
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_5e

    .line 130
    nop

    .line 132
    return-void

    .line 128
    :catchall_5b
    move-exception v2

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    .end local p0    # "this":Lcom/android/server/sdp/SDPLogger$Logger;
    :try_start_5d
    throw v2

    .line 129
    .restart local p0    # "this":Lcom/android/server/sdp/SDPLogger$Logger;
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5e

    throw v1

    .line 110
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0

    .line 105
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1

    .line 97
    :catch_67
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Logger interrupted!"

    # invokes: Lcom/android/server/sdp/SDPLogger;->LogE(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/sdp/SDPLogger;->access$500(Ljava/lang/String;)V

    .line 99
    return-void
.end method
