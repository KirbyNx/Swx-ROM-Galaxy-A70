.class Lcom/android/server/wm/DexLabsMaximizeHelpRecord;
.super Ljava/lang/Object;
.source "DexLabsMaximizeHelpRecord.java"

# interfaces
.implements Lcom/android/server/wm/DexHelpController$HelpRecord;


# static fields
.field private static final TAG:Ljava/lang/String; = "DexLabsMaximizeHelpRecord"

.field private static final TIMEOUT:J = 0x1388L


# instance fields
.field private mCount:I

.field private mH:Landroid/os/Handler;

.field private mInterval:[I

.field private mIsCountExceed:Z

.field private final mMode:I

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mTargetTask:Lcom/android/server/wm/Task;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mCount:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mMode:I

    .line 55
    return-void
.end method

.method private increaseCount()V
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mCount:I

    iget-object v2, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const-string v3, "dex_labs_maximize_help_count"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 125
    return-void
.end method

.method private resetTargetTask()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_14

    .line 115
    const-string v0, "DexLabsMaximizeHelpRecord"

    const-string/jumbo v1, "resetTargetTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->resetPendingDexHelpMode()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    .line 119
    :cond_14
    return-void
.end method

.method private updateCountExceed()V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mInterval:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    array-length v2, v0

    if-lez v2, :cond_15

    .line 129
    iget v2, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mCount:I

    array-length v3, v0

    sub-int/2addr v3, v1

    aget v0, v0, v3

    if-lt v2, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mIsCountExceed:Z

    goto :goto_17

    .line 131
    :cond_15
    iput-boolean v1, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mIsCountExceed:Z

    .line 133
    :goto_17
    return-void
.end method


# virtual methods
.method public addClientTransactionItemIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/app/servertransaction/ClientTransaction;)Z
    .registers 8
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 68
    invoke-virtual {p0}, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->isCountExceed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_89

    .line 69
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v2, "DexLabsMaximizeHelpRecord"

    if-eqz v0, :cond_3a

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addHelpItemIfNeeded(#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mMode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 71
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 74
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_46

    .line 75
    const-string v3, "addHelpItemIfNeeded abort, task is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v1

    .line 78
    :cond_46
    iget-object v3, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_52

    if-eq v3, v0, :cond_52

    .line 79
    const-string v3, "addHelpItemIfNeeded abort, targetTask is already exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v1

    .line 82
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->needToShow()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 83
    invoke-direct {p0}, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->increaseCount()V

    .line 84
    invoke-direct {p0}, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->updateCountExceed()V

    .line 85
    return v1

    .line 87
    :cond_5f
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_68

    .line 88
    const-string v3, "add DexHelpItem"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_68
    iget v2, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mMode:I

    invoke-static {v2}, Landroid/app/servertransaction/DexHelpItem;->obtain(I)Landroid/app/servertransaction/DexHelpItem;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 91
    iput-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    .line 92
    iget-object v2, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mH:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v2, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mH:Landroid/os/Handler;

    iget v4, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mMode:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 94
    const/4 v1, 0x1

    return v1

    .line 96
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_89
    return v1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->isCountExceed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    return-void

    .line 157
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dex Help #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mInterval:[I

    if-eqz v0, :cond_61

    array-length v0, v0

    if-lez v0, :cond_61

    .line 161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "mInterval="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mInterval:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4d
    if-ge v2, v1, :cond_5c

    aget v3, v0, v2

    .line 165
    .local v3, "interval":I
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 166
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .end local v3    # "interval":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 168
    :cond_5c
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    :cond_61
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "targetTask : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public isCountExceed()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mIsCountExceed:Z

    return v0
.end method

.method public needToShow()Z
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->isForceResizableEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mIsCountExceed:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mInterval:[I

    iget v2, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mCount:I

    add-int/2addr v2, v1

    .line 143
    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 142
    :goto_1c
    return v1
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

    iget-object v2, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mTargetTask:Lcom/android/server/wm/Task;

    if-ne v1, v2, :cond_1a

    .line 105
    iget-object v2, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mH:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->resetTargetTask()V

    .line 109
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->increaseCount()V

    .line 110
    invoke-direct {p0}, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->updateCountExceed()V

    .line 111
    return-void
.end method

.method public retrieveSettings(I)V
    .registers 5
    .param p1, "currentUserId"    # I

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dex_labs_maximize_help_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mCount:I

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mInterval:[I

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->updateCountExceed()V

    .line 64
    return-void
.end method

.method public setHandler(Lcom/android/server/wm/DexHelpController$H;)V
    .registers 2
    .param p1, "h"    # Lcom/android/server/wm/DexHelpController$H;

    .line 177
    iput-object p1, p0, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->mH:Landroid/os/Handler;

    .line 178
    return-void
.end method

.method public timeout()V
    .registers 3

    .line 148
    const-string v0, "DexLabsMaximizeHelpRecord"

    const-string/jumbo v1, "resetTargetTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/android/server/wm/DexLabsMaximizeHelpRecord;->resetTargetTask()V

    .line 150
    return-void
.end method
