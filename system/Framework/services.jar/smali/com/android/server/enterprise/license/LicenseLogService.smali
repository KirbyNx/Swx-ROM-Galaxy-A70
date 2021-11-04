.class public Lcom/android/server/enterprise/license/LicenseLogService;
.super Landroid/os/Binder;
.source "LicenseLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    }
.end annotation


# static fields
.field private static final ACTION_LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

.field private static final MSG_CLEAN_OLD_RECORDS:I = 0x1

.field private static final MSG_ENROLL_PARENT_PROF_INSTANCE:Ljava/lang/String; = "ppi"

.field private static final MSG_ENROLL_PKG_NAME:Ljava/lang/String; = "pN"

.field private static final MSG_ENROLL_TYPE:Ljava/lang/String; = "enrollType"

.field private static final MSG_LOG_API:I = 0x2

.field private static final MSG_LOG_API_ADMIN_UID:Ljava/lang/String; = "adminUid"

.field private static final MSG_LOG_API_GETTER:Ljava/lang/String; = "isGetterApi"

.field private static final MSG_LOG_API_IS_PARENT:Ljava/lang/String; = "parent"

.field private static final MSG_LOG_API_NAME:Ljava/lang/String; = "apiName"

.field private static final MSG_LOG_API_OLD_NAMESPACE:Ljava/lang/String; = "isOldNamespace"

.field private static final MSG_LOG_API_ONS:Ljava/lang/String; = "ons"

.field private static final MSG_LOG_API_PROFILE_USER_ID:Ljava/lang/String; = "profileUserId"

.field private static final MSG_LOG_API_PUB_KEYS_MD5:Ljava/lang/String; = "pkMD5"

.field private static final MSG_LOG_API_USAGE_EVENT:Ljava/lang/String; = "API_USAGE"

.field private static final TAG:Ljava/lang/String; = "LicenseLogService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

.field private static mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 313
    new-instance v0, Lcom/android/server/enterprise/license/LicenseLogService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/license/LicenseLogService$1;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 103
    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    sput-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    invoke-direct {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->initializeHandlerThread()V

    .line 110
    return-void
.end method

.method private _log(Ljava/lang/String;IZZIZ)V
    .registers 22
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isGetterApi"    # Z
    .param p4, "isOldNamespace"    # Z
    .param p5, "profileUserId"    # I
    .param p6, "isParent"    # Z

    .line 148
    move-object v8, p0

    const-string v9, "_log() failed"

    const-string v10, "LicenseLogService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 151
    .local v11, "token":J
    move/from16 v13, p2

    :try_start_b
    invoke-direct {p0, v13}, Lcom/android/server/enterprise/license/LicenseLogService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_4c
    .catchall {:try_start_b .. :try_end_f} :catchall_48

    .line 153
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_15

    .line 166
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    return-void

    .line 157
    :cond_15
    :try_start_15
    iget-object v1, v8, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/utils/Utils;->isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_27} :catch_4c
    .catchall {:try_start_15 .. :try_end_27} :catchall_48

    if-eqz v1, :cond_2a

    goto :goto_2d

    :cond_2a
    move-object/from16 v14, p1

    goto :goto_41

    .line 158
    :cond_2d
    :goto_2d
    move-object/from16 v14, p1

    :try_start_2f
    invoke-direct {p0, v14, v0}, Lcom/android/server/enterprise/license/LicenseLogService;->_log_for_old(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/license/LicenseLogService;->_log_for_ka(Ljava/lang/String;Ljava/lang/String;ZZIZ)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_41} :catch_46
    .catchall {:try_start_2f .. :try_end_41} :catchall_58

    .line 166
    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_41
    nop

    :goto_42
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    goto :goto_57

    .line 162
    :catch_46
    move-exception v0

    goto :goto_4f

    .line 166
    :catchall_48
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_59

    .line 162
    :catch_4c
    move-exception v0

    move-object/from16 v14, p1

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    :goto_4f
    :try_start_4f
    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_58

    .line 166
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_42

    .line 168
    :goto_57
    return-void

    .line 166
    :catchall_58
    move-exception v0

    :goto_59
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    throw v0
.end method

.method private _log_for_ka(Ljava/lang/String;Ljava/lang/String;ZZIZ)V
    .registers 11
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "isGetterApi"    # Z
    .param p4, "isOldNamespace"    # Z
    .param p5, "profileUserId"    # I
    .param p6, "isParent"    # Z

    .line 201
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "API_USAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    .local v0, "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    const-string/jumbo v1, "pN"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 204
    const-string/jumbo v1, "ppi"

    invoke-virtual {v0, v1, p6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 205
    if-eqz p3, :cond_1f

    .line 206
    const-string/jumbo v1, "isGetterApi"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    .line 208
    :cond_1f
    if-eqz p4, :cond_27

    .line 209
    const-string/jumbo v1, "ons"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 212
    :cond_27
    :try_start_27
    const-string/jumbo v1, "pkMD5"

    iget-object v2, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/server/enterprise/utils/Utils;->getApplicationPubKeyMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_33
    .catch Ljava/security/cert/CertificateException; {:try_start_27 .. :try_end_33} :catch_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_33} :catch_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27 .. :try_end_33} :catch_34

    .line 215
    goto :goto_3c

    .line 213
    :catch_34
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LicenseLogService"

    const-string v3, "error getApplicationPubKeyMD5"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3c
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 217
    return-void
.end method

.method private _log_for_old(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 172
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 173
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 174
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 175
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 176
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 178
    .local v1, "time":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "pkgName"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "date"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v4, "value"

    .line 184
    .local v4, "column":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE_LOG"

    invoke-virtual {v5, v6, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 187
    .local v5, "result":Landroid/content/ContentValues;
    if-eqz v5, :cond_64

    .line 190
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v7, "cv":Landroid/content/ContentValues;
    nop

    .line 192
    const-string/jumbo v8, "value"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 191
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    sget-object v8, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 194
    .end local v7    # "cv":Landroid/content/ContentValues;
    goto :goto_69

    .line 196
    :cond_64
    sget-object v7, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 198
    :goto_69
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    .registers 1

    .line 73
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/license/LicenseLogService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/license/LicenseLogService;

    .line 73
    invoke-direct {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->handleLicenseLogCleanNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/license/LicenseLogService;Ljava/lang/String;IZZIZ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/enterprise/license/LicenseLogService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .line 73
    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/license/LicenseLogService;->_log(Ljava/lang/String;IZZIZ)V

    return-void
.end method

.method public static deleteAllLog()Z
    .registers 3

    .line 283
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "LICENSE_LOG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteLog(Ljava/lang/String;)Z
    .registers 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 272
    const-string/jumbo v0, "pkgName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "sColumns":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 278
    .local v1, "sValues":[Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE_LOG"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 15
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 221
    const-string/jumbo v0, "value"

    const-string/jumbo v1, "id"

    const-string v2, "date"

    :try_start_8
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v3, "ret":Landroid/os/Bundle;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 223
    .local v4, "columns":[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 224
    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 225
    const/4 v5, 0x2

    aput-object v0, v4, v5

    .line 227
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v5, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v6, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE_LOG"

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 233
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_7b

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7b

    .line 234
    const/4 v7, 0x0

    .line 235
    .local v7, "keyVal":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 236
    .local v8, "id":Ljava/lang/String;
    const/4 v9, 0x0

    .line 237
    .local v9, "val":I
    const/4 v10, 0x0

    .line 238
    .local v10, "date":Ljava/lang/String;
    const/4 v11, 0x0

    .line 239
    .local v11, "cv":Landroid/content/ContentValues;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 241
    .local v12, "it":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7a

    .line 242
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    move-object v11, v13

    .line 244
    if-eqz v11, :cond_5f

    .line 245
    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 246
    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 247
    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move v9, v13

    .line 250
    :cond_5f
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    if-nez v13, :cond_72

    .line 252
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    move-object v7, v13

    .line 253
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {v3, v10, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3d

    .line 257
    :cond_72
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_79} :catch_7c

    goto :goto_3d

    .line 261
    :cond_7a
    return-object v3

    .line 266
    .end local v3    # "ret":Landroid/os/Bundle;
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v7    # "keyVal":Landroid/os/Bundle;
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "val":I
    .end local v10    # "date":Ljava/lang/String;
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v12    # "it":Ljava/util/Iterator;
    :cond_7b
    goto :goto_88

    .line 263
    :catch_7c
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LicenseLogService"

    const-string/jumbo v2, "getLog() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_88
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I

    .line 304
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_12

    .line 307
    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_12
    return-object v0
.end method

.method private handleLicenseLogCleanNotification()V
    .registers 19

    .line 358
    move-object/from16 v1, p0

    const-string v2, "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

    const-string v3, "alarm"

    const-string/jumbo v4, "handleLicenseLogCleanNotification() failed"

    const-string v5, "LicenseLogService"

    const-string/jumbo v0, "handleLicenseLogCleanNotification()"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 361
    .local v6, "calendar":Ljava/util/Calendar;
    const/16 v0, 0xb

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 362
    const/16 v0, 0xc

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 363
    const/16 v0, 0xd

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 364
    const/16 v0, 0xe

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 365
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 368
    .local v8, "now":J
    const-wide v10, 0x9a7ec800L

    .line 369
    .local v10, "howOld":J
    sub-long v12, v8, v10

    .line 372
    .local v12, "temp":J
    const/high16 v14, 0x48000000    # 131072.0f

    const-wide/32 v16, 0x5265c00

    :try_start_3a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v15, "date<=?"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 375
    sget-object v7, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "LICENSE_LOG"

    invoke-virtual {v7, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4f} :catch_7d
    .catchall {:try_start_3a .. :try_end_4f} :catchall_7a

    .line 381
    nop

    .end local v0    # "selectionValues":Landroid/content/ContentValues;
    .end local v10    # "howOld":J
    .end local v12    # "temp":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 383
    .local v10, "token":J
    add-long v12, v8, v16

    .line 384
    .local v12, "alarmTime":J
    :try_start_56
    iget-object v0, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 385
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v3, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3, v2, v7, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 388
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 389
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_ac

    .line 390
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v12, v13, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_77} :catch_78

    goto :goto_ac

    .line 393
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v12    # "alarmTime":J
    :catch_78
    move-exception v0

    goto :goto_ae

    .line 381
    .end local v10    # "token":J
    :catchall_7a
    move-exception v0

    move-object v7, v0

    goto :goto_b9

    .line 376
    :catch_7d
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7e
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_7a

    .line 381
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 383
    .restart local v10    # "token":J
    add-long v12, v8, v16

    .line 384
    .restart local v12    # "alarmTime":J
    :try_start_8b
    iget-object v0, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 385
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v3, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3, v2, v7, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 388
    .restart local v2    # "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 389
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_ac

    .line 390
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v12, v13, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_ac} :catch_ad

    .line 396
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v12    # "alarmTime":J
    :cond_ac
    :goto_ac
    goto :goto_b4

    .line 393
    :catch_ad
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    :goto_ae
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 398
    .end local v10    # "token":J
    nop

    .line 399
    return-void

    .line 381
    :goto_b9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 383
    .restart local v10    # "token":J
    add-long v12, v8, v16

    .line 384
    .restart local v12    # "alarmTime":J
    :try_start_bf
    iget-object v0, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 385
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v3, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3, v2, v15, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 388
    .restart local v2    # "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 389
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_e0

    .line 390
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v12, v13, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_e0} :catch_e1

    .line 396
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v12    # "alarmTime":J
    :cond_e0
    goto :goto_e8

    .line 393
    :catch_e1
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e8
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 398
    .end local v10    # "token":J
    throw v7
.end method

.method private initializeHandlerThread()V
    .registers 3

    .line 114
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LicenseLogService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 115
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 116
    new-instance v0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    .line 117
    return-void
.end method

.method public static log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    .registers 9
    .param p0, "contextInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "isGetterApi"    # Z
    .param p3, "isOldNamespace"    # Z

    .line 120
    if-eqz p1, :cond_66

    if-eqz p0, :cond_66

    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    if-nez v0, :cond_9

    goto :goto_66

    .line 124
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 126
    .local v0, "appid":I
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_58

    const/16 v1, 0x4e1f

    if-le v0, v1, :cond_1a

    goto :goto_58

    .line 131
    :cond_1a
    sget-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 132
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "apiName"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "adminUid"

    iget v4, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string/jumbo v3, "isGetterApi"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    const-string/jumbo v3, "isOldNamespace"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string/jumbo v3, "profileUserId"

    iget v4, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string/jumbo v3, "parent"

    iget-boolean v4, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 140
    sget-object v3, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_56} :catch_59

    .line 144
    nop

    .end local v0    # "appid":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_65

    .line 128
    .restart local v0    # "appid":I
    :cond_58
    :goto_58
    return-void

    .line 141
    .end local v0    # "appid":I
    :catch_59
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LicenseLogService"

    const-string/jumbo v2, "log() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_65
    return-void

    .line 121
    :cond_66
    :goto_66
    return-void
.end method


# virtual methods
.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 403
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 293
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 297
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 301
    return-void
.end method

.method public systemReady()V
    .registers 1

    .line 289
    return-void
.end method
