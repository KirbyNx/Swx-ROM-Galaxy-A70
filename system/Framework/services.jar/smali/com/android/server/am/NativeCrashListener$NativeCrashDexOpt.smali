.class Lcom/android/server/am/NativeCrashListener$NativeCrashDexOpt;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/NativeCrashListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeCrashDexOpt"
.end annotation


# static fields
.field private static final DEXOPT_DEBUG:Z = false

.field private static final maxDexoptListSize:I = 0x4

.field private static final maxListSize:I = 0x8

.field private static final maxOccurredCount:I = 0x4

.field private static final maxTimeGap:J = 0xf0L


# instance fields
.field mApp:Lcom/android/server/am/ProcessRecord;

.field final synthetic this$0:Lcom/android/server/am/NativeCrashListener;


# direct methods
.method constructor <init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/NativeCrashListener;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 144
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashDexOpt;->this$0:Lcom/android/server/am/NativeCrashListener;

    .line 145
    const-string v0, "NativeCrashDexOpt"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 146
    iput-object p2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashDexOpt;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 147
    return-void
.end method

.method private doForceDexOpt(Ljava/lang/String;)V
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;

    .line 155
    const-string v0, "CRASH_DEXOPT"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 156
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v8, :cond_46

    .line 157
    const/4 v9, 0x1

    .line 159
    .local v9, "result":Z
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to re-complie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v3, 0x1

    const-string/jumbo v4, "speed-profile"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v1

    move v9, v1

    .line 163
    if-nez v9, :cond_41

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dexopt fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_41} :catch_42

    .line 168
    :cond_41
    goto :goto_46

    .line 166
    :catch_42
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "result":Z
    :cond_46
    :goto_46
    return-void
.end method

.method private makeCrashPackageList()V
    .registers 21

    .line 173
    move-object/from16 v1, p0

    # getter for: Lcom/android/server/am/NativeCrashListener;->lock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 175
    :try_start_7
    # getter for: Lcom/android/server/am/NativeCrashListener;->mCrashPackage:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 176
    .local v0, "crashPackageSize":I
    # getter for: Lcom/android/server/am/NativeCrashListener;->mDexOptedPackage:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 177
    .local v3, "dexoptPackageSize":I
    const/4 v4, 0x0

    .line 189
    .local v4, "hadCrashPackage":Z
    iget-object v5, v1, Lcom/android/server/am/NativeCrashListener$NativeCrashDexOpt;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 190
    .local v5, "curProcessName":Ljava/lang/String;
    if-lez v0, :cond_b8

    .line 191
    const/4 v7, 0x0

    .line 192
    .local v7, "index":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 193
    .local v8, "occurredTime":J
    # getter for: Lcom/android/server/am/NativeCrashListener;->mCrashPackage:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$100()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_aa

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/NativeCrashListener$CrashPackage;

    .line 194
    .local v11, "cp":Lcom/android/server/am/NativeCrashListener$CrashPackage;
    iget-object v13, v11, Lcom/android/server/am/NativeCrashListener$CrashPackage;->pkg:Ljava/lang/String;

    .line 195
    .local v13, "c_pkg":Ljava/lang/String;
    if-eqz v13, :cond_a6

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a6

    .line 196
    const/4 v4, 0x1

    .line 198
    iget-wide v14, v11, Lcom/android/server/am/NativeCrashListener$CrashPackage;->mTimeStamp:J

    sub-long v14, v8, v14

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    double-to-long v14, v14

    .line 200
    .local v14, "timeGap":J
    const-wide/16 v16, 0xf0

    cmp-long v16, v14, v16

    if-gez v16, :cond_9e

    .line 201
    invoke-virtual {v11}, Lcom/android/server/am/NativeCrashListener$CrashPackage;->increaseCount()I

    move-result v6

    const/4 v12, 0x4

    if-lt v6, v12, :cond_a6

    .line 202
    const/4 v6, 0x0

    .line 204
    .local v6, "hadAlreadyDexoptPackage":Z
    # getter for: Lcom/android/server/am/NativeCrashListener;->mDexOptedPackage:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$200()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_65
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v18

    .line 205
    .local v19, "dexOptProcess":Ljava/lang/String;
    move-object/from16 v12, v19

    .end local v19    # "dexOptProcess":Ljava/lang/String;
    .local v12, "dexOptProcess":Ljava/lang/String;
    invoke-virtual {v12, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7d

    .line 206
    const/4 v6, 0x1

    .line 207
    goto :goto_7f

    .line 209
    .end local v12    # "dexOptProcess":Ljava/lang/String;
    :cond_7d
    const/4 v12, 0x4

    goto :goto_65

    .line 210
    :cond_7f
    :goto_7f
    if-nez v6, :cond_96

    .line 212
    invoke-direct {v1, v13}, Lcom/android/server/am/NativeCrashListener$NativeCrashDexOpt;->doForceDexOpt(Ljava/lang/String;)V

    .line 213
    const/4 v10, 0x4

    if-lt v3, v10, :cond_8f

    .line 214
    # getter for: Lcom/android/server/am/NativeCrashListener;->mDexOptedPackage:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$200()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 216
    :cond_8f
    # getter for: Lcom/android/server/am/NativeCrashListener;->mDexOptedPackage:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$200()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_96
    # getter for: Lcom/android/server/am/NativeCrashListener;->mCrashPackage:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$100()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    goto :goto_aa

    .line 223
    .end local v6    # "hadAlreadyDexoptPackage":Z
    :cond_9e
    # getter for: Lcom/android/server/am/NativeCrashListener;->mCrashPackage:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$100()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    goto :goto_aa

    .line 227
    .end local v14    # "timeGap":J
    :cond_a6
    nop

    .end local v11    # "cp":Lcom/android/server/am/NativeCrashListener$CrashPackage;
    .end local v13    # "c_pkg":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    .line 228
    goto :goto_2b

    .line 229
    :cond_aa
    :goto_aa
    if-nez v4, :cond_b8

    .line 231
    const/16 v6, 0x8

    if-ne v0, v6, :cond_b8

    .line 232
    # getter for: Lcom/android/server/am/NativeCrashListener;->mCrashPackage:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$100()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 236
    .end local v7    # "index":I
    .end local v8    # "occurredTime":J
    :cond_b8
    if-nez v4, :cond_d5

    # getter for: Lcom/android/server/am/NativeCrashListener;->mCrashPackage:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$100()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x8

    if-ge v6, v7, :cond_d5

    .line 237
    new-instance v6, Lcom/android/server/am/NativeCrashListener$CrashPackage;

    invoke-direct {v6}, Lcom/android/server/am/NativeCrashListener$CrashPackage;-><init>()V

    .line 238
    .local v6, "cp":Lcom/android/server/am/NativeCrashListener$CrashPackage;
    invoke-virtual {v6, v5}, Lcom/android/server/am/NativeCrashListener$CrashPackage;->setCrashPackageData(Ljava/lang/String;)V

    .line 239
    # getter for: Lcom/android/server/am/NativeCrashListener;->mCrashPackage:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/NativeCrashListener;->access$100()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v0    # "crashPackageSize":I
    .end local v3    # "dexoptPackageSize":I
    .end local v4    # "hadCrashPackage":Z
    .end local v5    # "curProcessName":Ljava/lang/String;
    .end local v6    # "cp":Lcom/android/server/am/NativeCrashListener$CrashPackage;
    :cond_d5
    monitor-exit v2

    .line 254
    return-void

    .line 253
    :catchall_d7
    move-exception v0

    monitor-exit v2
    :try_end_d9
    .catchall {:try_start_7 .. :try_end_d9} :catchall_d7

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 151
    invoke-direct {p0}, Lcom/android/server/am/NativeCrashListener$NativeCrashDexOpt;->makeCrashPackageList()V

    .line 152
    return-void
.end method
