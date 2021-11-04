.class public Lcom/android/server/knox/ddar/DDLog$LoggerProxy;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;
.source "DDLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/DDLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggerProxy"
.end annotation


# static fields
.field public static final LOG_MSG:Ljava/lang/String; = "LOG_MSG"

.field public static final LOG_MSG_COMMAND:Ljava/lang/String; = "LOG_MSG_COMMAND"

.field private static mInstance:Lcom/android/server/knox/ddar/DDLog$LoggerProxy;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;-><init>()V

    .line 118
    const-string v0, "DDLog"

    const-string v1, "Logger ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-object p1, p0, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {p1}, Lcom/android/server/knox/ddar/DDLog$Logger;->createInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDLog$Logger;

    .line 122
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDLog$LoggerProxy;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    monitor-enter v0

    .line 111
    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    if-nez v1, :cond_e

    .line 112
    new-instance v1, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    .line 114
    :cond_e
    sget-object v1, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/ddar/DDLog$LoggerProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 110
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 127
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v0, "out":Landroid/os/Bundle;
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x6d6d3bb2

    if-eq v2, v3, :cond_10

    :cond_f
    goto :goto_19

    :cond_10
    const-string v2, "LOG_MSG_COMMAND"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_1c

    goto :goto_25

    .line 130
    :cond_1c
    const-string v1, "LOG_MSG"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "logmsg":Ljava/lang/String;
    # invokes: Lcom/android/server/knox/ddar/DDLog$Logger;->enqueLog(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$000(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 134
    .end local v1    # "logmsg":Ljava/lang/String;
    :goto_25
    return-object v0

    .line 135
    .end local v0    # "out":Landroid/os/Bundle;
    :catch_26
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
