.class public Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;
.super Ljava/lang/Object;
.source "AdaptiveDisplaySolutionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;,
        Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final ADS_ON:Ljava/lang/String; = "sys.adaptivedisplaysolution.adson"

.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplaySolutionService"


# instance fields
.field private final ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

.field private final ADAPTIVE_CONTROL_SUB_PATH:Ljava/lang/String;

.field private final AVAILABLE_ADAPTIVE_CONTROL:Z

.field private final DEBUG:Z

.field private mACLwithBrightness:Z

.field private mADSEnableCondition:Z

.field private mAdaptiveControlValues:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDetailViewState:Z

.field private mHandler:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPlatformBrightnessValue:I

.field private mScreenBrightnessRangeForClearView:[I

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mSettingsObserver:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

.field private mUseAdaptiveDisplaySolutionServiceConfig:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->DEBUG:Z

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mScreenBrightnessRangeForClearView:[I

    .line 93
    const-string v2, "/sys/class/lcd/panel/adaptive_control"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    .line 94
    const-string v3, "/sys/class/lcd/panel1/adaptive_control"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->ADAPTIVE_CONTROL_SUB_PATH:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    .line 99
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "AdaptiveDisplaySolutionServiceThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 100
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v3, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandler:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

    .line 103
    iget-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    .line 105
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 106
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    .line 107
    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mScreenBrightnessRangeForClearView:[I

    goto :goto_7c

    .line 110
    :cond_7a
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    .line 113
    :goto_7c
    new-instance v2, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandler:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    .line 115
    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 117
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "screen_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$1;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    const-string v1, "sys.adaptivedisplaysolution.adson"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    if-eqz v3, :cond_cf

    .line 130
    const-string v3, "true"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_cf
    const-string v1, "AdaptiveDisplaySolutionService"

    const-string v3, "AdaptiveDisplaySolutionService Enabled"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_boot_completed_intent()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_user_present_intent()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setting_is_changed()V

    return-void
.end method

.method private static fileWriteInt(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "out":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "myfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3e

    .line 342
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_2d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_2b

    move-object v0, v2

    .line 346
    nop

    .line 347
    :try_start_14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 348
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 357
    nop

    .line 358
    const/4 v2, 0x1

    return v2

    .line 349
    :catch_2b
    move-exception v2

    goto :goto_32

    .line 343
    :catch_2d
    move-exception v2

    .line 344
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_31} :catch_2b

    .line 345
    return v3

    .line 350
    .local v2, "e":Ljava/io/IOException;
    :goto_32
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 352
    :try_start_35
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    .line 355
    goto :goto_3d

    .line 353
    :catch_39
    move-exception v4

    .line 354
    .local v4, "err":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    .end local v4    # "err":Ljava/lang/Exception;
    :goto_3d
    return v3

    .line 360
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3e
    return v3
.end method

.method public static fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 364
    const/4 v0, 0x0

    .line 367
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_18

    move-object v0, v1

    .line 370
    nop

    .line 371
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 372
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_18

    .line 380
    goto :goto_24

    .line 373
    :catch_18
    move-exception v1

    .line 374
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 376
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    .line 379
    goto :goto_24

    .line 377
    :catch_20
    move-exception v2

    .line 378
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    :goto_24
    return-void

    .line 368
    :catch_25
    move-exception v1

    .line 369
    .local v1, "e":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    const-string v0, "File Close error"

    const-string v1, "AdaptiveDisplaySolutionService"

    const/4 v2, 0x0

    .line 385
    .local v2, "in":Ljava/io/InputStream;
    const/16 v3, 0x80

    .line 386
    .local v3, "MAX_BUFFER_SIZE":I
    const/16 v4, 0x80

    new-array v5, v4, [B

    .line 387
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 388
    .local v6, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 390
    .local v7, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e
    const/4 v9, 0x0

    if-ge v8, v4, :cond_16

    .line 391
    aput-byte v9, v5, v8

    .line 390
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 394
    .end local v8    # "i":I
    :cond_16
    :try_start_16
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 395
    nop

    .line 396
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v7, v4

    .line 397
    if-eqz v7, :cond_33

    .line 398
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v8, v7, -0x1

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v9, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v6, v4

    .line 400
    :cond_33
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_36} :catch_61
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_36} :catch_42
    .catchall {:try_start_16 .. :try_end_36} :catchall_40

    .line 409
    nop

    .line 411
    :try_start_37
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 414
    :goto_3a
    goto :goto_7d

    .line 412
    :catch_3b
    move-exception v4

    .line 413
    .local v4, "ee":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "ee":Ljava/io/IOException;
    goto :goto_3a

    .line 409
    :catchall_40
    move-exception v4

    goto :goto_7e

    .line 405
    :catch_42
    move-exception v4

    .line 406
    .local v4, "e":Ljava/io/IOException;
    :try_start_43
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 407
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_40

    .line 409
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_7d

    .line 411
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_3b

    goto :goto_3a

    .line 402
    :catch_61
    move-exception v4

    .line 404
    .local v4, "ex":Ljava/io/FileNotFoundException;
    :try_start_62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_40

    .line 409
    nop

    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_7d

    .line 411
    :try_start_79
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_3b

    goto :goto_3a

    .line 417
    :cond_7d
    :goto_7d
    return-object v6

    .line 409
    :goto_7e
    if-eqz v2, :cond_88

    .line 411
    :try_start_80
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    .line 414
    goto :goto_88

    .line 412
    :catch_84
    move-exception v8

    .line 413
    .local v8, "ee":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v8    # "ee":Ljava/io/IOException;
    :cond_88
    :goto_88
    throw v4
.end method

.method private getting_platform_brightness_value()I
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 243
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mPlatformBrightnessValue:I

    .line 244
    return v1
.end method

.method private platform_brightness_value_changed()V
    .registers 3

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->getting_platform_brightness_value()I

    move-result v0

    .line 235
    .local v0, "platform_brightness_value":I
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    if-eqz v1, :cond_b

    .line 236
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStatewithBrightness(ZI)V

    .line 238
    :cond_b
    return-void
.end method

.method private receive_boot_completed_intent()V
    .registers 2

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    .line 207
    return-void
.end method

.method private receive_screen_off_intent()V
    .registers 1

    .line 200
    return-void
.end method

.method private receive_screen_on_intent()V
    .registers 1

    .line 197
    return-void
.end method

.method private receive_user_present_intent()V
    .registers 1

    .line 203
    return-void
.end method

.method private setting_is_changed()V
    .registers 1

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->platform_brightness_value_changed()V

    .line 176
    return-void
.end method

.method private updateAdaptiveControlState(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdaptiveControlState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    const-string v2, "DisplaySolution"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 283
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    if-nez v0, :cond_31

    .line 284
    const-string v0, "!AVAILABLE_ADAPTIVE_CONTROL"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 288
    :cond_31
    const-string v0, "/sys/class/lcd/panel/adaptive_control"

    const/4 v2, 0x0

    const-string v3, "/sys/class/lcd/panel1/adaptive_control"

    if-eqz p1, :cond_6b

    .line 289
    const-string v4, "[AdaptiveControl]: ACL OFF"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 291
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v4

    .local v1, "i":I
    :goto_4c
    if-ltz v1, :cond_6a

    .line 293
    iget-object v4, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 295
    iget-object v4, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_67
    add-int/lit8 v1, v1, -0x1

    goto :goto_4c

    .end local v1    # "i":I
    :cond_6a
    goto :goto_9a

    .line 299
    :cond_6b
    const-string v4, "[AdaptiveControl]: ACL ON"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 301
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 302
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_7b
    iget-object v4, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_9a

    .line 303
    aget-object v4, v4, v1

    invoke-static {v0, v4}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 305
    iget-object v4, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 309
    .end local v1    # "i":I
    :cond_9a
    :goto_9a
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    .line 310
    return-void
.end method

.method private updateAdaptiveControlStateInt(I)V
    .registers 7
    .param p1, "value"    # I

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdaptiveControlStateInt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdaptiveDisplaySolutionService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    const-string v3, "DisplaySolution"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 316
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    if-nez v0, :cond_31

    .line 317
    const-string v0, "!AVAILABLE_ADAPTIVE_CONTROL"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 321
    :cond_31
    const/4 v0, 0x0

    if-nez p1, :cond_57

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AdaptiveControl]: ACL OFF ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 324
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    goto :goto_7a

    .line 325
    :cond_57
    if-lez p1, :cond_7a

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AdaptiveControl]: ACL ON ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 328
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 330
    :cond_7a
    :goto_7a
    const-string v1, "/sys/class/lcd/panel/adaptive_control"

    invoke-static {v1, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteInt(Ljava/lang/String;I)Z

    .line 331
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/lcd/panel1/adaptive_control"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 332
    invoke-static {v2, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteInt(Ljava/lang/String;I)Z

    .line 333
    :cond_8f
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    .line 334
    return-void
.end method

.method private updateAdaptiveControlStatewithBrightness(ZI)V
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "platform_brightness_value"    # I

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdaptiveControlStatewithBrightness("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    const-string v2, "DisplaySolution"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 251
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    if-nez v0, :cond_31

    .line 252
    const-string v0, "!AVAILABLE_ADAPTIVE_CONTROL"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 256
    :cond_31
    const-string v0, "/sys/class/lcd/panel/adaptive_control"

    const-string v2, "/sys/class/lcd/panel1/adaptive_control"

    if-eqz p1, :cond_6e

    const/16 v3, 0xff

    if-lt p2, v3, :cond_6e

    .line 257
    const-string v3, "[AdaptiveControl]: ACL OFF(with brightness)"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 259
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 260
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_4f
    if-ltz v1, :cond_6d

    .line 261
    iget-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 263
    iget-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_6a
    add-int/lit8 v1, v1, -0x1

    goto :goto_4f

    .end local v1    # "i":I
    :cond_6d
    goto :goto_9e

    .line 267
    :cond_6e
    const-string v3, "[AdaptiveControl]: ACL ON(with brightness)"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 269
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 270
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_7f
    iget-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_9e

    .line 271
    aget-object v3, v3, v1

    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 273
    iget-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 277
    .end local v1    # "i":I
    :cond_9e
    :goto_9e
    return-void
.end method


# virtual methods
.method public setAutoCurrentLimitState(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoCurrentLimitState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") , mADSEnableCondition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlState(Z)V

    .line 218
    return-void
.end method

.method public setAutoCurrentLimitStateInt(I)V
    .registers 4
    .param p1, "value"    # I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoCurrentLimitStateInt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") , mADSEnableCondition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    .line 223
    return-void
.end method

.method public setAutoCurrentLimitStateWithBrightness(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->getting_platform_brightness_value()I

    move-result v0

    .line 227
    .local v0, "platform_brightness_value":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoCurrentLimitStateWithBrightness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") , mADSEnableCondition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdaptiveDisplaySolutionService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStatewithBrightness(ZI)V

    .line 230
    return-void
.end method

.method public setGalleryDetailViewMode(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGalleryDetailViewMode() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mADSEnableCondition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlState(Z)V

    .line 213
    return-void
.end method
