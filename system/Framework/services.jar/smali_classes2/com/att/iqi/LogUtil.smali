.class public Lcom/att/iqi/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static sDebug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/att/iqi/LogUtil;->sDebug:Z

    .line 19
    const-string v0, "IQIConcierge"

    sput-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLogging(Z)V
    .registers 1
    .param p0, "debug"    # Z

    .line 46
    sput-boolean p0, Lcom/att/iqi/LogUtil;->sDebug:Z

    .line 47
    return-void
.end method

.method public static isLoggingEnabled()Z
    .registers 1

    .line 50
    sget-boolean v0, Lcom/att/iqi/LogUtil;->sDebug:Z

    return v0
.end method

.method public static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 34
    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 26
    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 42
    sget-object v0, Lcom/att/iqi/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    return-void
.end method
