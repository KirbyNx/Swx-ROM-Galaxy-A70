.class public Lcom/samsung/android/displaysolution/BigDataLoggingService;
.super Ljava/lang/Object;
.source "BigDataLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;,
        Lcom/samsung/android/displaysolution/BigDataLoggingService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final BDL_ON:Ljava/lang/String; = "sys.bigdatalogging.bdlon"

.field private static final TAG:Ljava/lang/String; = "BigDataLoggingService"


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mUseBigDataLoggingServiceConfig:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->DEBUG:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    .line 75
    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BigDataLoggingServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 78
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandler:Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    .line 83
    const-string v0, "sys.bigdatalogging.bdlon"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Lcom/samsung/android/displaysolution/BigDataLoggingService$1;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    if-eqz v2, :cond_6e

    .line 94
    const-string v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_6e
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/BigDataLoggingService;

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_boot_completed_intent()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/BigDataLoggingService;

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/BigDataLoggingService;

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/BigDataLoggingService;

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_user_present_intent()V

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

    .line 168
    const-string v0, "File Close error"

    const-string v1, "BigDataLoggingService"

    const/4 v2, 0x0

    .line 169
    .local v2, "in":Ljava/io/InputStream;
    const/16 v3, 0x80

    .line 170
    .local v3, "MAX_BUFFER_SIZE":I
    const/16 v4, 0x80

    new-array v5, v4, [B

    .line 171
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 172
    .local v6, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 174
    .local v7, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e
    const/4 v9, 0x0

    if-ge v8, v4, :cond_16

    .line 175
    aput-byte v9, v5, v8

    .line 174
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 178
    .end local v8    # "i":I
    :cond_16
    :try_start_16
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 179
    nop

    .line 180
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v7, v4

    .line 181
    if-eqz v7, :cond_33

    .line 182
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v8, v7, -0x1

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v9, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v6, v4

    .line 184
    :cond_33
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_36} :catch_61
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_36} :catch_42
    .catchall {:try_start_16 .. :try_end_36} :catchall_40

    .line 193
    nop

    .line 195
    :try_start_37
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 198
    :goto_3a
    goto :goto_7d

    .line 196
    :catch_3b
    move-exception v4

    .line 197
    .local v4, "ee":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "ee":Ljava/io/IOException;
    goto :goto_3a

    .line 193
    :catchall_40
    move-exception v4

    goto :goto_7e

    .line 189
    :catch_42
    move-exception v4

    .line 190
    .local v4, "e":Ljava/io/IOException;
    :try_start_43
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 191
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

    .line 193
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_7d

    .line 195
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_3b

    goto :goto_3a

    .line 186
    :catch_61
    move-exception v4

    .line 188
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

    .line 193
    nop

    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_7d

    .line 195
    :try_start_79
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_3b

    goto :goto_3a

    .line 201
    :cond_7d
    :goto_7d
    return-object v6

    .line 193
    :goto_7e
    if-eqz v2, :cond_88

    .line 195
    :try_start_80
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    .line 198
    goto :goto_88

    .line 196
    :catch_84
    move-exception v8

    .line 197
    .local v8, "ee":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v8    # "ee":Ljava/io/IOException;
    :cond_88
    :goto_88
    throw v4
.end method

.method private receive_boot_completed_intent()V
    .registers 1

    .line 165
    return-void
.end method

.method private receive_screen_off_intent()V
    .registers 1

    .line 159
    return-void
.end method

.method private receive_screen_on_intent()V
    .registers 1

    .line 156
    return-void
.end method

.method private receive_user_present_intent()V
    .registers 1

    .line 162
    return-void
.end method
