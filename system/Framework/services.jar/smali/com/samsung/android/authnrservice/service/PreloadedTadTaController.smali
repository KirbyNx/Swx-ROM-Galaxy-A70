.class final Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;
.super Ljava/lang/Object;
.source "PreloadedTadTaController.java"

# interfaces
.implements Lcom/samsung/android/authnrservice/service/IPreloadedTaController;


# static fields
.field private static final TAG:Ljava/lang/String; = "PTTC"

.field private static sIsNativeLoaded:Z

.field private static sIsPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    const-string v0, "PTTC"

    :try_start_2
    const-string/jumbo v1, "prldtadtactrl_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsNativeLoaded:Z
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_b} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_20

    .line 41
    :catch_c
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "NPE"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 39
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_13
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "ULE"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_20

    .line 37
    :catch_1a
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "SE"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_20
    nop

    .line 44
    :goto_21
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "trustedAppType"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create class. type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PTTC"

    invoke-static {v1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private native nativeInitialize()Z
.end method

.method private native nativeInitializeOperation([B)Z
.end method

.method private native nativeProcess([B)[B
.end method

.method private native nativeTerminate()Z
.end method

.method private native nativeTerminateOperation()Z
.end method


# virtual methods
.method public initialize()Z
    .registers 6

    .line 61
    const-string v0, "PTTC"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsNativeLoaded:Z

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 63
    const-string/jumbo v1, "not loaded"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return v2

    .line 69
    :cond_14
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsPrepared:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    .line 70
    const-string v1, "already prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return v3

    .line 74
    :cond_1f
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string/jumbo v4, "libtad.so"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->nativeInitializeOperation([B)Z

    move-result v1

    .line 75
    .local v1, "ret":Z
    if-nez v1, :cond_35

    .line 76
    const-string/jumbo v3, "nativeInitializeOperation failed"

    invoke-static {v0, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return v2

    .line 80
    :cond_35
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->nativeInitialize()Z

    move-result v1

    .line 81
    if-nez v1, :cond_42

    .line 82
    const-string/jumbo v3, "nativeInitialize failed"

    invoke-static {v0, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return v2

    .line 85
    :cond_42
    sput-boolean v3, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsPrepared:Z

    .line 87
    return v3
.end method

.method public process([B)[B
    .registers 6
    .param p1, "blobInput"    # [B

    .line 123
    const-string v0, "PTTC"

    const-string/jumbo v1, "process"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsNativeLoaded:Z

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 125
    const-string/jumbo v1, "not loaded"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-array v0, v2, [B

    return-object v0

    .line 131
    :cond_16
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsPrepared:Z

    if-nez v1, :cond_23

    .line 132
    const-string/jumbo v1, "not prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-array v0, v2, [B

    return-object v0

    .line 137
    :cond_23
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->nativeProcess([B)[B

    move-result-object v1

    .line 138
    .local v1, "response":[B
    if-eqz v1, :cond_2c

    array-length v3, v1

    if-nez v3, :cond_32

    .line 139
    :cond_2c
    const-string/jumbo v3, "processNative failed"

    invoke-static {v0, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
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

    .line 92
    const-string v0, "PTTC"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsNativeLoaded:Z

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 94
    const-string/jumbo v1, "not loaded"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return v2

    .line 100
    :cond_14
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsPrepared:Z

    if-nez v1, :cond_1f

    .line 101
    const-string/jumbo v1, "not prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return v2

    .line 105
    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->nativeTerminate()Z

    move-result v1

    .line 106
    .local v1, "ret":Z
    if-nez v1, :cond_2c

    .line 107
    const-string/jumbo v3, "nativeTerminate failed"

    invoke-static {v0, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return v2

    .line 111
    :cond_2c
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->nativeTerminateOperation()Z

    move-result v1

    .line 112
    if-nez v1, :cond_39

    .line 113
    const-string/jumbo v3, "nativeTerminateOperation failed"

    invoke-static {v0, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return v2

    .line 116
    :cond_39
    sput-boolean v2, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsPrepared:Z

    .line 118
    const/4 v0, 0x1

    return v0
.end method
