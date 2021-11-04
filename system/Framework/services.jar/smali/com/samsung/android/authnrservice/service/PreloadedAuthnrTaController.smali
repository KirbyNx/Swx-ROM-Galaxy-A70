.class final Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;
.super Ljava/lang/Object;
.source "PreloadedAuthnrTaController.java"

# interfaces
.implements Lcom/samsung/android/authnrservice/service/IPreloadedTaController;


# static fields
.field private static final TAG:Ljava/lang/String; = "PATC"

.field private static sIsNativeLoaded:Z

.field private static sIsPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    const-string v0, "PATC"

    :try_start_2
    const-string/jumbo v1, "prldauthnrtactrl_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_b} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_20

    .line 38
    :catch_c
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "NPE"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 36
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "ULE"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_20

    .line 34
    :catch_1a
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "SE"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_20
    nop

    .line 41
    :goto_21
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeInitialize()Z
.end method

.method private native nativeInitializeOperation()Z
.end method

.method private native nativeProcess(I[B)[B
.end method

.method private native nativeTerminate()Z
.end method

.method private native nativeTerminateOperation()Z
.end method


# virtual methods
.method public initialize()Z
    .registers 5

    .line 51
    const-string v0, "PATC"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 53
    const-string/jumbo v1, "not loaded"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v2

    .line 59
    :cond_14
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    .line 60
    const-string v1, "already prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v3

    .line 64
    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeInitializeOperation()Z

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
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeInitialize()Z

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
    sput-boolean v3, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    .line 77
    return v3
.end method

.method public process([B)[B
    .registers 7
    .param p1, "blobInput"    # [B

    .line 113
    const/4 v0, 0x3

    .line 114
    .local v0, "FIDO_CMD_DO_FIDO":I
    const-string v1, "PATC"

    const-string/jumbo v2, "process"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-boolean v2, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z

    const/4 v3, 0x0

    if-nez v2, :cond_17

    .line 116
    const-string/jumbo v2, "not loaded"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-array v1, v3, [B

    return-object v1

    .line 122
    :cond_17
    sget-boolean v2, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    if-nez v2, :cond_24

    .line 123
    const-string/jumbo v2, "not prepared"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-array v1, v3, [B

    return-object v1

    .line 128
    :cond_24
    const/4 v2, 0x3

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeProcess(I[B)[B

    move-result-object v2

    .line 129
    .local v2, "response":[B
    if-eqz v2, :cond_2e

    array-length v4, v2

    if-nez v4, :cond_34

    .line 130
    :cond_2e
    const-string/jumbo v4, "processNative failed"

    invoke-static {v1, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_34
    if-nez v2, :cond_39

    new-array v1, v3, [B

    goto :goto_3a

    :cond_39
    move-object v1, v2

    :goto_3a
    return-object v1
.end method

.method public terminate()Z
    .registers 5

    .line 82
    const-string v0, "PATC"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 84
    const-string/jumbo v1, "not loaded"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v2

    .line 90
    :cond_14
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    if-nez v1, :cond_1f

    .line 91
    const-string/jumbo v1, "not prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return v2

    .line 95
    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeTerminate()Z

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
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeTerminateOperation()Z

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
    sput-boolean v2, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    .line 108
    const/4 v0, 0x1

    return v0
.end method
