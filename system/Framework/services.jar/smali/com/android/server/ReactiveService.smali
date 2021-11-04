.class public final Lcom/android/server/ReactiveService;
.super Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.source "ReactiveService.java"


# static fields
.field private static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field private static final FLAG_ACTIVATED:I = 0x1

.field private static final FLAG_DEACTIVATED:I = 0x0

.field private static final FLAG_TRIGGERED:I = 0x2

.field private static final FRP_FLAG:I = 0x2

.field private static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field private static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final REACTIVATION_FLAG:I = 0x0

.field private static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field private static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field private static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field private static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field private static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field private static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field private static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final SECURE_FRP_MODE:Ljava/lang/String; = "FRP1"

.field private static final SERVICE_FLAG:I = 0x1

.field private static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveService"

.field private static mContext:Landroid/content/Context;

.field static mDsmsSender:Lcom/samsung/android/jdsms/Sender;

.field private static final mLock:Ljava/lang/Object;

.field private static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field private final mDataBlockFile:Ljava/lang/String;

.field private mErrorCode:I

.field private mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceSupport:I

.field private mThreadUart:Ljava/lang/Thread;

.field private mThreadUartGoWait:Z

.field private mThreadUsb:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLockUEvent:Ljava/lang/Object;

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ReactiveService;->mDsmsSender:Lcom/samsung/android/jdsms/Sender;

    .line 132
    const-string/jumbo v0, "terrier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    .line 175
    new-instance v0, Lcom/android/server/ReactiveService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ReactiveService$1;-><init>(Lcom/android/server/ReactiveService;)V

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    sput-object p1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 160
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeInit()V

    .line 162
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    .line 164
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mDataBlockFile:Ljava/lang/String;

    .line 167
    :try_start_24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    sget-object v1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ReactiveService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_35} :catch_37

    .line 172
    nop

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    goto :goto_3b

    .line 170
    :catch_37
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .line 33
    sget-object v0, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private hasPermission(ILjava/lang/String;)Z
    .registers 16
    .param p1, "callingPid"    # I
    .param p2, "callingMethodName"    # Ljava/lang/String;

    .line 207
    const-string v0, "com.osp.app.signin"

    .line 208
    .local v0, "SAMSUNG_ACCOUNT_PKG_NAME":Ljava/lang/String;
    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308201c13082012aa00302010202044e5cba90300d06092a864886f70d010105050030243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e673020170d3131303833303130323532305a180f32313131303830363130323532305a30243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e6730819f300d06092a864886f70d010101050003818d0030818902818100d80c410cec5799bb3607d27e0c992c9c35238c42e8726a5ecbb190f6dfb59aee9fa3b1a8812620bafb25b24ce4fc777d4b98da1f7fda95f4a7788a70c635fca893e022a676ae40c906ee83a63d953a310da47d3789af59219621aafb551ebe866f977298c70a9d60e5251270db0d35869cb7c5522b7a82c951189cb5d2b9b19d0203010001300d06092a864886f70d0101050500038181007f6820e6cfd72e67afeba80043da6eccc5ec5b0b994974669d2d7c8876f7e1fa9767dbc930549f875c1604cd8a6ea7d84b66ec500c7bf11526ee4ff77d0720036d61454e9354f5291c0545a43ddf26f9d09e64226239cbd0b98945578d596aa9f9ff7a05c140a2f05fe0260f574bfce94f50273558101f896a9c70be6b05496b"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "sigSA":Landroid/content/pm/Signature;
    const-string v2, ""

    .line 210
    .local v2, "currentPkgName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 212
    .local v3, "ret":Z
    sget-object v4, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 213
    .local v4, "am":Landroid/app/ActivityManager;
    const/4 v5, 0x0

    const-string v6, "ReactiveService"

    if-nez v4, :cond_21

    .line 214
    const-string v7, "ActivityManager is null, something wrong in framework"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return v5

    .line 218
    :cond_21
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_2e

    .line 219
    const-string/jumbo v7, "getRunningAppProcesses return null List. Cannot check permision"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return v5

    .line 223
    :cond_2e
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_36
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 224
    .local v8, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v9, p1, :cond_49

    .line 225
    iget-object v2, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 226
    goto :goto_4a

    .line 228
    .end local v8    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_49
    goto :goto_36

    .line 231
    :cond_4a
    :goto_4a
    sget-object v7, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 234
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/16 v8, 0x40

    :try_start_52
    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 235
    .local v8, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    if-eq v9, v10, :cond_8a

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NOT Allowed : pkg does not match uid("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 241
    :cond_8a
    const-string v9, "android"

    invoke-virtual {v7, v9, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_98

    .line 242
    invoke-direct {p0, v2, p2}, Lcom/android/server/ReactiveService;->nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    move v3, v5

    goto :goto_b6

    .line 243
    :cond_98
    const-string v9, "com.osp.app.signin"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b6

    .line 245
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v10, v9

    :goto_a3
    if-ge v5, v10, :cond_b6

    aget-object v11, v9, v5

    .line 247
    .local v11, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v11}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b3

    .line 249
    invoke-direct {p0, v2, p2}, Lcom/android/server/ReactiveService;->nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_b1} :catch_b7

    move v3, v5

    .line 250
    goto :goto_b6

    .line 245
    .end local v11    # "sig":Landroid/content/pm/Signature;
    :cond_b3
    add-int/lit8 v5, v5, 0x1

    goto :goto_a3

    .line 260
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_b6
    :goto_b6
    goto :goto_c0

    .line 256
    :catch_b7
    move-exception v5

    .line 258
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    const-string v8, "Fail to get packageinfo."

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_c0
    const-string v5, "]"

    if-eqz v3, :cond_dc

    .line 263
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requested package name = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    .line 265
    :cond_dc
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission denied. Package name = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_f3
    return v3
.end method

.method public static isSetupWizardCompleted()Z
    .registers 4

    .line 271
    sget-object v0, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 272
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    move v1, v2

    .line 273
    .local v1, "isSetupWizardCompleted":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSetupWizardCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReactiveService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v1
.end method

.method private native nativeFinishedSetupWizard()Z
.end method

.method private native nativeGetFlag(I)I
.end method

.method private native nativeGetRandom()[B
.end method

.method private native nativeGetString()Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeInit()V
.end method

.method private native nativeRemoveString()I
.end method

.method private native nativeSessionAccept([B)[B
.end method

.method private native nativeSessionComplete([B)I
.end method

.method private native nativeSetFlag(IILjava/lang/String;)I
.end method

.method private native nativeSetString(Ljava/lang/String;)I
.end method

.method private native nativeVerify(Ljava/lang/String;I)I
.end method

.method private native nativeisCsUnlockRequest()Z
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 648
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0
.end method

.method public getFlag(I)I
    .registers 5
    .param p1, "flag"    # I

    .line 305
    const/4 v0, 0x2

    if-eqz p1, :cond_4b

    if-eq p1, v0, :cond_9

    .line 383
    const/4 v0, -0x3

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 384
    return v0

    .line 320
    :cond_9
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_49

    .line 346
    sget-object v0, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 347
    if-nez v0, :cond_27

    .line 349
    const-string v0, "ReactiveService"

    const-string v1, "Failed to load FRP Manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, -0x7

    return v0

    .line 357
    :cond_27
    :try_start_27
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->isEnabled()Z

    move-result v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_41

    .line 363
    .local v0, "frp_flag":Z
    nop

    .line 366
    if-eqz v0, :cond_3f

    .line 368
    sget-object v1, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_31
    invoke-static {}, Lcom/android/server/ReactiveService;->isSetupWizardCompleted()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 370
    const/4 v2, 0x1

    .local v2, "ret":I
    goto :goto_3a

    .line 372
    .end local v2    # "ret":I
    :cond_39
    const/4 v2, 0x2

    .line 373
    .restart local v2    # "ret":I
    :goto_3a
    monitor-exit v1

    goto :goto_40

    .end local v2    # "ret":I
    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_3c

    throw v2

    .line 376
    :cond_3f
    const/4 v2, 0x0

    .line 377
    .end local v0    # "frp_flag":Z
    .restart local v2    # "ret":I
    :goto_40
    goto :goto_60

    .line 359
    .end local v2    # "ret":I
    :catch_41
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    const/4 v1, -0x6

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 362
    return v1

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_49
    const/4 v2, -0x2

    .line 380
    .restart local v2    # "ret":I
    goto :goto_60

    .line 308
    .end local v2    # "ret":I
    :cond_4b
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v2, v1, 0x1

    if-gtz v2, :cond_57

    and-int/2addr v0, v1

    if-lez v0, :cond_55

    goto :goto_57

    .line 316
    :cond_55
    const/4 v2, -0x2

    .line 317
    .restart local v2    # "ret":I
    goto :goto_60

    .line 311
    .end local v2    # "ret":I
    :cond_57
    :goto_57
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_5a
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeGetFlag(I)I

    move-result v1

    move v2, v1

    .line 313
    .restart local v2    # "ret":I
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_8d

    .line 387
    :goto_60
    if-gez v2, :cond_65

    .line 388
    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_68

    .line 390
    :cond_65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 392
    :goto_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getFlag() : flag=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], ret=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactiveService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return v2

    .line 313
    .end local v2    # "ret":I
    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public getRandom()[B
    .registers 5

    .line 661
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 663
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 664
    return-object v1

    .line 667
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 669
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 670
    return-object v1

    .line 673
    :cond_26
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetRandom()[B

    move-result-object v2

    .line 675
    .local v2, "ret":[B
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_35

    .line 677
    if-nez v2, :cond_34

    .line 679
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 680
    return-object v1

    .line 683
    :cond_34
    return-object v2

    .line 675
    .end local v2    # "ret":[B
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public getServiceSupport()I
    .registers 2

    .line 287
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 5

    .line 457
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 459
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 460
    return-object v1

    .line 463
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 465
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 466
    return-object v1

    .line 469
    :cond_26
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "ret":Ljava/lang/String;
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    .line 473
    if-nez v1, :cond_33

    .line 474
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 476
    :cond_33
    return-object v1

    .line 471
    .end local v1    # "ret":Ljava/lang/String;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public removeString()I
    .registers 4

    .line 526
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_8

    .line 528
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 529
    return v0

    .line 532
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 534
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 535
    return v0

    .line 538
    :cond_25
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_28
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeRemoveString()I

    move-result v1

    .line 540
    .local v1, "ret":I
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_32

    .line 542
    if-eqz v1, :cond_31

    .line 543
    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 545
    :cond_31
    return v1

    .line 540
    .end local v1    # "ret":I
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public sessionAccept([B)[B
    .registers 7
    .param p1, "input"    # [B

    .line 560
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_9

    .line 562
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 563
    const/4 v0, 0x0

    return-object v0

    .line 566
    :cond_9
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSessionAccept([B)[B

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_13
    .catchall {:try_start_c .. :try_end_10} :catchall_11

    .line 574
    .local v1, "ret":[B
    goto :goto_1f

    .line 575
    .end local v1    # "ret":[B
    :catchall_11
    move-exception v1

    goto :goto_26

    .line 570
    :catch_13
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 573
    .local v2, "ret":[B
    :try_start_15
    const-string v3, "ReactiveService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 575
    .end local v2    # "ret":[B
    .local v1, "ret":[B
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_11

    .line 577
    if-nez v1, :cond_25

    .line 578
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 580
    :cond_25
    return-object v1

    .line 575
    .end local v1    # "ret":[B
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_11

    throw v1
.end method

.method public sessionComplete([B)I
    .registers 7
    .param p1, "input"    # [B

    .line 594
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_8

    .line 596
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 597
    return v0

    .line 602
    :cond_8
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSessionComplete([B)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_12
    .catchall {:try_start_b .. :try_end_f} :catchall_10

    .line 610
    .local v1, "ret":I
    goto :goto_1e

    .line 611
    .end local v1    # "ret":I
    :catchall_10
    move-exception v1

    goto :goto_50

    .line 606
    :catch_12
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    .line 609
    .local v2, "ret":I
    :try_start_14
    const-string v3, "ReactiveService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 611
    .end local v2    # "ret":I
    .local v1, "ret":I
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_10

    .line 613
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_4d

    if-nez v1, :cond_4d

    .line 614
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeisCsUnlockRequest()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 617
    sget-object v0, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persistent_data_block"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 618
    if-nez v0, :cond_45

    .line 620
    const-string v0, "ReactiveService"

    const-string v2, "Failed to load FRP Manager"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v0, -0x7

    return v0

    .line 625
    :cond_45
    :try_start_45
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    .line 629
    goto :goto_4d

    .line 627
    :catch_49
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 632
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 634
    return v1

    .line 611
    .end local v1    # "ret":I
    :goto_50
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_10

    throw v1
.end method

.method public setFlag(IILjava/lang/String;)I
    .registers 7
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .param p3, "string"    # Ljava/lang/String;

    .line 414
    if-eqz p1, :cond_6

    .line 416
    const/4 v0, -0x3

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 417
    return v0

    .line 420
    :cond_6
    const/4 v0, 0x2

    if-nez p1, :cond_16

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v2, v1, 0x1

    if-gtz v2, :cond_16

    and-int/2addr v1, v0

    if-gtz v1, :cond_16

    .line 423
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 424
    return v0

    .line 427
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 429
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 430
    return v0

    .line 433
    :cond_32
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ReactiveService;->nativeSetFlag(IILjava/lang/String;)I

    move-result v1

    .line 435
    .local v1, "ret":I
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_6f

    .line 437
    if-gez v1, :cond_3f

    .line 438
    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_42

    .line 440
    :cond_3f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 442
    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFlag() : flag=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], value=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], ret=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReactiveService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v1

    .line 435
    .end local v1    # "ret":I
    :catchall_6f
    move-exception v1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public setString(Ljava/lang/String;)I
    .registers 5
    .param p1, "string"    # Ljava/lang/String;

    .line 492
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_8

    .line 494
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 495
    return v0

    .line 498
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 500
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 501
    return v0

    .line 504
    :cond_25
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_28
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSetString(Ljava/lang/String;)I

    move-result v1

    .line 506
    .local v1, "ret":I
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_32

    .line 508
    if-eqz v1, :cond_31

    .line 509
    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 511
    :cond_31
    return v1

    .line 506
    .end local v1    # "ret":I
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public verify(Ljava/lang/String;I)I
    .registers 6
    .param p1, "vt"    # Ljava/lang/String;
    .param p2, "operation"    # I

    .line 698
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_8

    .line 700
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 701
    return v0

    .line 704
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 706
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 707
    return v0

    .line 710
    :cond_25
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_28
    invoke-direct {p0, p1, p2}, Lcom/android/server/ReactiveService;->nativeVerify(Ljava/lang/String;I)I

    move-result v1

    .line 712
    .local v1, "ret":I
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_32

    .line 714
    if-eqz v1, :cond_31

    .line 715
    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 717
    :cond_31
    return v1

    .line 712
    .end local v1    # "ret":I
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method
