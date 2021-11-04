.class public final Lorg/tensorflow/lite/TensorFlowLite;
.super Ljava/lang/Object;
.source "TensorFlowLite.java"


# static fields
.field private static final FALLBACK_LIBNAME:Ljava/lang/String; = "tensorflowlite_flex_jni"

.field private static final PRIMARY_LIBNAME:Ljava/lang/String; = "tensorflowlite_jni"

.field private static final PRIMARY_SEC_LIBNAME:Ljava/lang/String; = "tflite_v113_jni"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 82
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->init()Z

    .line 83
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init()Z
    .registers 5

    .line 56
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "tflite_v113_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_6} :catch_7

    .line 57
    return v0

    .line 58
    :catch_7
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    move-object v2, v1

    .line 63
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    .local v2, "primaryLibException":Ljava/lang/Throwable;
    :try_start_9
    const-string v1, "tensorflowlite_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_e} :catch_f

    .line 64
    return v0

    .line 65
    :catch_f
    move-exception v1

    .line 66
    .restart local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    move-object v2, v1

    .line 70
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_11
    const-string v1, "tensorflowlite_flex_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_11 .. :try_end_16} :catch_17

    .line 71
    return v0

    .line 72
    :catch_17
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TensorFlowLite: failed to load native library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v0, 0x0

    return v0
.end method

.method static native initTensorFlow()V
.end method

.method public static native runtimeVersion()Ljava/lang/String;
.end method

.method public static native schemaVersion()Ljava/lang/String;
.end method

.method public static version()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->schemaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
