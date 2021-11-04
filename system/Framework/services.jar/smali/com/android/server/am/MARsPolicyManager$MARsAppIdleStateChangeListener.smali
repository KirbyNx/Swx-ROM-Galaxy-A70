.class Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MARsAppIdleStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method private constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .registers 2

    .line 1271
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsPolicyManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p2, "x1"    # Lcom/android/server/am/MARsPolicyManager$1;

    .line 1271
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 1274
    const/4 v0, 0x0

    .line 1275
    .local v0, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppIdleStateChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|bucket : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MARsPolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_2e
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1277
    :try_start_31
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;
    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->access$400(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPkgMap;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    .line 1278
    .local v2, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v2, :cond_14d

    .line 1279
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14b

    .line 1280
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    const/16 v4, 0x100

    if-ne v3, v4, :cond_50

    goto/16 :goto_14b

    .line 1281
    :cond_50
    const/16 v3, 0x28

    if-lt p4, v3, :cond_c5

    .line 1282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 1283
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1284
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1285
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1286
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1287
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    move-object v0, v3

    .line 1288
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v3, :cond_14d

    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update resetTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14d

    .line 1289
    :cond_c5
    const/16 v3, 0xa

    if-gt p4, v3, :cond_14d

    .line 1290
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v3

    if-nez v3, :cond_14d

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    const/16 v4, 0x400

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_14d

    .line 1291
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_14d

    .line 1292
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1293
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1294
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_103

    const-string v4, "1"

    goto :goto_105

    :cond_103
    const-string v4, "0"

    :goto_105
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1295
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1296
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1297
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1298
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1299
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 1300
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    move-object v0, v3

    goto :goto_14d

    .line 1280
    :cond_14b
    :goto_14b
    monitor-exit v1

    return-void

    .line 1305
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_14d
    :goto_14d
    monitor-exit v1
    :try_end_14e
    .catchall {:try_start_31 .. :try_end_14e} :catchall_158

    .line 1306
    if-eqz v0, :cond_157

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 1307
    :cond_157
    return-void

    .line 1305
    :catchall_158
    move-exception v2

    :try_start_159
    monitor-exit v1
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_158

    throw v2
.end method
