.class public Lcom/android/server/sepunion/cover/CoverTestModeUtils;
.super Ljava/lang/Object;
.source "CoverTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    }
.end annotation


# static fields
.field public static final SHIPPED:Z

.field private static final TAG:Ljava/lang/String;

.field public static final TEST_MODE_NONE:I = -0x1

.field private static sCurrentTestMode:I


# instance fields
.field private final COVER_TEST_MODE:Ljava/lang/String;

.field private mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

.field private mContext:Landroid/content/Context;

.field private mObserver:Landroid/database/ContentObserver;

.field private mTestModeChangeHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    .line 22
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 25
    const/4 v0, -0x1

    sput v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "cover_test_mode"

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->COVER_TEST_MODE:Ljava/lang/String;

    .line 31
    new-instance v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;-><init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    .line 44
    sget-boolean v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    if-eqz v1, :cond_1a

    .line 45
    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "This version has been shipped!! Then cover test mode is not available"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 49
    :cond_1a
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 52
    new-instance v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;-><init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    .line 59
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    .local v0, "testModeUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestModeFromSetting()I

    move-result v1

    sput v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 63
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 18
    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 18
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 18
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestModeFromSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/cover/CoverTestModeUtils;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverTestModeUtils;
    .param p1, "x1"    # I

    .line 18
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->updateCoverTestMode(I)V

    return-void
.end method

.method static getSmartCoverStateForTestMode(ZZ)Lcom/samsung/android/cover/CoverState;
    .registers 15
    .param p0, "switchState"    # Z
    .param p1, "attach"    # Z

    .line 107
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2c

    .line 108
    const-string v0, "1com.samsung.android.sdk.cover.hellocover"

    .line 109
    .local v0, "appUri":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v9, v1, [B

    fill-array-data v9, :array_2e

    .line 110
    .local v9, "appData":[B
    const-string v1, "##########"

    .line 111
    .local v1, "serialNumber":Ljava/lang/String;
    sget-object v2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getSmartCoverStateForTestMode : make smartCoverState for test"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v12, Lcom/samsung/android/cover/CoverState;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const-string v8, "1com.samsung.android.sdk.cover.hellocover"

    const-string v10, "##########"

    move-object v2, v12

    move v3, p0

    move v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V

    return-object v12

    .line 114
    .end local v0    # "appUri":Ljava/lang/String;
    .end local v1    # "serialNumber":Ljava/lang/String;
    .end local v9    # "appData":[B
    :cond_2c
    const/4 v0, 0x0

    return-object v0

    :array_2e
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data
.end method

.method static getTestCoverType()I
    .registers 1

    .line 99
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    if-eqz v0, :cond_6

    .line 100
    const/4 v0, -0x1

    return v0

    .line 102
    :cond_6
    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method private getTestModeFromSetting()I
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_test_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static isTestMode()Z
    .registers 2

    .line 95
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    if-nez v0, :cond_b

    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private updateCoverTestMode(I)V
    .registers 6
    .param p1, "currentTestMode"    # I

    .line 74
    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverTestMode() sCurrentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    if-ne v0, p1, :cond_26

    .line 78
    return-void

    .line 81
    :cond_26
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    if-nez v1, :cond_2b

    .line 82
    return-void

    .line 85
    :cond_2b
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_32

    .line 86
    invoke-interface {v1, v0, v3}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;->onCoverTestModeChanged(IZ)V

    .line 89
    :cond_32
    sput p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 91
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 118
    const-string v0, " Current CoverTestModeUtils state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v0, "  SHIPPED="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 120
    const-string v0, "  sCurrentTestMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 121
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public setTestModeToSetting(I)V
    .registers 4
    .param p1, "type"    # I

    .line 70
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_test_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    return-void
.end method
