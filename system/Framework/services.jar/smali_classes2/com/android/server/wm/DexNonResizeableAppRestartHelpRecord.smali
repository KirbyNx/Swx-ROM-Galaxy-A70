.class Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;
.super Ljava/lang/Object;
.source "DexNonResizeableAppRestartHelpRecord.java"

# interfaces
.implements Lcom/android/server/wm/DexHelpController$HelpRecord;


# static fields
.field private static final TAG:Ljava/lang/String; = "DexNonResizeableAppRestartHelpRecord"

.field private static final TIMEOUT:J = 0x1388L


# instance fields
.field private mCount:I

.field private mH:Landroid/os/Handler;

.field private mIsCountExceed:Z

.field private mMaxCount:I

.field private final mMode:I

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mTargetTask:Lcom/android/server/wm/Task;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mCount:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    .line 55
    iput-object p1, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mMode:I

    .line 57
    return-void
.end method

.method private increaseCount()V
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mCount:I

    iget-object v2, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const-string v3, "dex_non_resizeable_app_restart_help_count"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 125
    return-void
.end method

.method private resetTargetTask()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_14

    .line 115
    const-string v0, "DexNonResizeableAppRestartHelpRecord"

    const-string/jumbo v1, "resetTargetTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->resetPendingDexHelpMode()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    .line 119
    :cond_14
    return-void
.end method

.method private updateCountExceed()V
    .registers 3

    .line 128
    iget v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mMaxCount:I

    iget v1, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mCount:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mIsCountExceed:Z

    .line 129
    return-void
.end method


# virtual methods
.method public addClientTransactionItemIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/app/servertransaction/ClientTransaction;)Z
    .registers 8
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->isCountExceed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_83

    .line 71
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v2, "DexNonResizeableAppRestartHelpRecord"

    if-eqz v0, :cond_3a

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding DexNonResizeableAppRestartHelpItem(#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mMode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 73
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 76
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_46

    .line 77
    const-string v3, "abort adding DexNonResizeableAppRestartHelpItem, task is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v1

    .line 80
    :cond_46
    iget-object v3, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_52

    if-eq v3, v0, :cond_52

    .line 81
    const-string v3, "abort adding DexNonResizeableAppRestartHelpItem, targetTask is already exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v1

    .line 84
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->needToShow()Z

    move-result v3

    if-nez v3, :cond_59

    .line 85
    return v1

    .line 87
    :cond_59
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_62

    .line 88
    const-string v3, "add DexNonResizeableAppRestartHelpItem"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_62
    iget v2, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mMode:I

    invoke-static {v2}, Landroid/app/servertransaction/DexNonResizeableAppRestartHelpItem;->obtain(I)Landroid/app/servertransaction/DexNonResizeableAppRestartHelpItem;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 91
    iput-object v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    .line 92
    iget-object v2, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mH:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v2, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mH:Landroid/os/Handler;

    iget v4, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mMode:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 94
    const/4 v1, 0x1

    return v1

    .line 96
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_83
    return v1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->isCountExceed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    return-void

    .line 153
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DexNonResizeableAppRestartHelp #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTargetTask : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public isCountExceed()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mIsCountExceed:Z

    return v0
.end method

.method public needToShow()Z
    .registers 3

    .line 138
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MD_DEX_NON_RESIZEABLE_APP_RESTART_DIALOG_DISABLED:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mIsCountExceed:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mMaxCount:I

    iget v1, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mCount:I

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public reportShown(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 101
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 102
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1a

    .line 103
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 104
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1a

    iget-object v2, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    if-ne v1, v2, :cond_1a

    .line 105
    iget-object v2, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mH:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->resetTargetTask()V

    .line 109
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->increaseCount()V

    .line 110
    invoke-direct {p0}, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->updateCountExceed()V

    .line 111
    return-void
.end method

.method public retrieveSettings(I)V
    .registers 5
    .param p1, "currentUserId"    # I

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dex_non_resizeable_app_restart_help_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mCount:I

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mMaxCount:I

    .line 65
    invoke-direct {p0}, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->updateCountExceed()V

    .line 66
    return-void
.end method

.method public setHandler(Lcom/android/server/wm/DexHelpController$H;)V
    .registers 2
    .param p1, "h"    # Lcom/android/server/wm/DexHelpController$H;

    .line 164
    iput-object p1, p0, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->mH:Landroid/os/Handler;

    .line 165
    return-void
.end method

.method public timeout()V
    .registers 3

    .line 144
    const-string v0, "DexNonResizeableAppRestartHelpRecord"

    const-string/jumbo v1, "resetTargetTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/DexNonResizeableAppRestartHelpRecord;->resetTargetTask()V

    .line 146
    return-void
.end method
