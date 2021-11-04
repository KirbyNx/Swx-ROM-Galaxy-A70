.class final Lcom/samsung/android/authnrservice/service/AuthnrTaController;
.super Ljava/lang/Object;
.source "AuthnrTaController.java"

# interfaces
.implements Lcom/samsung/android/authnrservice/service/ITaController;


# static fields
.field private static final TAG:Ljava/lang/String; = "ATC"

.field private static sIsNativeLoaded:Z

.field private static sIsPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    const-string v0, "ATC"

    :try_start_2
    const-string v1, "authnrtactrl_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_a} :catch_19
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_a} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_1f

    .line 38
    :catch_b
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "NPE"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 36
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_12
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "ULE"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_1f

    .line 34
    :catch_19
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "SE"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_1f
    nop

    .line 41
    :goto_20
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeInitialize(IJJ)Z
.end method

.method private native nativeInitializeOperation()Z
.end method

.method private native nativeProcess([B)[B
.end method

.method private native nativeTerminate()Z
.end method

.method private native nativeTerminateOperation()Z
.end method


# virtual methods
.method public initialize(IJJ)Z
    .registers 10
    .param p1, "fd"    # I
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .line 51
    const-string v0, "ATC"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 53
    const-string/jumbo v1, "not loaded"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v2

    .line 59
    :cond_14
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    .line 60
    const-string v1, "already prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v3

    .line 64
    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeInitializeOperation()Z

    move-result v1

    .line 65
    .local v1, "ret":Z
    if-nez v1, :cond_2c

    .line 66
    const-string/jumbo v3, "nativeInitializeOperation failed"

    invoke-static {v0, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v2

    .line 70
    :cond_2c
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeInitialize(IJJ)Z

    move-result v1

    .line 71
    if-nez v1, :cond_39

    .line 72
    const-string/jumbo v3, "nativeInitialize failed"

    invoke-static {v0, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v2

    .line 75
    :cond_39
    sput-boolean v3, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    .line 77
    return v3
.end method

.method public process([B)[B
    .registers 6
    .param p1, "blobInput"    # [B

    .line 113
    const-string v0, "ATC"

    const-string/jumbo v1, "process"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 115
    const-string/jumbo v1, "not loaded"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-array v0, v2, [B

    return-object v0

    .line 121
    :cond_16
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    if-nez v1, :cond_23

    .line 122
    const-string/jumbo v1, "not prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-array v0, v2, [B

    return-object v0

    .line 127
    :cond_23
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeProcess([B)[B

    move-result-object v1

    .line 128
    .local v1, "response":[B
    if-eqz v1, :cond_2c

    array-length v3, v1

    if-nez v3, :cond_32

    .line 129
    :cond_2c
    const-string/jumbo v3, "processNative failed"

    invoke-static {v0, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_32
    if-nez v1, :cond_37

    new-array v0, v2, [B

    goto :goto_38

    :cond_37
    move-object v0, v1

    :goto_38
    return-object v0
.end method

.method public terminate()Z
    .registers 5

    .line 82
    const-string v0, "ATC"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 84
    const-string/jumbo v1, "not loaded"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v2

    .line 90
    :cond_14
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    if-nez v1, :cond_1f

    .line 91
    const-string/jumbo v1, "not prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return v2

    .line 95
    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeTerminate()Z

    move-result v1

    .line 96
    .local v1, "ret":Z
    if-nez v1, :cond_2c

    .line 97
    const-string/jumbo v3, "nativeTerminate failed"

    invoke-static {v0, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return v2

    .line 101
    :cond_2c
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeTerminateOperation()Z

    move-result v1

    .line 102
    if-nez v1, :cond_39

    .line 103
    const-string/jumbo v3, "nativeTerminateOperation failed"

    invoke-static {v0, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return v2

    .line 106
    :cond_39
    sput-boolean v2, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    .line 108
    const/4 v0, 0x1

    return v0
.end method
