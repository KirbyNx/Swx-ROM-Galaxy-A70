.class public Lcom/android/server/am/mars/database/MARsComponentTracker;
.super Ljava/lang/Object;
.source "MARsComponentTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MARsComponentTracker"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/database/MARsComponentTracker$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/database/MARsComponentTracker$1;

    .line 24
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsComponentTracker;-><init>()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;
    .registers 1

    .line 35
    # getter for: Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->access$100()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    return-object v0
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsComponentTracker;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/database/MARsComponentTracker;->setContext(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public trackComponent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 24
    .param p1, "isRestricted"    # Z
    .param p2, "hostingType"    # Ljava/lang/String;
    .param p3, "callerPackage"    # Ljava/lang/String;
    .param p4, "calleePackage"    # Ljava/lang/String;
    .param p5, "autoRun"    # I
    .param p6, "uid"    # I
    .param p7, "isFreezed"    # Z

    .line 53
    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    const-string v0, "activity"

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 54
    return-void

    .line 57
    :cond_11
    const/4 v0, 0x1

    if-ne v8, v0, :cond_17

    if-eqz p7, :cond_17

    .line 58
    return-void

    .line 60
    :cond_17
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v0

    move/from16 v10, p6

    invoke-virtual {v0, v10}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_9e

    .line 64
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 67
    .local v11, "currentTime":J
    if-eqz p1, :cond_42

    .line 68
    if-nez v8, :cond_9b

    .line 69
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move/from16 v3, p1

    move-wide v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_9b

    .line 72
    :cond_42
    const-string v13, " at "

    const-string v14, " start process "

    const-string v15, "MARsComponentTracker"

    if-nez v8, :cond_6c

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markAppStartUpResult: auto run off case : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 75
    :cond_6c
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move/from16 v3, p1

    move-wide v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markAppStartUpResult: auto run on case : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_9b
    :goto_9b
    return-void

    .line 60
    .end local v11    # "currentTime":J
    :cond_9c
    move/from16 v10, p6

    .line 61
    :goto_9e
    return-void
.end method
