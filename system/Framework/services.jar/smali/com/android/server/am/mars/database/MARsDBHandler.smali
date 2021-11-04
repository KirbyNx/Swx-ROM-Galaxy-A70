.class public Lcom/android/server/am/mars/database/MARsDBHandler;
.super Ljava/lang/Object;
.source "MARsDBHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;,
        Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
    }
.end annotation


# static fields
.field private static volatile marsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;


# instance fields
.field private final DB_THREAD_NAME:Ljava/lang/String;

.field mDBThread:Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;

.field public mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/mars/database/MARsDBHandler;->marsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "SDHMSMARsDBThread"

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->DB_THREAD_NAME:Ljava/lang/String;

    .line 16
    new-instance v1, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;-><init>(Lcom/android/server/am/mars/database/MARsDBHandler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mDBThread:Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;

    .line 17
    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;->start()V

    .line 18
    return-void
.end method

.method public static declared-synchronized getDBHandler()Lcom/android/server/am/mars/database/MARsDBHandler;
    .registers 2

    const-class v0, Lcom/android/server/am/mars/database/MARsDBHandler;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/android/server/am/mars/database/MARsDBHandler;->marsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    if-nez v1, :cond_e

    .line 22
    new-instance v1, Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-direct {v1}, Lcom/android/server/am/mars/database/MARsDBHandler;-><init>()V

    sput-object v1, Lcom/android/server/am/mars/database/MARsDBHandler;->marsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 24
    :cond_e
    sget-object v1, Lcom/android/server/am/mars/database/MARsDBHandler;->marsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 20
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 28
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    if-eqz v0, :cond_8

    .line 29
    invoke-virtual {v0, p1}, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    .line 31
    :cond_8
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;-><init>(Lcom/android/server/am/mars/database/MARsDBHandler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 32
    invoke-virtual {v0, p1}, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 34
    :goto_12
    return-void
.end method
