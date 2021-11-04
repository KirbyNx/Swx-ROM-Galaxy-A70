.class public Lcom/android/server/am/mars/database/MARsDBManager;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;,
        Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;,
        Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;,
        Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;,
        Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;,
        Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;
    }
.end annotation


# static fields
.field static final MARS_DB_GETPOLICYCONDITION_MSG:I = 0x5

.field static final MARS_DB_INIT_SETTING_MSG:I = 0x1

.field static final MARS_DB_MIGRATE_MSG:I = 0x8

.field static final MARS_DB_SM_CHANGED_MSG:I = 0x6

.field static final MARS_DB_UPDATE_APP_STARTUP_MSG:I = 0x4

.field static final MARS_DB_UPDATE_NOTI_TIME_MSG:I = 0x7

.field static final MARS_DB_UPDATE_RESETTIME_MSG:I = 0x2

.field static final MARS_DB_UPDATE_RESETTIME_SPECIFIC_MSG:I = 0x3

.field static final SEND_MIGRATE_MSG_DELAY:I = 0x3e8


# instance fields
.field MARsDBVersion:Ljava/lang/String;

.field MARsLocalVersion:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field mAppStartUpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentContext:Landroid/content/Context;

.field mDBCreate:Z

.field private mDBUpdated:Z

.field private mFASDBupdateRunnable:Ljava/lang/Runnable;

.field mIsBigDataRestrictionColumnExist:Z

.field private mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

.field private mMARsDBManagerThread:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;

.field private mRegisteredSmartManagerDefaultAllowedListObserver:Z

.field private mRegisteredSmartManagerForcedAppStandbyObserver:Z

.field private mRegisteredSmartManagerSettingsObserver:Z

.field mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;

.field mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

.field mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mDBUpdated:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mDBCreate:Z

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 230
    new-instance v1, Lcom/android/server/am/mars/database/MARsDBManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/mars/database/MARsDBManager$1;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;)V

    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mFASDBupdateRunnable:Ljava/lang/Runnable;

    .line 931
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager$1;

    .line 26
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsDBManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/mars/database/MARsDBManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;

    .line 26
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initManagedPackagesInternal()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;
    .param p1, "x1"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/mars/database/MARsDBManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;

    .line 26
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->doMigration()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;

    .line 26
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mFASDBupdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/mars/database/MARsDBManager;)Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;

    .line 26
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;)Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;
    .param p1, "x1"    # Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    .line 26
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/am/mars/database/MARsDBManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;
    .param p1, "x1"    # Z

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/mars/database/MARsDBManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;

    .line 26
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgsToSMDB(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # J

    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/mars/database/MARsDBManager;->updateCompHistory(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/mars/database/MARsDBManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;
    .param p1, "x1"    # Z

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->getPolicyDefaultInfoFromSMToMARs(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;

    .line 26
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/mars/database/MARsDBManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/mars/database/MARsDBManager;

    .line 26
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mDBUpdated:Z

    return v0
.end method

.method private doMigration()V
    .registers 5

    .line 356
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string v1, "doMigration send MARS_REQUEST_MIGRATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 359
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/mars/database/FASTableContract;->DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

    const-string v2, "FasDataMigration"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_1e

    .line 363
    :cond_1d
    goto :goto_39

    .line 361
    :catch_1e
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on migrateFasData e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_39
    return-void
.end method

.method private doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 30
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "newOpt"    # Ljava/lang/String;
    .param p5, "fasReason"    # Ljava/lang/String;
    .param p6, "extras"    # Ljava/lang/String;
    .param p7, "resetTime"    # Ljava/lang/String;
    .param p8, "packageType"    # Ljava/lang/String;
    .param p9, "level"    # Ljava/lang/String;
    .param p10, "disableType"    # Ljava/lang/String;
    .param p11, "preBatteryUsage"    # Ljava/lang/String;
    .param p12, "disableReason"    # Ljava/lang/String;

    .line 452
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    if-eqz v2, :cond_1e

    if-nez v3, :cond_26

    .line 453
    :cond_1e
    iget-object v0, v1, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "parameter is error!"

    invoke-static {v0, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_26
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v14, v0

    .line 458
    .local v14, "values":Landroid/content/ContentValues;
    if-eqz v2, :cond_34

    const-string/jumbo v0, "package_name"

    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_34
    if-eqz v3, :cond_3c

    const-string/jumbo v0, "uid"

    invoke-virtual {v14, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_3c
    if-eqz v4, :cond_44

    const-string/jumbo v0, "mode"

    invoke-virtual {v14, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_44
    if-eqz v5, :cond_4c

    const-string/jumbo v0, "new"

    invoke-virtual {v14, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_4c
    if-eqz v6, :cond_54

    const-string/jumbo v0, "reason"

    invoke-virtual {v14, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_54
    if-eqz v7, :cond_5b

    const-string v0, "extras"

    invoke-virtual {v14, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_5b
    if-eqz v8, :cond_63

    const-string/jumbo v0, "resetTime"

    invoke-virtual {v14, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_63
    if-eqz v9, :cond_6b

    const-string/jumbo v0, "packageType"

    invoke-virtual {v14, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_6b
    if-eqz v10, :cond_73

    const-string/jumbo v0, "level"

    invoke-virtual {v14, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_73
    if-eqz v11, :cond_7a

    const-string v0, "disableType"

    invoke-virtual {v14, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_7a
    if-eqz v12, :cond_82

    const-string/jumbo v0, "prevCurrent"

    invoke-virtual {v14, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_82
    if-eqz v13, :cond_89

    const-string v0, "disableReason"

    invoke-virtual {v14, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_89
    const-string/jumbo v15, "package_name=? AND uid=?"

    .line 473
    .local v15, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v2, v0, v16

    const/16 v16, 0x1

    aput-object v3, v0, v16

    move-object/from16 v16, v0

    .line 476
    .local v16, "selectionArgs":[Ljava/lang/String;
    :try_start_99
    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "MARs-self"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 477
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, v1, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_b2} :catch_bc

    move-object/from16 v3, v16

    .end local v16    # "selectionArgs":[Ljava/lang/String;
    .local v3, "selectionArgs":[Ljava/lang/String;
    :try_start_b4
    invoke-virtual {v2, v0, v14, v15, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_ba

    .line 481
    .end local v0    # "uri":Landroid/net/Uri;
    move-object/from16 v16, v3

    goto :goto_de

    .line 478
    :catch_ba
    move-exception v0

    goto :goto_bf

    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .restart local v16    # "selectionArgs":[Ljava/lang/String;
    :catch_bc
    move-exception v0

    move-object/from16 v3, v16

    .line 479
    .end local v16    # "selectionArgs":[Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "selectionArgs":[Ljava/lang/String;
    :goto_bf
    iget-object v2, v1, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .restart local v16    # "selectionArgs":[Ljava/lang/String;
    const-string v3, "Exception with update() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_de
    return-void
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 247
    :catch_e
    move-exception v0

    .line 249
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private getDefaultAllowedListDBValues()V
    .registers 11

    .line 971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v0, "defaultAllowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v7, "type=?"

    .line 973
    .local v7, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "1"

    goto :goto_1a

    :cond_18
    const-string v1, "0"

    :goto_1a
    const/4 v8, 0x0

    aput-object v1, v5, v8

    .line 975
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 977
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

    const-string/jumbo v3, "package_name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_33} :catch_35

    move-object v9, v1

    .line 982
    goto :goto_53

    .line 979
    :catch_35
    move-exception v1

    .line 980
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with contentResolver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 984
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_53
    if-eqz v9, :cond_6c

    .line 985
    :cond_55
    :goto_55
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 986
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 987
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 990
    :cond_69
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 992
    :cond_6c
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->setDefaultAllowList(Ljava/util/ArrayList;)V

    .line 993
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/database/MARsDBManager;
    .registers 1

    .line 67
    # getter for: Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->access$100()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    return-object v0
.end method

.method private getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 516
    if-nez p1, :cond_b

    .line 517
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getMARsSettingsInfoForNotificationTime() context is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void

    .line 521
    :cond_b
    const/4 v0, 0x0

    .line 522
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "key"

    const-string/jumbo v2, "value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 525
    .local v5, "projection":[Ljava/lang/String;
    :try_start_16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_a2

    move-object v0, v1

    .line 529
    nop

    .line 531
    if-eqz v0, :cond_99

    .line 532
    :cond_27
    :goto_27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 533
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 534
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "value":Ljava/lang/String;
    :try_start_3d
    const-string/jumbo v3, "sleep_notification_time"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 538
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->setFirstNotiSentTimeForSleep(J)V

    .line 540
    :cond_51
    const-string v3, "deep_sleep_notification_time"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 541
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->setLastNotiSentTimeForDisabled(J)V

    .line 543
    :cond_64
    const-string/jumbo v3, "sleep_dismiss_time"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 544
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->setFirstNotiSentTimeForSleepDismiss(J)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_78} :catch_79

    .line 548
    :cond_78
    goto :goto_94

    .line 546
    :catch_79
    move-exception v3

    .line 547
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with parseLong : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_94
    goto :goto_27

    .line 551
    :cond_95
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_a1

    .line 553
    :cond_99
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getMARsSettingsInfoForNotificationTime error, no database!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :goto_a1
    return-void

    .line 526
    :catch_a2
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMARsSettingsInfoForNotificationTime : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void
.end method

.method private getPolicyDefaultInfoFromSMToMARs(Z)V
    .registers 9
    .param p1, "boot"    # Z

    .line 558
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->isCompareDBVersion()Z

    move-result v0

    .line 559
    .local v0, "isUsingSMDBValue":Z
    if-eqz v0, :cond_8e

    .line 560
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initMARsSettingsDefinitionInternal()Ljava/util/ArrayList;

    move-result-object v1

    .line 561
    .local v1, "marsSettingsValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;>;"
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 562
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->setMARsSettingsInfoList(Ljava/util/ArrayList;)V

    goto :goto_21

    .line 564
    :cond_1a
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    .line 567
    :goto_21
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initPolicyDefinitionInternal()Ljava/util/ArrayList;

    move-result-object v2

    .line 568
    .local v2, "policyValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;>;"
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_35

    .line 569
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->setPolicy(Ljava/util/ArrayList;)V

    goto :goto_3c

    .line 573
    :cond_35
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    .line 576
    :goto_3c
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initAdjustTargetExcludePackageInternal()Ljava/util/ArrayList;

    move-result-object v3

    .line 577
    .local v3, "excludePackagesValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;>;"
    if-eqz v3, :cond_50

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_50

    .line 578
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V

    goto :goto_57

    .line 582
    :cond_50
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->getExcludeTargetFromDefaultValue()V

    .line 585
    :goto_57
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initAdjustTargetIsCurrentImportantInternal()Ljava/util/ArrayList;

    move-result-object v4

    .line 586
    .local v4, "currentImportantValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;>;"
    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6b

    .line 587
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    goto :goto_72

    .line 591
    :cond_6b
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    .line 594
    :goto_72
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initAdjustRestrictionInternal()Ljava/util/ArrayList;

    move-result-object v5

    .line 595
    .local v5, "restrictionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;>;"
    if-eqz v5, :cond_86

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_86

    .line 596
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustRestriction(Ljava/util/ArrayList;)V

    goto :goto_8d

    .line 598
    :cond_86
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->getAdjustRestrictionFromDefaultValue()V

    .line 600
    .end local v1    # "marsSettingsValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;>;"
    .end local v2    # "policyValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;>;"
    .end local v3    # "excludePackagesValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;>;"
    .end local v4    # "currentImportantValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;>;"
    .end local v5    # "restrictionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;>;"
    :goto_8d
    goto :goto_b1

    .line 602
    :cond_8e
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    .line 603
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    .line 604
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->getExcludeTargetFromDefaultValue()V

    .line 605
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    .line 606
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->getAdjustRestrictionFromDefaultValue()V

    .line 609
    :goto_b1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsPolicyManager;->setFakeTopActivityList(Ljava/util/ArrayList;)V

    .line 610
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->createPolicies()V

    .line 611
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsPolicyManager;->initInternal(Z)V

    .line 613
    if-nez p1, :cond_d5

    .line 614
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->cancelAllPolicy()V

    .line 615
    :cond_d5
    return-void
.end method

.method private getSettingsValueFromDB(Z)V
    .registers 12
    .param p1, "boot"    # Z

    .line 997
    const/4 v0, -0x1

    .line 998
    .local v0, "mLockingTime":I
    const/4 v1, -0x1

    .line 1000
    .local v1, "mSpcmSwitch":I
    const/4 v2, 0x0

    .line 1003
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v3, "key"

    const-string/jumbo v6, "value"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1e

    move-object v2, v3

    .line 1008
    goto :goto_3c

    .line 1005
    :catch_1e
    move-exception v3

    .line 1006
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with contentResolver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1010
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3c
    if-eqz v2, :cond_9c

    .line 1011
    :goto_3e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 1012
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1015
    .local v3, "key":Ljava/lang/String;
    :try_start_49
    const-string/jumbo v4, "spcm_locking_time"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_63

    .line 1016
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 1017
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/am/MARsPolicyManager;->setPackagesUnusedLockingTime(I)V

    .line 1020
    :cond_63
    const-string/jumbo v4, "spcm_switch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 1021
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 1022
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    invoke-virtual {v4, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->setAllPoliciesOnOffState(IZ)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_7c} :catch_7d

    .line 1026
    :cond_7c
    goto :goto_98

    .line 1024
    :catch_7d
    move-exception v4

    .line 1025
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with parseInt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_98
    goto :goto_3e

    .line 1028
    :cond_99
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1030
    :cond_9c
    return-void
.end method

.method private initAdjustRestrictionInternal()Ljava/util/ArrayList;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;",
            ">;"
        }
    .end annotation

    .line 784
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 785
    .local v2, "cursor":Landroid/database/Cursor;
    const-string/jumbo v3, "restrictionType"

    const-string/jumbo v4, "isAllowed"

    const-string v5, "callee"

    const-string v6, "caller"

    const-string/jumbo v7, "matchType"

    const-string v8, "action"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v11

    .line 788
    .local v11, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 790
    .local v3, "adjustRestrictionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 793
    :try_start_1f
    iget-object v0, v1, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2e} :catch_30

    move-object v2, v0

    .line 796
    goto :goto_48

    .line 794
    :catch_30
    move-exception v0

    .line 795
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, v1, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initAdjustRestrictionInternal: Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_48
    if-eqz v2, :cond_c8

    .line 799
    :cond_4a
    :goto_4a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 800
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 801
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 802
    .local v0, "restrictionType":I
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 803
    .local v4, "isAllowed":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 804
    .local v5, "callee":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 805
    .local v6, "caller":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 806
    .local v7, "actionMatchType":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 808
    .local v8, "action":Ljava/lang/String;
    const/16 v9, 0xc

    if-eq v0, v9, :cond_bb

    const/16 v9, 0xd

    if-eq v0, v9, :cond_b3

    const/16 v9, 0x10

    if-eq v0, v9, :cond_ab

    const/16 v9, 0x12

    if-eq v0, v9, :cond_a3

    .line 822
    new-instance v9, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 823
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v9

    move v14, v0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v12 .. v19}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    .local v9, "adjustRestriction":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 819
    .end local v9    # "adjustRestriction":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
    :cond_a3
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v9

    invoke-virtual {v9, v5, v7}, Lcom/android/server/am/FreecessController;->setProcessAllowList(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    goto :goto_c3

    .line 816
    :cond_ab
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/server/am/FreecessController;->setOLAFBlockList(Ljava/lang/String;)V

    .line 817
    goto :goto_c3

    .line 813
    :cond_b3
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/server/am/FreecessController;->setPendingBlocklistForGPS(Ljava/lang/String;)V

    .line 814
    goto :goto_c3

    .line 810
    :cond_bb
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/am/FreecessController;->setPendingIntentList(Ljava/lang/String;)V

    .line 811
    nop

    .line 827
    .end local v0    # "restrictionType":I
    .end local v4    # "isAllowed":Ljava/lang/String;
    .end local v5    # "callee":Ljava/lang/String;
    .end local v6    # "caller":Ljava/lang/String;
    .end local v7    # "actionMatchType":Ljava/lang/String;
    .end local v8    # "action":Ljava/lang/String;
    :goto_c3
    goto :goto_4a

    .line 829
    :cond_c4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_d0

    .line 831
    :cond_c8
    iget-object v0, v1, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "initAdjustRestrictionInternal error, no database!!"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :goto_d0
    return-object v3
.end method

.method private initAdjustTargetExcludePackageInternal()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;"
        }
    .end annotation

    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "policyNum"

    const-string v2, "condition"

    const-string/jumbo v3, "matchType"

    const-string/jumbo v4, "packageName"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 712
    .local v7, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v1, "excludeTargetValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 717
    :try_start_18
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_29

    move-object v0, v2

    .line 720
    goto :goto_41

    .line 718
    :catch_29
    move-exception v2

    .line 719
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initAdjustTargetExcludePackageInternal: Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_41
    if-eqz v0, :cond_84

    .line 723
    :cond_43
    :goto_43
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 724
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 725
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 726
    .local v2, "policyNum":I
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 727
    .local v3, "condition":I
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, "pkgNameMatchType":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 730
    .local v5, "packageName":Ljava/lang/String;
    new-instance v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 731
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v6

    move v10, v2

    move v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 733
    .local v6, "excludeTarget":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .end local v2    # "policyNum":I
    .end local v3    # "condition":I
    .end local v4    # "pkgNameMatchType":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "excludeTarget":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;
    goto :goto_43

    .line 736
    :cond_80
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_8c

    .line 738
    :cond_84
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initAdjustTargetExcludePackageInternal error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_8c
    return-object v1
.end method

.method private initAdjustTargetIsCurrentImportantInternal()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;"
        }
    .end annotation

    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "policyNum"

    const-string v2, "currentImportantValue"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v1, "isCurrentImportantValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 756
    :try_start_12
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_23

    move-object v0, v2

    .line 759
    goto :goto_3b

    .line 757
    :catch_23
    move-exception v2

    .line 758
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initAdjustTargetIsCurrentImportantInternal: Exception : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3b
    if-eqz v0, :cond_6f

    .line 762
    :cond_3d
    :goto_3d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 763
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 764
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 765
    .local v2, "policyNum":I
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 766
    .local v3, "importantValue":I
    new-instance v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    .line 767
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v6, v2, v3}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;II)V

    .line 769
    .local v4, "isCurrentImportant":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    .end local v2    # "policyNum":I
    .end local v3    # "importantValue":I
    .end local v4    # "isCurrentImportant":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;
    goto :goto_3d

    .line 772
    :cond_6b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_77

    .line 774
    :cond_6f
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initAdjustTargetIsCurrentImportantInternal error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :goto_77
    return-object v1
.end method

.method private initMARsSettingsDefinitionInternal()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;",
            ">;"
        }
    .end annotation

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "key"

    const-string/jumbo v2, "value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 621
    .local v5, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v1, "marsSettingsDefinitionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 626
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_24

    move-object v0, v2

    .line 629
    goto :goto_3c

    .line 627
    :catch_24
    move-exception v2

    .line 628
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initMARsSettingsDefinitionInternal : Exception : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3c
    if-eqz v0, :cond_68

    .line 632
    :cond_3e
    :goto_3e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 633
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 634
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v6, v2, v3}, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .local v4, "marsSettings":Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "marsSettings":Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;
    goto :goto_3e

    .line 641
    :cond_64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_70

    .line 643
    :cond_68
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initMARsSettingsDefinitionInternal error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_70
    return-object v1
.end method

.method private initManagedPackagesInternal()V
    .registers 7

    .line 911
    invoke-static {}, Lcom/android/server/am/mars/database/FASDataManager;->getInstance()Lcom/android/server/am/mars/database/FASDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASDataManager;->getFASDataFromDB()Ljava/util/ArrayList;

    move-result-object v0

    .line 912
    .local v0, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_18

    .line 913
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->updateMARsTargetPackages(Ljava/util/ArrayList;)V

    goto :goto_1f

    .line 919
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string v2, "Packages database not exist, and not created!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :goto_1f
    iget-boolean v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    if-nez v1, :cond_42

    .line 923
    new-instance v1, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 924
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 925
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 924
    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 926
    iput-boolean v5, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 928
    :cond_42
    return-void
.end method

.method private initPolicyDefinitionInternal()Ljava/util/ArrayList;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 653
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/mars/database/MARsDBManager;->checkBigDataRestrictionColumnExist()V

    .line 655
    const/4 v2, 0x0

    .line 656
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 657
    .local v0, "projection":[Ljava/lang/String;
    iget-boolean v3, v1, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v3, :cond_28

    .line 658
    const-string/jumbo v4, "policyNum"

    const-string/jumbo v5, "isPolicyEnabled"

    const-string/jumbo v6, "targetCategory"

    const-string/jumbo v7, "restriction"

    const-string/jumbo v8, "killType"

    const-string v9, "firstTriggerTime"

    const-string/jumbo v10, "repeatTriggerTime"

    const-string v11, "bigdataRestriction"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object v9, v0

    goto :goto_42

    .line 662
    :cond_28
    const-string/jumbo v3, "policyNum"

    const-string/jumbo v4, "isPolicyEnabled"

    const-string/jumbo v5, "targetCategory"

    const-string/jumbo v6, "restriction"

    const-string/jumbo v7, "killType"

    const-string v8, "firstTriggerTime"

    const-string/jumbo v9, "repeatTriggerTime"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object v9, v0

    .line 666
    .end local v0    # "projection":[Ljava/lang/String;
    .local v9, "projection":[Ljava/lang/String;
    :goto_42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 668
    .local v10, "policyDefinitionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 671
    :try_start_4b
    iget-object v0, v1, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5b} :catch_5d

    move-object v2, v0

    .line 674
    goto :goto_75

    .line 672
    :catch_5d
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initPolicyDefinitionInternal: Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_75
    if-eqz v2, :cond_f2

    .line 677
    :cond_77
    :goto_77
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 678
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 679
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 680
    .local v0, "policyNum":I
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 681
    .local v3, "isPolicyEnable":I
    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 682
    .local v4, "targetCatgery":I
    const/4 v5, 0x3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 683
    .local v5, "restriction":I
    const/4 v6, 0x4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 684
    .local v6, "killType":I
    const/4 v7, 0x5

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 685
    .local v7, "firstTriggerTime":J
    const/4 v11, 0x6

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 686
    .local v24, "repeatTriggerTime":J
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v26

    .line 687
    .local v26, "policyName":Ljava/lang/String;
    const/16 v27, 0x0

    .line 689
    .local v27, "bitdataRestriction":I
    new-instance v28, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v28

    move-object/from16 v13, v26

    move v14, v0

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move-wide/from16 v19, v7

    move-wide/from16 v21, v24

    move/from16 v23, v27

    invoke-direct/range {v11 .. v23}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;IIIIIJJI)V

    .line 692
    .local v11, "policy":Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    .end local v0    # "policyNum":I
    .end local v3    # "isPolicyEnable":I
    .end local v4    # "targetCatgery":I
    .end local v5    # "restriction":I
    .end local v6    # "killType":I
    .end local v7    # "firstTriggerTime":J
    .end local v11    # "policy":Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;
    .end local v24    # "repeatTriggerTime":J
    .end local v26    # "policyName":Ljava/lang/String;
    .end local v27    # "bitdataRestriction":I
    goto :goto_77

    .line 695
    :cond_ee
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_fa

    .line 697
    :cond_f2
    iget-object v0, v1, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initPolicyDefinitionInternal error, no database!!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_fa
    return-object v10
.end method

.method private isCompareDBVersion()Z
    .registers 9

    .line 873
    const-string/jumbo v0, "isCompareDBVersion(), IndexOutOfBoundsException"

    const/4 v1, 0x0

    .line 875
    .local v1, "isUsingSMDBValue":Z
    const/4 v2, 0x0

    .line 876
    .local v2, "SMDBCoreVersion":Ljava/lang/String;
    const/4 v3, 0x0

    .line 878
    .local v3, "MARsCoreVersion":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsLocalVersionFromDefaultValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    .line 879
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getSMDBVersionFromDB()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 880
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/server/am/mars/database/MARsDBManager;->getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V

    .line 882
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    if-eqz v4, :cond_56

    .line 884
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_21
    iget-object v6, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_27
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_21 .. :try_end_27} :catch_29

    move-object v3, v6

    .line 887
    goto :goto_2f

    .line 885
    :catch_29
    move-exception v6

    .line 886
    .local v6, "e":Ljava/lang/StringIndexOutOfBoundsException;
    iget-object v7, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v6    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_2f
    :try_start_2f
    iget-object v6, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2f .. :try_end_35} :catch_37

    move-object v2, v0

    .line 893
    goto :goto_3d

    .line 891
    :catch_37
    move-exception v4

    .line 892
    .local v4, "e":Ljava/lang/StringIndexOutOfBoundsException;
    iget-object v5, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .end local v4    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_3d
    if-eqz v2, :cond_56

    if-eqz v3, :cond_56

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 896
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v0, v4, :cond_56

    .line 897
    const/4 v1, 0x1

    .line 900
    :cond_56
    return v1
.end method

.method private updateCompHistory(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 10
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "isBlocked"    # Z
    .param p4, "requestTime"    # J

    .line 485
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 486
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "calleepackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v1, "callerpackage"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isblocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "requestTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 492
    :try_start_26
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x63

    if-le v2, v3, :cond_39

    .line 494
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdateCompHistory(Z)V

    .line 496
    :cond_39
    monitor-exit v1

    .line 497
    return-void

    .line 496
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method private updatePkgsToSMDB(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;)V"
        }
    .end annotation

    .line 371
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePkgsToSMDB : begin --size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 373
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/FASEntity;

    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 376
    .end local v0    # "i":I
    :cond_2e
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updatePkgsToSMDB : end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 380
    goto :goto_55

    .line 377
    :catch_37
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on handling DB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_55
    return-void
.end method


# virtual methods
.method public checkBigDataRestrictionColumnExist()V
    .registers 10

    .line 933
    const/4 v0, 0x0

    .line 935
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const-string v2, "bigdataRestriction"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 937
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_1b} :catch_30
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1b} :catch_23
    .catchall {:try_start_2 .. :try_end_1b} :catchall_21

    .line 945
    if-eqz v0, :cond_3d

    .line 946
    :goto_1d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    .line 945
    :catchall_21
    move-exception v1

    goto :goto_3e

    .line 941
    :catch_23
    move-exception v2

    .line 942
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_24
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string v4, "checkBigDataRestrictionColumnExist-sql, catch no column exception!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iput-boolean v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    .line 945
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v0, :cond_3d

    .line 946
    goto :goto_1d

    .line 938
    :catch_30
    move-exception v2

    .line 939
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string v4, "checkBigDataRestrictionColumnExist, catch no column exception!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iput-boolean v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_21

    .line 945
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v0, :cond_3d

    .line 946
    goto :goto_1d

    .line 948
    :cond_3d
    :goto_3d
    return-void

    .line 945
    :goto_3e
    if-eqz v0, :cond_43

    .line 946
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 947
    :cond_43
    throw v1
.end method

.method public deInit()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->unregisterContentObservers(Landroid/content/Context;Z)V

    .line 91
    invoke-static {}, Lcom/android/server/am/mars/database/FASDataManager;->getInstance()Lcom/android/server/am/mars/database/FASDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASDataManager;->deInit()V

    .line 92
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public doUpdateCompHistory(Z)V
    .registers 6
    .param p1, "isPowerOff"    # Z

    .line 500
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 501
    return-void

    .line 504
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 505
    .local v0, "insertValues":[Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 506
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 507
    if-nez p1, :cond_28

    .line 508
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_28} :catch_29

    .line 512
    .end local v0    # "insertValues":[Landroid/content/ContentValues;
    :cond_28
    goto :goto_44

    .line 510
    :catch_29
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on handling DB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getSMDBVersionFromDB()Ljava/lang/String;
    .registers 14

    .line 837
    const/4 v0, 0x0

    .line 838
    .local v0, "mSMDBVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .line 839
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 840
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x0

    .line 841
    .local v3, "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 843
    .local v4, "projection":[Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v5, :cond_11

    .line 844
    iget-object v5, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getSMDBVersionFromDB!"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_11
    const-string/jumbo v2, "key=?"

    .line 848
    const-string/jumbo v5, "marsversion"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    .line 849
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .local v11, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v3, "value"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    .line 852
    .end local v4    # "projection":[Ljava/lang/String;
    .local v9, "projection":[Ljava/lang/String;
    :try_start_22
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    move-object v10, v2

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_30} :catch_32

    move-object v1, v3

    .line 857
    goto :goto_50

    .line 854
    :catch_32
    move-exception v3

    .line 855
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with contentResolver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 859
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_50
    if-eqz v1, :cond_68

    .line 860
    :cond_52
    :goto_52
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 861
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 862
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 865
    :cond_64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_70

    .line 867
    :cond_68
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSMDBVersionFromDB error, no database!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :goto_70
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->setContext(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;

    const-string v1, "MARsDBManagerThread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerThread:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;

    .line 83
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->start()V

    .line 85
    invoke-static {}, Lcom/android/server/am/mars/database/FASDataManager;->getInstance()Lcom/android/server/am/mars/database/FASDataManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASDataManager;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public isSMProviderExist()Z
    .registers 10

    .line 954
    const/4 v0, 0x0

    .line 956
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_1b
    .catchall {:try_start_2 .. :try_end_12} :catchall_19

    move-object v0, v2

    .line 961
    if-eqz v0, :cond_3c

    .line 962
    :goto_15
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 963
    return v1

    .line 961
    :catchall_19
    move-exception v2

    goto :goto_3e

    .line 957
    :catch_1b
    move-exception v2

    .line 958
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred in isSMProviderExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_19

    .line 961
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3c

    .line 962
    goto :goto_15

    .line 966
    :cond_3c
    const/4 v1, 0x0

    return v1

    .line 961
    :goto_3e
    if-eqz v0, :cond_41

    .line 962
    goto :goto_15

    .line 965
    :cond_41
    throw v2
.end method

.method public registerContentObservers(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 1063
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_20

    .line 1064
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;

    .line 1065
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;

    .line 1066
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1065
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1067
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    .line 1070
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    if-nez v0, :cond_3e

    .line 1071
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;

    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;

    .line 1072
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;

    .line 1073
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1072
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1074
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    .line 1077
    :cond_3e
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    if-nez v0, :cond_5c

    .line 1078
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 1079
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 1080
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 1079
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1081
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    .line 1085
    :cond_5c
    goto :goto_74

    .line 1083
    :catch_5d
    move-exception v0

    .line 1084
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_74
    return-void
.end method

.method public sendGetMARsPolicyConditionMsgToDBHandler(Z)V
    .registers 5
    .param p1, "boot"    # Z

    .line 305
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 307
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "boot"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 309
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 311
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    return-void
.end method

.method public sendInitSettingMsgToDBHandler()V
    .registers 4

    .line 255
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 256
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mFASDBupdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method

.method public sendMigrateMsgToDBHandler()V
    .registers 5

    .line 344
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    if-nez v0, :cond_5

    .line 345
    return-void

    .line 347
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 348
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->removeMessages(I)V

    .line 351
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 352
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 353
    return-void
.end method

.method public sendSMDBChangedMsgToDBHandler(ZZZ)V
    .registers 7
    .param p1, "onCreate"    # Z
    .param p2, "onUpgrade"    # Z
    .param p3, "onInit"    # Z

    .line 319
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->removeMessages(I)V

    .line 320
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 322
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "onCreate"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    const-string/jumbo v2, "onUpgrade"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    const-string/jumbo v2, "onInit"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 328
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    return-void
.end method

.method public sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 9
    .param p1, "calleePkgName"    # Ljava/lang/String;
    .param p2, "callerPkgName"    # Ljava/lang/String;
    .param p3, "isBlocked"    # Z
    .param p4, "requestTime"    # J

    .line 288
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 290
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "callee"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "caller"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v2, "isblock"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    const-string/jumbo v2, "requesttime"

    invoke-virtual {v1, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 297
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    return-void
.end method

.method public sendUpdateNotiTimeMsgToMainHandler(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 332
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    if-nez v0, :cond_5

    .line 333
    return-void

    .line 335
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 339
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 340
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    return-void
.end method

.method public sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 264
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "values"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 266
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    return-void
.end method

.method public sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V
    .registers 5
    .param p1, "value"    # Lcom/android/server/am/mars/database/FASEntity;

    .line 278
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 280
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 284
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method public switchUser(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->unregisterContentObservers(Landroid/content/Context;Z)V

    .line 97
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->registerContentObservers(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public unregisterContentObservers(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSwitchUser"    # Z

    .line 1091
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1092
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1093
    iput-boolean v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    .line 1095
    :cond_10
    if-nez p2, :cond_21

    .line 1096
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    if-eqz v0, :cond_21

    .line 1097
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1098
    iput-boolean v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 1101
    :cond_21
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    if-eqz v0, :cond_30

    .line 1102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1103
    iput-boolean v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_30} :catch_31

    .line 1107
    :cond_30
    goto :goto_39

    .line 1105
    :catch_31
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_39
    return-void
.end method

.method public updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V
    .registers 27
    .param p1, "value"    # Lcom/android/server/am/mars/database/FASEntity;

    .line 387
    if-nez p1, :cond_3

    .line 388
    return-void

    .line 392
    :cond_3
    const/4 v0, 0x0

    .line 393
    .local v0, "pkgName":Ljava/lang/String;
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 396
    :cond_f
    const/4 v1, 0x0

    .line 397
    .local v1, "uid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v14, v1

    goto :goto_1e

    .line 397
    :cond_1d
    move-object v14, v1

    .line 400
    .end local v1    # "uid":Ljava/lang/String;
    .local v14, "uid":Ljava/lang/String;
    :goto_1e
    const/4 v1, 0x0

    .line 401
    .local v1, "mode":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v15, v1

    goto :goto_2d

    .line 401
    :cond_2c
    move-object v15, v1

    .line 404
    .end local v1    # "mode":Ljava/lang/String;
    .local v15, "mode":Ljava/lang/String;
    :goto_2d
    const/4 v1, 0x0

    .line 405
    .local v1, "newOpt":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrNew()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrNew()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object/from16 v16, v1

    goto :goto_3e

    .line 405
    :cond_3c
    move-object/from16 v16, v1

    .line 408
    .end local v1    # "newOpt":Ljava/lang/String;
    .local v16, "newOpt":Ljava/lang/String;
    :goto_3e
    const/4 v1, 0x0

    .line 409
    .local v1, "fasReason":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object/from16 v17, v1

    goto :goto_4f

    .line 409
    :cond_4d
    move-object/from16 v17, v1

    .line 412
    .end local v1    # "fasReason":Ljava/lang/String;
    .local v17, "fasReason":Ljava/lang/String;
    :goto_4f
    const/4 v1, 0x0

    .line 413
    .local v1, "extras":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object/from16 v18, v1

    goto :goto_60

    .line 413
    :cond_5e
    move-object/from16 v18, v1

    .line 416
    .end local v1    # "extras":Ljava/lang/String;
    .local v18, "extras":Ljava/lang/String;
    :goto_60
    const/4 v1, 0x0

    .line 417
    .local v1, "resetTime":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 418
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object/from16 v19, v1

    goto :goto_71

    .line 417
    :cond_6f
    move-object/from16 v19, v1

    .line 420
    .end local v1    # "resetTime":Ljava/lang/String;
    .local v19, "resetTime":Ljava/lang/String;
    :goto_71
    const/4 v1, 0x0

    .line 421
    .local v1, "packageType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object/from16 v20, v1

    goto :goto_82

    .line 421
    :cond_80
    move-object/from16 v20, v1

    .line 424
    .end local v1    # "packageType":Ljava/lang/String;
    .local v20, "packageType":Ljava/lang/String;
    :goto_82
    const/4 v1, 0x0

    .line 425
    .local v1, "level":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_91

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object/from16 v21, v1

    goto :goto_93

    .line 425
    :cond_91
    move-object/from16 v21, v1

    .line 428
    .end local v1    # "level":Ljava/lang/String;
    .local v21, "level":Ljava/lang/String;
    :goto_93
    const/4 v1, 0x0

    .line 429
    .local v1, "disableType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a2

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object/from16 v22, v1

    goto :goto_a4

    .line 429
    :cond_a2
    move-object/from16 v22, v1

    .line 432
    .end local v1    # "disableType":Ljava/lang/String;
    .local v22, "disableType":Ljava/lang/String;
    :goto_a4
    const/4 v1, 0x0

    .line 433
    .local v1, "prebatteryUsage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b3

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object/from16 v23, v1

    goto :goto_b5

    .line 433
    :cond_b3
    move-object/from16 v23, v1

    .line 436
    .end local v1    # "prebatteryUsage":Ljava/lang/String;
    .local v23, "prebatteryUsage":Ljava/lang/String;
    :goto_b5
    const/4 v1, 0x0

    .line 437
    .local v1, "disableReason":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c4

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object/from16 v24, v1

    goto :goto_c6

    .line 437
    :cond_c4
    move-object/from16 v24, v1

    .line 441
    .end local v1    # "disableReason":Ljava/lang/String;
    .local v24, "disableReason":Ljava/lang/String;
    :goto_c6
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e0} :catch_e3

    .line 446
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v14    # "uid":Ljava/lang/String;
    .end local v15    # "mode":Ljava/lang/String;
    .end local v16    # "newOpt":Ljava/lang/String;
    .end local v17    # "fasReason":Ljava/lang/String;
    .end local v18    # "extras":Ljava/lang/String;
    .end local v19    # "resetTime":Ljava/lang/String;
    .end local v20    # "packageType":Ljava/lang/String;
    .end local v21    # "level":Ljava/lang/String;
    .end local v22    # "disableType":Ljava/lang/String;
    .end local v23    # "prebatteryUsage":Ljava/lang/String;
    .end local v24    # "disableReason":Ljava/lang/String;
    move-object/from16 v1, p0

    goto :goto_103

    .line 443
    :catch_e3
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on handling DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_103
    return-void
.end method
