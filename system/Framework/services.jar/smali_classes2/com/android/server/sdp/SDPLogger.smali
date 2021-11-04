.class public Lcom/android/server/sdp/SDPLogger;
.super Ljava/lang/Object;
.source "SDPLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sdp/SDPLogger$Logger;
    }
.end annotation


# static fields
.field private static final ACCUM_TIME_MS:I = 0xbb8

.field private static final DEBUG:Z

.field private static final STATE_ACCUMULATING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SAVING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SDPLogger"

.field private static mLogger:Lcom/android/server/sdp/SDPLogger$Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sdp/SDPLogger;->DEBUG:Z

    .line 24
    new-instance v0, Lcom/android/server/sdp/SDPLogger$Logger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/sdp/SDPLogger$Logger;-><init>(Lcom/android/server/sdp/SDPLogger$1;)V

    sput-object v0, Lcom/android/server/sdp/SDPLogger;->mLogger:Lcom/android/server/sdp/SDPLogger$Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static LogD(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 136
    sget-boolean v0, Lcom/android/server/sdp/SDPLogger;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 137
    const-string v0, "SDPLogger"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_9
    return-void
.end method

.method private static LogE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 142
    const-string v0, "SDPLogger"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 13
    invoke-static {p0}, Lcom/android/server/sdp/SDPLogger;->LogE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 13
    invoke-static {p0}, Lcom/android/server/sdp/SDPLogger;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method static enqMessage(Ljava/lang/String;)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/String;

    .line 27
    # invokes: Lcom/android/server/sdp/SDPLogger$Logger;->getLock()Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/sdp/SDPLogger$Logger;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 28
    :try_start_5
    # invokes: Lcom/android/server/sdp/SDPLogger$Logger;->getStateLocked()I
    invoke-static {}, Lcom/android/server/sdp/SDPLogger$Logger;->access$200()I

    move-result v1

    if-nez v1, :cond_1f

    .line 29
    const/4 v1, 0x1

    # invokes: Lcom/android/server/sdp/SDPLogger$Logger;->setStateLocked(I)V
    invoke-static {v1}, Lcom/android/server/sdp/SDPLogger$Logger;->access$300(I)V

    .line 30
    new-instance v2, Lcom/android/server/sdp/SDPLogger$Logger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/sdp/SDPLogger$Logger;-><init>(Lcom/android/server/sdp/SDPLogger$1;)V

    sput-object v2, Lcom/android/server/sdp/SDPLogger;->mLogger:Lcom/android/server/sdp/SDPLogger$Logger;

    .line 31
    invoke-virtual {v2, v1}, Lcom/android/server/sdp/SDPLogger$Logger;->setDaemon(Z)V

    .line 32
    sget-object v1, Lcom/android/server/sdp/SDPLogger;->mLogger:Lcom/android/server/sdp/SDPLogger$Logger;

    invoke-virtual {v1}, Lcom/android/server/sdp/SDPLogger$Logger;->start()V

    .line 36
    :cond_1f
    sget-object v1, Lcom/android/server/sdp/SDPLogger;->mLogger:Lcom/android/server/sdp/SDPLogger$Logger;

    if-eqz v1, :cond_28

    .line 37
    sget-object v1, Lcom/android/server/sdp/SDPLogger;->mLogger:Lcom/android/server/sdp/SDPLogger$Logger;

    # invokes: Lcom/android/server/sdp/SDPLogger$Logger;->add(Ljava/lang/String;)V
    invoke-static {v1, p0}, Lcom/android/server/sdp/SDPLogger$Logger;->access$400(Lcom/android/server/sdp/SDPLogger$Logger;Ljava/lang/String;)V

    .line 39
    :cond_28
    monitor-exit v0

    .line 40
    return-void

    .line 39
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v1
.end method
