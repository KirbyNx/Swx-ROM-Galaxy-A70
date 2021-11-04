.class public Lcom/android/server/am/mars/database/FASDataManager;
.super Ljava/lang/Object;
.source "FASDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;
    }
.end annotation


# static fields
.field private static volatile fasDataManager:Lcom/android/server/am/mars/database/FASDataManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mIsDisableReasonColumnExist:Ljava/lang/Boolean;

.field private mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/mars/database/FASDataManager;->fasDataManager:Lcom/android/server/am/mars/database/FASDataManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-class v0, Lcom/android/server/am/mars/database/FASDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->context:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    .line 16
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/database/FASDataManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/database/FASDataManager$1;

    .line 10
    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASDataManager;-><init>()V

    return-void
.end method

.method private checkDisableReasonColumnExist()Ljava/lang/Boolean;
    .registers 9

    .line 67
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    return-object v0

    .line 69
    :cond_5
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    .line 70
    const/4 v0, 0x0

    .line 73
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/server/am/mars/database/FASTableContract;->disableReasonProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 75
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_29} :catch_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_29} :catch_31
    .catchall {:try_start_e .. :try_end_29} :catchall_2f

    .line 81
    if-eqz v0, :cond_49

    .line 82
    :goto_2b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_49

    .line 81
    :catchall_2f
    move-exception v1

    goto :goto_4c

    .line 78
    :catch_31
    move-exception v1

    .line 79
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_32
    iget-object v2, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    const-string v3, "checkDisableReasonColumnExist-sql, catch no column exception!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    nop

    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v0, :cond_49

    .line 82
    goto :goto_2b

    .line 76
    :catch_3d
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    const-string v3, "checkDisableReasonColumnExist, catch no column exception!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_2f

    .line 81
    nop

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v0, :cond_49

    .line 82
    goto :goto_2b

    .line 85
    :cond_49
    :goto_49
    iget-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    return-object v1

    .line 81
    :goto_4c
    if-eqz v0, :cond_51

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_51
    throw v1
.end method

.method private checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;
    .registers 9

    .line 45
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    return-object v0

    .line 47
    :cond_5
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    .line 48
    const/4 v0, 0x0

    .line 51
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/server/am/mars/database/FASTableContract;->preBattetyUsageProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 53
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_29} :catch_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_29} :catch_31
    .catchall {:try_start_e .. :try_end_29} :catchall_2f

    .line 59
    if-eqz v0, :cond_49

    .line 60
    :goto_2b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_49

    .line 59
    :catchall_2f
    move-exception v1

    goto :goto_4c

    .line 56
    :catch_31
    move-exception v1

    .line 57
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_32
    iget-object v2, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    const-string v3, "checkPreBatteryUsageColumnExist-sql, catch no column exception!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    nop

    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v0, :cond_49

    .line 60
    goto :goto_2b

    .line 54
    :catch_3d
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    const-string v3, "checkPreBatteryUsageColumnExist, catch no column exception!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_2f

    .line 59
    nop

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v0, :cond_49

    .line 60
    goto :goto_2b

    .line 63
    :cond_49
    :goto_49
    iget-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    return-object v1

    .line 59
    :goto_4c
    if-eqz v0, :cond_51

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_51
    throw v1
.end method

.method public static getInstance()Lcom/android/server/am/mars/database/FASDataManager;
    .registers 1

    .line 25
    # getter for: Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;
    invoke-static {}, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->access$100()Lcom/android/server/am/mars/database/FASDataManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 41
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFASDataFromDB()Ljava/util/ArrayList;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;"
        }
    .end annotation

    .line 89
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 90
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 92
    .local v0, "projection":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkDisableReasonColumnExist()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV3:[Ljava/lang/String;

    move-object v9, v0

    goto :goto_2d

    .line 93
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV2:[Ljava/lang/String;

    move-object v9, v0

    goto :goto_2d

    .line 94
    :cond_2a
    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV1:[Ljava/lang/String;

    move-object v9, v0

    .line 97
    .end local v0    # "projection":[Ljava/lang/String;
    .local v9, "projection":[Ljava/lang/String;
    :goto_2d
    :try_start_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3f} :catch_41

    move-object v2, v0

    .line 102
    goto :goto_5f

    .line 99
    :catch_41
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with contentResolver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5f
    if-eqz v2, :cond_1ef

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "fasEntityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :cond_66
    :goto_66
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 107
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 108
    const/4 v4, 0x0

    .line 110
    .local v4, "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkDisableReasonColumnExist()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v6, 0x1

    if-eqz v5, :cond_102

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_102

    .line 111
    new-instance v5, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 112
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 113
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 114
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 115
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 116
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 117
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 118
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPackageType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 119
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 120
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 122
    const/16 v5, 0xb

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPreBatteryUsage(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    const/16 v5, 0xc

    .line 123
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 124
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .end local v4    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    .local v3, "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    goto/16 :goto_1c9

    .line 125
    .end local v3    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v4    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    :cond_102
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_170

    .line 126
    new-instance v5, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 127
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 128
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 129
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 130
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 131
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 132
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 133
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPackageType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 134
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 135
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 137
    const/16 v5, 0xb

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPreBatteryUsage(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 138
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .end local v4    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v3    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    goto :goto_1c9

    .line 140
    .end local v3    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v4    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    :cond_170
    new-instance v5, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 141
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 142
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 143
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 144
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 145
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 146
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 147
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPackageType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 148
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 149
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    .line 153
    .end local v4    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v3    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    :goto_1c9
    if-eqz v3, :cond_1ce

    .line 154
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v3    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    :cond_1ce
    goto/16 :goto_66

    .line 157
    :cond_1d0
    iget-object v3, v1, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFASDataFromDB fasEntityList size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 160
    return-object v0

    .line 162
    .end local v0    # "fasEntityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :cond_1ef
    iget-object v0, v1, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getFASDataFromDB no database!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASDataManager;->setContext(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASDataManager;->context:Landroid/content/Context;

    .line 30
    return-void
.end method
