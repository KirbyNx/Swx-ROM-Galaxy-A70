.class public final Lcom/android/server/HermesService;
.super Lcom/samsung/android/service/HermesService/IHermesService$Stub;
.source "HermesService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field private static final ERR_INVALID_BIGDATA_TYPE:I = -0x18

.field private static final ERR_NO_BIGDATA:I = -0x19

.field private static final ERR_NO_BIGDATA_SERVICE:I = -0x1a

.field private static final ERR_PERMISSION_DENIED:I = -0x5

.field private static final ERR_SEND_BIGDATA:I = -0x17

.field private static final TAG:Ljava/lang/String; = "HERMES#Service"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final AM_WAITING_COUNT:I

.field private final AM_WAITING_TIME:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-string/jumbo v0, "hermes_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;-><init>()V

    .line 40
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/HermesService;->AM_WAITING_COUNT:I

    .line 41
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/HermesService;->AM_WAITING_TIME:I

    .line 309
    new-instance v0, Lcom/android/server/HermesService$2;

    invoke-direct {v0, p0}, Lcom/android/server/HermesService$2;-><init>(Lcom/android/server/HermesService;)V

    iput-object v0, p0, Lcom/android/server/HermesService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    sput-object p1, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    sget-object v1, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HermesService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HermesService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/HermesService;

    .line 36
    invoke-direct {p0}, Lcom/android/server/HermesService;->getPdpData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/HermesService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/HermesService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/HermesService;->sendBigData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    .line 36
    sget-object v0, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private native getPdpData()Ljava/lang/String;
.end method

.method private native getSecureHWInfo()[B
.end method

.method private hasAccessPermission(II)Z
    .registers 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "ret":Z
    const-string v1, "HERMES#Service"

    const-string/jumbo v2, "hasAccessPermission start."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0, p1}, Lcom/android/server/HermesService;->isServiceReady(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 235
    const-string v2, "HermesService isn\'t ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v0

    .line 239
    :cond_15
    const/16 v1, 0x3e8

    if-ne v1, p2, :cond_1a

    .line 240
    const/4 v0, 0x1

    .line 243
    :cond_1a
    return v0
.end method

.method private hasAccessPermissionForTerm(II)Z
    .registers 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "ret":Z
    const-string v1, "HERMES#Service"

    const-string/jumbo v2, "hasAccessPermissionForTerm start."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v1, 0x3e8

    if-ne v1, p2, :cond_e

    .line 252
    const/4 v0, 0x1

    .line 255
    :cond_e
    return v0
.end method

.method private declared-synchronized isServiceReady(I)Z
    .registers 7
    .param p1, "callingPid"    # I

    monitor-enter p0

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "status":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_76

    .line 209
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_36

    .line 214
    :cond_17
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 215
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_35

    .line 216
    const/4 v0, 0x1

    .line 217
    goto :goto_52

    .line 219
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_35
    goto :goto_23

    .line 210
    .end local p0    # "this":Lcom/android/server/HermesService;
    :cond_36
    :goto_36
    const-string v2, "HERMES#Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get object of ActivityManagerService count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_51} :catch_57
    .catchall {:try_start_6 .. :try_end_51} :catchall_55

    .line 212
    nop

    .line 208
    :cond_52
    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 205
    .end local v0    # "status":Z
    .end local v1    # "i":I
    .end local p1    # "callingPid":I
    :catchall_55
    move-exception p1

    goto :goto_74

    .line 221
    .restart local v0    # "status":Z
    .restart local p1    # "callingPid":I
    :catch_57
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    :try_start_58
    const-string v2, "HERMES#Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_55

    .line 223
    const/4 v0, 0x0

    goto :goto_77

    .line 205
    .end local v0    # "status":Z
    .end local v1    # "e":Ljava/lang/Exception;
    .end local p1    # "callingPid":I
    :goto_74
    monitor-exit p0

    throw p1

    .line 224
    .restart local v0    # "status":Z
    .restart local p0    # "this":Lcom/android/server/HermesService;
    .restart local p1    # "callingPid":I
    :cond_76
    nop

    .line 226
    :goto_77
    monitor-exit p0

    return v0
.end method

.method private native provisioning()I
.end method

.method private native secnvmPowerOff()I
.end method

.method private native secnvmPowerOn()I
.end method

.method private native selftest()[B
.end method

.method private sendBigData(Ljava/lang/String;)I
    .registers 23
    .param p1, "fulldata"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 155
    .local v1, "feature":Ljava/lang/String;
    const/4 v2, 0x0

    .line 156
    .local v2, "bigdata":Ljava/lang/String;
    const-string/jumbo v3, "ro.hardware.chipname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "hqmVer":Ljava/lang/String;
    const-string/jumbo v4, "ro.hardware"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 158
    .local v14, "hqmManufacture":Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "\r\n"

    move-object/from16 v15, p1

    invoke-direct {v4, v15, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v4

    .line 160
    .local v16, "st1":Ljava/util/StringTokenizer;
    :goto_1c
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 161
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-direct {v4, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v4

    .line 163
    .local v17, "st2":Ljava/util/StringTokenizer;
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    const-string v13, "HERMES#Service"

    if-eqz v4, :cond_b1

    .line 164
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 167
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 171
    sget-object v4, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    const-string v5, "HqmManagerService"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/os/SemHqmManager;

    .line 172
    .local v18, "semHqmManager":Landroid/os/SemHqmManager;
    if-eqz v18, :cond_99

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendToHQM data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz v2, :cond_8e

    .line 176
    const/4 v5, 0x0

    const-string v6, "GPU"

    const-string/jumbo v8, "ph"

    const-string v11, ""

    const-string v19, ""

    move-object/from16 v4, v18

    move-object v7, v1

    move-object v9, v3

    move-object v10, v14

    move-object v12, v2

    move-object/from16 v20, v1

    move-object v1, v13

    .end local v1    # "feature":Ljava/lang/String;
    .local v20, "feature":Ljava/lang/String;
    move-object/from16 v13, v19

    invoke-virtual/range {v4 .. v13}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 177
    const-string/jumbo v4, "sendHWParamToHQM is failed."

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/16 v0, -0x17

    goto :goto_a3

    .line 181
    .end local v20    # "feature":Ljava/lang/String;
    .restart local v1    # "feature":Ljava/lang/String;
    :cond_8e
    move-object/from16 v20, v1

    move-object v1, v13

    .end local v1    # "feature":Ljava/lang/String;
    .restart local v20    # "feature":Ljava/lang/String;
    const-string v4, "bigdata is null."

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/16 v0, -0x19

    goto :goto_a3

    .line 185
    .end local v20    # "feature":Ljava/lang/String;
    .restart local v1    # "feature":Ljava/lang/String;
    :cond_99
    move-object/from16 v20, v1

    move-object v1, v13

    .end local v1    # "feature":Ljava/lang/String;
    .restart local v20    # "feature":Ljava/lang/String;
    const-string v4, "HQM service is not alive, skip sending a data."

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/16 v0, -0x1a

    .line 189
    .end local v18    # "semHqmManager":Landroid/os/SemHqmManager;
    :cond_a3
    :goto_a3
    move-object/from16 v1, v20

    goto :goto_b9

    .line 195
    .end local v20    # "feature":Ljava/lang/String;
    .restart local v1    # "feature":Ljava/lang/String;
    :cond_a6
    move-object/from16 v20, v1

    move-object v1, v13

    .end local v1    # "feature":Ljava/lang/String;
    .restart local v20    # "feature":Ljava/lang/String;
    const-string v4, "Hermes bigdata has wrong value."

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v20

    goto :goto_b9

    .line 198
    .end local v20    # "feature":Ljava/lang/String;
    .restart local v1    # "feature":Ljava/lang/String;
    :cond_b1
    move-object v4, v1

    move-object v1, v13

    .end local v1    # "feature":Ljava/lang/String;
    .local v4, "feature":Ljava/lang/String;
    const-string v5, "Hermes feature has wrong value."

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 200
    .end local v4    # "feature":Ljava/lang/String;
    .end local v17    # "st2":Ljava/util/StringTokenizer;
    .restart local v1    # "feature":Ljava/lang/String;
    :goto_b9
    goto/16 :goto_1c

    .line 202
    :cond_bb
    return v0
.end method

.method private native terminateService()I
.end method

.method private native updateCryptoFW()[B
.end method

.method private native verifyProvisioning()I
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 149
    return-void
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public hermesGetSecureHWInfo()[B
    .registers 3

    .line 266
    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesGetSecureHWInfo called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/android/server/HermesService;->getSecureHWInfo()[B

    move-result-object v0

    return-object v0
.end method

.method public hermesProvisioning()I
    .registers 3

    .line 281
    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesProvisioning called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/android/server/HermesService;->provisioning()I

    move-result v0

    return v0
.end method

.method public hermesSecnvmPowerOff()I
    .registers 3

    .line 305
    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesSecnvmPowerOff called!."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0}, Lcom/android/server/HermesService;->secnvmPowerOff()I

    move-result v0

    return v0
.end method

.method public hermesSecnvmPowerOn()I
    .registers 3

    .line 300
    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesSecnvmPowerOn called!."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, Lcom/android/server/HermesService;->secnvmPowerOn()I

    move-result v0

    return v0
.end method

.method public hermesSelftest()[B
    .registers 3

    .line 276
    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesSelftest called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0}, Lcom/android/server/HermesService;->selftest()[B

    move-result-object v0

    return-object v0
.end method

.method public hermesTerminateService()I
    .registers 4

    .line 291
    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesTerminateService called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/android/server/HermesService;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/server/HermesService;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/HermesService;->hasAccessPermissionForTerm(II)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 293
    const-string/jumbo v1, "hermesTerminateService denied."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v0, -0x5

    return v0

    .line 296
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/HermesService;->terminateService()I

    move-result v0

    return v0
.end method

.method public hermesUpdateCryptoFW()[B
    .registers 3

    .line 271
    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesUpdateCryptoFW called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0}, Lcom/android/server/HermesService;->updateCryptoFW()[B

    move-result-object v0

    return-object v0
.end method

.method public hermesVerifyProvisioning()I
    .registers 3

    .line 286
    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesVerifyProvisioning called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0}, Lcom/android/server/HermesService;->verifyProvisioning()I

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 97
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3c

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HermesService onBootPhase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HERMES#Service"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_1a
    new-instance v0, Lcom/android/server/HermesService$1;

    invoke-direct {v0, p0}, Lcom/android/server/HermesService$1;-><init>(Lcom/android/server/HermesService;)V

    .line 115
    invoke-virtual {v0}, Lcom/android/server/HermesService$1;->start()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_23

    .line 118
    goto :goto_3c

    .line 116
    :catch_23
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurs on sendPdpData. Err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3c
    :goto_3c
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 140
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "opt"    # Landroid/os/Bundle;

    .line 89
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 93
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 85
    return-void
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 124
    return-void
.end method

.method public onStopUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 128
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 132
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 136
    return-void
.end method
