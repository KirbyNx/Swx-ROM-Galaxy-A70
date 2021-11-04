.class public Lcom/android/server/net/UrspService;
.super Landroid/net/IUrspManager$Stub;
.source "UrspService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspService$UrspHandler;
    }
.end annotation


# static fields
.field public static final ATTR_MDO_STATE:Ljava/lang/String; = "mdo-state"

.field public static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field public static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final DBG:Z = true

.field private static final MAX_URSP_LOG_HISTORY:I = 0xc8

.field public static final MSG_FACTORY_RESET_DONE:I = 0x2715

.field private static final MSG_INIT_URSP_SERVICE:I = 0x2711

.field private static final MSG_REQUEST_MDO_CONNECTION:I = 0x2712

.field public static final MSG_SET_URSP_DNN:I = 0x2716

.field public static final MSG_SET_URSP_RULES_DONE:I = 0x2714

.field public static final MSG_SET_URSP_RULE_DONE:I = 0x2713

.field private static final TAG:Ljava/lang/String; = "UrspService"

.field public static final TAG_FOC_POLICY:Ljava/lang/String; = "foc-policy"

.field public static final TAG_FOC_UID_POLICY:Ljava/lang/String; = "foc-uid-policy"

.field public static final TAG_MDO_BLOCKLIST_POLICY:Ljava/lang/String; = "mdo-blocklist-policy"

.field public static final TAG_MDO_POLICY:Ljava/lang/String; = "mdo-policy"

.field public static final TAG_MDO_UID_POLICY:Ljava/lang/String; = "mdo-uid-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field public static final VDBG:Z = true

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0x1


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCores:[Lcom/android/server/net/UrspCore;

.field private mHandler:Landroid/os/Handler;

.field private mNetStats:Lcom/android/server/net/UrspNetworkStatsService;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mOperatorSvc:Lcom/android/server/net/UrspOperatorService;

.field private final mPoliciesSecondLock:Ljava/lang/Object;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final mPolicyLocked:Ljava/lang/Object;

.field private mUrspConn:Lcom/android/server/net/UrspConnectivityController;

.field private mUrspNms:Lcom/android/server/net/UrspNetworkManagementService;

.field private final mUrspmObservedHistory:Landroid/util/LocalLog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p4, "networkManagement"    # Landroid/os/INetworkManagementService;

    .line 150
    invoke-direct {p0}, Landroid/net/IUrspManager$Stub;-><init>()V

    .line 125
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mPoliciesSecondLock:Ljava/lang/Object;

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/net/UrspCore;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    .line 151
    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    .line 152
    const-string/jumbo v0, "missing activityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mActivityManager:Landroid/app/IActivityManager;

    .line 153
    const-string/jumbo v0, "missing networkManagement"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 154
    const-string/jumbo v0, "missing networkStats"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkStatsService;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/UrspService;)[Lcom/android/server/net/UrspCore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/UrspService;

    .line 92
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/net/UrspService;ILjava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/UrspService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/UrspService;->onSetUrspDnn(ILjava/util/List;)V

    return-void
.end method

.method private checkAPN(Ljava/lang/String;Landroid/content/ContentResolver;)I
    .registers 13
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .line 615
    const/4 v0, -0x1

    .line 616
    .local v0, "id":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAPN: apn carrier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UrspService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string/jumbo v9, "name"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v7, v3

    const-string/jumbo v6, "name=?"

    const/4 v8, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 620
    .local v3, "c":Landroid/database/Cursor;
    if-nez v3, :cond_35

    .line 621
    const/4 v0, -0x1

    goto :goto_70

    .line 623
    :cond_35
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 624
    .local v4, "record_cnt":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAPN: apn num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    if-nez v4, :cond_51

    .line 626
    const/4 v0, -0x1

    goto :goto_6d

    .line 627
    :cond_51
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 628
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 630
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 633
    :cond_6d
    :goto_6d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 635
    .end local v4    # "record_cnt":I
    :goto_70
    return v0
.end method

.method private checkPermission()Z
    .registers 8

    .line 647
    const/4 v0, 0x1

    .line 648
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 649
    .local v1, "uid":I
    const/4 v2, 0x0

    .line 651
    .local v2, "hasPermission":Z
    const/16 v3, 0x2710

    if-le v1, v3, :cond_44

    .line 653
    :try_start_e
    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    if-eqz v3, :cond_21

    .line 654
    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_APN_SETTINGS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    move v3, v4

    :goto_20
    move v2, v3

    .line 658
    :cond_21
    invoke-virtual {p0, v1}, Lcom/android/server/net/UrspService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 660
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 661
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v6
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_33} :catch_39

    if-nez v6, :cond_38

    if-nez v2, :cond_38

    .line 662
    const/4 v0, 0x0

    .line 667
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_38
    goto :goto_44

    .line 664
    :catch_39
    move-exception v3

    .line 665
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "UrspService"

    const-string v5, "checkPermission has exception."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 669
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_44
    :goto_44
    if-nez v0, :cond_62

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPermission() uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 670
    :cond_62
    return v0
.end method

.method private convertIntegerIPtypeToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "ipType"    # I

    .line 602
    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    .line 610
    const-string v0, "IP"

    return-object v0

    .line 608
    :cond_9
    const-string v0, "IPV4V6"

    return-object v0

    .line 606
    :cond_c
    const-string v0, "IPV6"

    return-object v0
.end method

.method private deleteAPNIfExist(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 9
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .line 639
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/UrspService;->checkAPN(Ljava/lang/String;Landroid/content/ContentResolver;)I

    move-result v0

    .line 640
    .local v0, "checkedID":I
    if-ltz v0, :cond_47

    .line 641
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    invoke-virtual {p2, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apn Check("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " <- Delete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UrspService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_47
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isAvailableUrspRuleCall(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 720
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v0

    return v0
.end method

.method private isAvailableUrspRuleCall(IZ)Z
    .registers 6
    .param p1, "type"    # I
    .param p2, "needCheckPermission"    # Z

    .line 724
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_5

    return v0

    .line 725
    :cond_5
    if-gez p1, :cond_8

    return v0

    .line 726
    :cond_8
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v1, v1, p1

    if-nez v1, :cond_f

    return v0

    .line 727
    :cond_f
    if-eqz p2, :cond_35

    invoke-direct {p0}, Lcom/android/server/net/UrspService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_35

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") does not have permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 729
    return v0

    .line 731
    :cond_35
    const/4 v0, 0x1

    return v0
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 747
    const-string v0, "UrspService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 751
    const-string v0, "UrspService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void
.end method

.method private onSetUrspDnn(ILjava/util/List;)V
    .registers 19
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)V"
        }
    .end annotation

    .line 535
    .local p2, "apnSettings":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .line 536
    .local v2, "apnNum":I
    const/4 v3, 0x1

    const-string v4, "UrspService"

    if-eq v1, v3, :cond_14

    .line 537
    const-string/jumbo v3, "onSetUrspDnn, type is not URSP_RULE_FOC"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void

    .line 540
    :cond_14
    if-gtz v2, :cond_1d

    .line 541
    const-string/jumbo v3, "onSetUrspDnn, apn size is zero"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 545
    :cond_1d
    iget-object v5, v0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 546
    .local v5, "resolver":Landroid/content/ContentResolver;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSetUrspDnn, apnNum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/data/ApnSetting;

    .line 548
    .local v7, "apn":Landroid/telephony/data/ApnSetting;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSetUrspDnn, apnSetting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 550
    .local v8, "values":Landroid/content/ContentValues;
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v5}, Lcom/android/server/net/UrspService;->deleteAPNIfExist(Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 552
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 555
    .local v9, "mccmnc":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 556
    const-string/jumbo v10, "onSetUrspDnn, mccmnc is empty"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    goto :goto_3c

    .line 558
    :cond_7a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    const-string/jumbo v12, "onSetUrspDnn, mnc: "

    const-string/jumbo v13, "onSetUrspDnn, mcc: "

    const/4 v14, 0x3

    const/4 v15, 0x0

    if-ne v10, v11, :cond_bb

    .line 559
    invoke-virtual {v9, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 560
    .local v10, "mcc":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v14

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 561
    .local v11, "mnc":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 563
    .end local v10    # "mcc":Ljava/lang/String;
    .end local v11    # "mnc":Ljava/lang/String;
    :cond_bb
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1d1

    .line 564
    invoke-virtual {v9, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 565
    .restart local v10    # "mcc":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 566
    .restart local v11    # "mnc":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_f4
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "name"

    invoke-virtual {v8, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string/jumbo v12, "mcc"

    invoke-virtual {v8, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string/jumbo v12, "mnc"

    invoke-virtual {v8, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string/jumbo v12, "numeric"

    invoke-virtual {v8, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    nop

    .line 578
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v12

    invoke-direct {v0, v12}, Lcom/android/server/net/UrspService;->convertIntegerIPtypeToString(I)Ljava/lang/String;

    move-result-object v12

    .line 577
    const-string/jumbo v13, "protocol"

    invoke-virtual {v8, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    nop

    .line 580
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v12

    invoke-direct {v0, v12}, Lcom/android/server/net/UrspService;->convertIntegerIPtypeToString(I)Ljava/lang/String;

    move-result-object v12

    .line 579
    const-string/jumbo v13, "roaming_protocol"

    invoke-virtual {v8, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v12, "bearer"

    const-string v13, "0"

    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/16 v12, 0xe

    invoke-static {v12}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v12

    const/16 v13, 0x13

    .line 583
    invoke-static {v13}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v13

    or-int/2addr v12, v13

    const/16 v13, 0x14

    .line 584
    invoke-static {v13}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v13

    or-int/2addr v12, v13

    .line 585
    .local v12, "bearer_bitmask":I
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "bearer_bitmask"

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "apn"

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "user"

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "password"

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "authtype"

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getProxyAddress()Ljava/net/InetAddress;

    move-result-object v13

    if-nez v13, :cond_185

    const-string v13, ""

    goto :goto_18d

    .line 591
    :cond_185
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getProxyAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v13

    .line 590
    :goto_18d
    const-string/jumbo v14, "proxy"

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "port"

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v14, "user_visible"

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    if-ne v1, v3, :cond_1b5

    .line 595
    const-string/jumbo v13, "type"

    const-string v14, "foc"

    invoke-virtual {v8, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_1b5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onSetUrspDnn, try to add apn - values: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v13, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v13, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 598
    .end local v7    # "apn":Landroid/telephony/data/ApnSetting;
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v9    # "mccmnc":Ljava/lang/String;
    .end local v10    # "mcc":Ljava/lang/String;
    .end local v11    # "mnc":Ljava/lang/String;
    .end local v12    # "bearer_bitmask":I
    goto/16 :goto_3c

    .line 569
    .restart local v7    # "apn":Landroid/telephony/data/ApnSetting;
    .restart local v8    # "values":Landroid/content/ContentValues;
    .restart local v9    # "mccmnc":Ljava/lang/String;
    :cond_1d1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onSetUrspDnn, mccmnc length is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", continue"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    goto/16 :goto_3c

    .line 599
    .end local v7    # "apn":Landroid/telephony/data/ApnSetting;
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v9    # "mccmnc":Ljava/lang/String;
    :cond_1f1
    return-void
.end method

.method private readPolicy()V
    .registers 14

    .line 354
    const-string/jumbo v0, "readPolicy"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 355
    const/4 v0, -0x1

    .line 356
    .local v0, "mdoState":I
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    const/4 v2, 0x0

    .line 359
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_d
    iget-object v5, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    move-object v2, v5

    .line 360
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 361
    .local v5, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 364
    const/4 v6, 0x1

    .line 365
    .local v6, "version":I
    :goto_22
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    if-eq v7, v4, :cond_143

    .line 366
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 368
    .local v7, "tag":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v8, v9, :cond_140

    .line 369
    const-string/jumbo v9, "policy-list"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    .line 371
    const-string/jumbo v9, "version"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    move v6, v9

    .line 372
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readPolicy, version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    goto/16 :goto_141

    .line 373
    :cond_58
    const-string/jumbo v9, "mdo-policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    .line 375
    const-string/jumbo v9, "mdo-state"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    .line 376
    .local v9, "state":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readPolicy, mdoState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    .line 377
    if-eqz v9, :cond_81

    move v10, v4

    goto :goto_82

    :cond_81
    move v10, v3

    :goto_82
    move v0, v10

    .line 379
    .end local v9    # "state":Z
    goto/16 :goto_141

    :cond_85
    const-string/jumbo v9, "mdo-uid-policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c4

    .line 381
    const-string/jumbo v9, "uid"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 382
    .local v9, "uid":I
    const-string/jumbo v10, "policy"

    invoke-static {v5, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    .line 383
    .local v10, "policy":Z
    if-eqz v10, :cond_a5

    .line 384
    iget-object v11, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v11, v11, v3

    invoke-virtual {v11, v10, v9}, Lcom/android/server/net/UrspCore;->setUrspRule(ZI)V

    .line 386
    :cond_a5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readPolicy, mMdoUidRule - uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", Policy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    .line 387
    .end local v9    # "uid":I
    .end local v10    # "policy":Z
    goto/16 :goto_141

    :cond_c4
    const-string/jumbo v9, "mdo-blocklist-policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_102

    .line 388
    const-string/jumbo v9, "uid"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 389
    .restart local v9    # "uid":I
    const-string/jumbo v10, "policy"

    invoke-static {v5, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    .line 390
    .restart local v10    # "policy":Z
    if-eqz v10, :cond_e4

    .line 391
    iget-object v11, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v11, v11, v3

    invoke-virtual {v11, v10, v9}, Lcom/android/server/net/UrspCore;->setUrspBlockListUidRule(ZI)V

    .line 393
    :cond_e4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readPolicy, mMdoBlockListUidRule - uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", Policy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    .end local v9    # "uid":I
    .end local v10    # "policy":Z
    goto :goto_13f

    .line 394
    :cond_102
    const-string v9, "foc-uid-policy"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13f

    .line 396
    const-string/jumbo v9, "uid"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 397
    .restart local v9    # "uid":I
    const-string/jumbo v10, "policy"

    invoke-static {v5, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    .line 398
    .restart local v10    # "policy":Z
    if-eqz v10, :cond_121

    .line 399
    iget-object v11, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v11, v11, v4

    invoke-virtual {v11, v10, v9}, Lcom/android/server/net/UrspCore;->setUrspRule(ZI)V

    .line 401
    :cond_121
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readPolicy, mFocUidRule - uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", Policy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13e} :catch_162
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13e} :catch_149
    .catchall {:try_start_d .. :try_end_13e} :catchall_147

    .line 402
    .end local v9    # "uid":I
    .end local v10    # "policy":Z
    goto :goto_141

    .line 394
    :cond_13f
    :goto_13f
    goto :goto_141

    .line 403
    :cond_140
    nop

    .line 406
    .end local v7    # "tag":Ljava/lang/String;
    :goto_141
    goto/16 :goto_22

    .line 412
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "version":I
    .end local v8    # "type":I
    :cond_143
    :try_start_143
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_18d

    goto :goto_17a

    :catchall_147
    move-exception v3

    goto :goto_188

    .line 409
    :catch_149
    move-exception v5

    .line 410
    .local v5, "e":Ljava/lang/Exception;
    :try_start_14a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to read policy file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V
    :try_end_15e
    .catchall {:try_start_14a .. :try_end_15e} :catchall_147

    .line 412
    .end local v5    # "e":Ljava/lang/Exception;
    :try_start_15e
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_161
    .catchall {:try_start_15e .. :try_end_161} :catchall_18d

    goto :goto_17a

    .line 407
    :catch_162
    move-exception v5

    .line 408
    .local v5, "e":Ljava/io/IOException;
    :try_start_163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO fail to read policy file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V
    :try_end_177
    .catchall {:try_start_163 .. :try_end_177} :catchall_147

    .line 412
    .end local v5    # "e":Ljava/io/IOException;
    :try_start_177
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 413
    :goto_17a
    nop

    .line 414
    .end local v2    # "fis":Ljava/io/FileInputStream;
    monitor-exit v1
    :try_end_17c
    .catchall {:try_start_177 .. :try_end_17c} :catchall_18d

    .line 417
    const/4 v1, -0x1

    if-eq v0, v1, :cond_187

    .line 418
    if-ne v0, v4, :cond_182

    goto :goto_183

    :cond_182
    move v4, v3

    :goto_183
    move v1, v4

    .line 419
    .local v1, "state":Z
    invoke-virtual {p0, v3, v1}, Lcom/android/server/net/UrspService;->setUrspMode(IZ)V

    .line 421
    .end local v1    # "state":Z
    :cond_187
    return-void

    .line 412
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_188
    :try_start_188
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 413
    nop

    .end local v0    # "mdoState":I
    .end local p0    # "this":Lcom/android/server/net/UrspService;
    throw v3

    .line 414
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "mdoState":I
    .restart local p0    # "this":Lcom/android/server/net/UrspService;
    :catchall_18d
    move-exception v2

    monitor-exit v1
    :try_end_18f
    .catchall {:try_start_188 .. :try_end_18f} :catchall_18d

    throw v2
.end method


# virtual methods
.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 4
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .line 158
    const-string v0, "bindConnectivityManager Called"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 161
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v0}, Lcom/android/server/net/UrspConnectivityController;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 162
    :cond_17
    return-void
.end method

.method public clearUrspBlockListUidRule(I)V
    .registers 3
    .param p1, "type"    # I

    .line 268
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 269
    :cond_7
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->clearUrspBlockListUidRule()V

    .line 270
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    const-string v1, "UrspService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 436
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 438
    .local v0, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_15
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_23

    aget-object v5, v2, v4

    .line 440
    .local v5, "core":Lcom/android/server/net/UrspCore;
    invoke-virtual {v5, v0}, Lcom/android/server/net/UrspCore;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 439
    .end local v5    # "core":Lcom/android/server/net/UrspCore;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 442
    :cond_23
    const-string v2, "Ursp Logs (most recent first):"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 444
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 446
    monitor-exit v1

    .line 447
    return-void

    .line 446
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public factoryReset()V
    .registers 3

    .line 425
    invoke-direct {p0}, Lcom/android/server/net/UrspService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_24

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not have permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 427
    return-void

    .line 429
    :cond_24
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->factoryReset()V

    .line 430
    return-void
.end method

.method public getAllUrspBlockListUidsRule(I)[I
    .registers 3
    .param p1, "type"    # I

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    .line 263
    :cond_9
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getAllUrspBlockListUidsRule()[I

    move-result-object v0

    return-object v0
.end method

.method public getAllUrspRule(I)[I
    .registers 3
    .param p1, "type"    # I

    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getAllUrspRule()[I

    move-result-object v0

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/IConnectivityManager;
    .registers 2

    .line 706
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mConnManager:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 714
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 717
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J
    .registers 19
    .param p1, "type"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "start"    # J
    .param p6, "end"    # J

    .line 291
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    return-wide v1

    .line 292
    :cond_9
    move-object v0, p0

    iget-object v3, v0, Lcom/android/server/net/UrspService;->mNetStats:Lcom/android/server/net/UrspNetworkStatsService;

    if-eqz v3, :cond_19

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/net/UrspNetworkStatsService;->getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J

    move-result-wide v1

    return-wide v1

    .line 293
    :cond_19
    return-wide v1
.end method

.method public getPackageNameForUid(I)Ljava/lang/String;
    .registers 6
    .param p1, "uid"    # I

    .line 674
    const-string v0, ""

    .line 675
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_30

    .line 677
    :try_start_6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 678
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "packageList":[Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 680
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_15

    move-object v0, v2

    .line 684
    .end local v1    # "packageList":[Ljava/lang/String;
    :cond_14
    goto :goto_30

    .line 682
    :catch_15
    move-exception v1

    .line 683
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at getPackageName API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UrspService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_30
    :goto_30
    return-object v0
.end method

.method public getPoliciesSecondLocked()Ljava/lang/Object;
    .registers 2

    .line 694
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mPoliciesSecondLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPolicyLocked()Ljava/lang/Object;
    .registers 2

    .line 690
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    return-object v0
.end method

.method public getServerInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "type"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 284
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, " "

    return-object v0

    .line 285
    :cond_9
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mOperatorSvc:Lcom/android/server/net/UrspOperatorService;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/UrspOperatorService;->getServerInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    return-object v0
.end method

.method public getUrspMode(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 202
    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getUrspMode()Z

    move-result v0

    return v0
.end method

.method public getUrspNetId(I)I
    .registers 4
    .param p1, "type"    # I

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 238
    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/net/UrspCore;->getUrspNetId()I

    move-result v0

    return v0
.end method

.method public getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;
    .registers 2

    .line 702
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspNms:Lcom/android/server/net/UrspNetworkManagementService;

    return-object v0
.end method

.method public getUrspmObservedHistory()Landroid/util/LocalLog;
    .registers 2

    .line 710
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method public isUrspEnabledForUid(II)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "uid"    # I

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/server/net/UrspService;->getUrspMode(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/UrspService;->isUrspRuleEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isUrspRuleEnabled(II)Z
    .registers 5
    .param p1, "type"    # I
    .param p2, "uid"    # I

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 232
    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->isUrspRuleEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerUrspAppListener(ILandroid/net/IUrspAppListener;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "listener"    # Landroid/net/IUrspAppListener;

    .line 736
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 737
    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->registerUrspAppListner(Landroid/net/IUrspAppListener;)V

    .line 738
    return-void
.end method

.method public registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/IUrspConnectionListener;

    .line 274
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    invoke-virtual {v0, p1}, Lcom/android/server/net/UrspConnectivityController;->registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    .line 275
    return-void
.end method

.method public requestPduSession(IZLandroid/os/Messenger;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "enabled"    # Z
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;

    .line 308
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 309
    :cond_7
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    return-void

    .line 310
    :cond_b
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/net/UrspCore;->requestPduSession(IZLandroid/os/Messenger;Landroid/os/IBinder;)V

    .line 311
    return-void
.end method

.method public setUrspBlockListUidRule(IZI)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "blocklisted"    # Z
    .param p3, "uid"    # I

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    .line 252
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspBlockListUidRule, UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocklisted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUrspBlockListUidRule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    if-nez p2, :cond_46

    const-string v3, " - disable"

    goto :goto_48

    :cond_46
    const-string v3, " - enable"

    :goto_48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0, p3}, Lcom/android/server/net/UrspCore;->setUrspRule(ZI)V

    .line 257
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/net/UrspCore;->setUrspBlockListUidRule(ZI)V

    .line 258
    return-void
.end method

.method public setUrspDnn(ILjava/util/List;)V
    .registers 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p2, "apnSettings":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2716

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 302
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 304
    return-void
.end method

.method public setUrspMode(IZ)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "enabled"    # Z

    .line 193
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 194
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspMode - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_46

    const-string v2, "disable"

    goto :goto_48

    :cond_46
    const-string v2, "enable"

    :goto_48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->setUrspMode(Z)V

    .line 197
    return-void
.end method

.method public setUrspNetId(II)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "netId"    # I

    .line 243
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 244
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetId, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", netId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspNetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", NetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->setUrspNetId(I)V

    .line 247
    return-void
.end method

.method public setUrspRule(IZI)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "enabled"    # Z
    .param p3, "uid"    # I

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 218
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRule, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspRule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", UID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p2, :cond_51

    const-string v2, " - disable"

    goto :goto_53

    :cond_51
    const-string v2, " - enable"

    :goto_53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/net/UrspCore;->setUrspRule(ZI)V

    .line 221
    return-void
.end method

.method public setUrspRules(I[I)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "uids"    # [I

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 208
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/net/UrspService;->getUrspMode(I)Z

    move-result v0

    .line 210
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUrspRules, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", uids - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mUrspmObservedHistory:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUrspRules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0, p2}, Lcom/android/server/net/UrspCore;->setUrspRules(Z[I)V

    .line 213
    return-void
.end method

.method public systemReady()V
    .registers 8

    .line 165
    const-string/jumbo v0, "systemReady Called"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 169
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 170
    .local v1, "mLooper":Landroid/os/Looper;
    if-eqz v1, :cond_1e

    .line 171
    new-instance v2, Lcom/android/server/net/UrspService$UrspHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/UrspService$UrspHandler;-><init>(Lcom/android/server/net/UrspService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mHandler:Landroid/os/Handler;

    goto :goto_24

    .line 173
    :cond_1e
    const-string/jumbo v2, "handlerThread.getLooper() returned null"

    invoke-static {v2}, Lcom/android/server/net/UrspService;->logn(Ljava/lang/String;)V

    .line 176
    :goto_24
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    new-instance v3, Lcom/android/server/net/MdoCore;

    invoke-direct {v3, p0}, Lcom/android/server/net/MdoCore;-><init>(Lcom/android/server/net/UrspService;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 177
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    const/4 v3, 0x1

    new-instance v5, Lcom/android/server/net/FocCore;

    invoke-direct {v5, p0}, Lcom/android/server/net/FocCore;-><init>(Lcom/android/server/net/UrspService;)V

    aput-object v5, v2, v3

    .line 179
    new-instance v2, Lcom/android/server/net/UrspConnectivityController;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/net/UrspConnectivityController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    .line 180
    new-instance v2, Lcom/android/server/net/UrspNetworkManagementService;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/UrspService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-direct {v2, v3, v5}, Lcom/android/server/net/UrspNetworkManagementService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mUrspNms:Lcom/android/server/net/UrspNetworkManagementService;

    .line 181
    new-instance v2, Lcom/android/server/net/UrspOperatorService;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/net/UrspOperatorService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mOperatorSvc:Lcom/android/server/net/UrspOperatorService;

    .line 182
    new-instance v2, Lcom/android/server/net/UrspNetworkStatsService;

    iget-object v3, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/UrspService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-direct {v2, v3, v5}, Lcom/android/server/net/UrspNetworkStatsService;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mNetStats:Lcom/android/server/net/UrspNetworkStatsService;

    .line 184
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/server/net/UrspService;->getSystemDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "ursppolicy.xml"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 186
    invoke-direct {p0}, Lcom/android/server/net/UrspService;->readPolicy()V

    .line 188
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/server/net/UrspCore;->systemReady()V

    .line 189
    return-void
.end method

.method public unregisterUrspAppListener(ILandroid/net/IUrspAppListener;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "listener"    # Landroid/net/IUrspAppListener;

    .line 742
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/UrspService;->isAvailableUrspRuleCall(IZ)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 743
    :cond_8
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspCore;->unregisterUrspAppListner(Landroid/net/IUrspAppListener;)V

    .line 744
    return-void
.end method

.method public unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/IUrspConnectionListener;

    .line 279
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mUrspConn:Lcom/android/server/net/UrspConnectivityController;

    invoke-virtual {v0, p1}, Lcom/android/server/net/UrspConnectivityController;->unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    .line 280
    return-void
.end method

.method public writePolicy()V
    .registers 9

    .line 319
    const-string/jumbo v0, "writePolicy"

    invoke-static {v0}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "fos":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mPolicyLocked:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_a
    iget-object v2, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 326
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 327
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 328
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 331
    const-string/jumbo v4, "policy-list"

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    const-string/jumbo v4, "version"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 335
    iget-object v3, p0, Lcom/android/server/net/UrspService;->mCores:[Lcom/android/server/net/UrspCore;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_38
    if-ge v6, v4, :cond_42

    aget-object v7, v3, v6

    .line 336
    .local v7, "core":Lcom/android/server/net/UrspCore;
    invoke-virtual {v7, v0, v2}, Lcom/android/server/net/UrspCore;->writePolicy(Ljava/io/FileOutputStream;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 335
    .end local v7    # "core":Lcom/android/server/net/UrspCore;
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 340
    :cond_42
    const-string/jumbo v3, "policy-list"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 343
    iget-object v3, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_50} :catch_53
    .catchall {:try_start_a .. :try_end_50} :catchall_51

    .line 349
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_6f

    .line 350
    :catchall_51
    move-exception v2

    goto :goto_71

    .line 344
    :catch_53
    move-exception v2

    .line 345
    .local v2, "e":Ljava/io/IOException;
    if-eqz v0, :cond_5b

    .line 346
    :try_start_56
    iget-object v3, p0, Lcom/android/server/net/UrspService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 348
    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to write policy file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/UrspService;->log(Ljava/lang/String;)V

    .line 350
    .end local v2    # "e":Ljava/io/IOException;
    :goto_6f
    monitor-exit v1

    .line 351
    return-void

    .line 350
    :goto_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_56 .. :try_end_72} :catchall_51

    throw v2
.end method
