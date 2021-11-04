.class public Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiOffloadLogStats"
.end annotation


# static fields
.field static sCriticalStats:Lcom/android/server/wifioffload/WifiOffloadLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 748
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifioffload/WifiOffloadLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpStats()V
    .registers 2

    .line 755
    sget-object v0, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifioffload/WifiOffloadLogger;

    if-eqz v0, :cond_8

    .line 756
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifioffload/WifiOffloadLogger;->logLastDiscourse(Z)V

    .line 758
    :cond_8
    return-void
.end method

.method public static dumpStats(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "writer"    # Ljava/io/PrintWriter;

    .line 761
    sget-object v0, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifioffload/WifiOffloadLogger;

    if-eqz v0, :cond_9

    .line 762
    const-string v1, "  "

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wifioffload/WifiOffloadLogger;->logLastDiscourse(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 764
    :cond_9
    return-void
.end method

.method public static initStats()V
    .registers 3

    .line 751
    new-instance v0, Lcom/android/server/wifioffload/WifiOffloadLogger;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifioffload/WifiOffloadLogger;-><init>(IZ)V

    sput-object v0, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifioffload/WifiOffloadLogger;

    .line 752
    return-void
.end method

.method public static logStats(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 767
    sget-object v0, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifioffload/WifiOffloadLogger;

    if-eqz v0, :cond_7

    .line 768
    invoke-virtual {v0, p0}, Lcom/android/server/wifioffload/WifiOffloadLogger;->logString(Ljava/lang/String;)V

    .line 770
    :cond_7
    return-void
.end method
