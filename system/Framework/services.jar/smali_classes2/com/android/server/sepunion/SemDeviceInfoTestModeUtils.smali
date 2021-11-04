.class public Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;
.super Ljava/lang/Object;
.source "SemDeviceInfoTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;
    }
.end annotation


# static fields
.field private static final DEVICEINFO_TEST_MODE:Ljava/lang/String; = "deviceinfo_test_mode"

.field private static final SHIPPED:Z

.field private static final TAG:Ljava/lang/String;

.field private static final TEST_MODE_OFF:I = 0x0

.field private static final TEST_MODE_ON:I = 0x1

.field private static sCurrentTestMode:I


# instance fields
.field private mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

.field private mContext:Landroid/content/Context;

.field private mObserver:Landroid/database/ContentObserver;

.field private mTestModeChangeHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->TAG:Ljava/lang/String;

    .line 21
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    .line 41
    sget-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    if-eqz v0, :cond_1a

    .line 42
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "This version has been shipped!! Then device info test mode is not available"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 46
    :cond_1a
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    .line 49
    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;-><init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    .line 57
    const-string v0, "deviceinfo_test_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 58
    .local v0, "testModeUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->updateTestModeFromSetting(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    .line 17
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    .line 17
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 17
    invoke-static {p0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->updateTestModeFromSetting(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 17
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    .line 17
    sget v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    .line 17
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isTestMode()Z
    .registers 2

    .line 73
    sget-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    sget v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private static updateTestModeFromSetting(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deviceinfo_test_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    .line 65
    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 77
    const-string v0, " Current CoverTestModeUtils state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v0, "  SHIPPED="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 79
    const-string v0, "  sCurrentTestMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 80
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setTestMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 68
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTestMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deviceinfo_test_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    return-void
.end method
