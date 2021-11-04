.class Lcom/android/server/content/ContentService$AutoSyncLog;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoSyncLog"
.end annotation


# instance fields
.field private log:Ljava/lang/String;

.field private sync:Z


# direct methods
.method private constructor <init>(ZLjava/lang/String;)V
    .registers 3
    .param p1, "sync"    # Z
    .param p2, "log"    # Ljava/lang/String;

    .line 1932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1933
    iput-boolean p1, p0, Lcom/android/server/content/ContentService$AutoSyncLog;->sync:Z

    .line 1934
    iput-object p2, p0, Lcom/android/server/content/ContentService$AutoSyncLog;->log:Ljava/lang/String;

    .line 1935
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;Lcom/android/server/content/ContentService$1;)V
    .registers 4
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/content/ContentService$1;

    .line 1928
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/ContentService$AutoSyncLog;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/content/ContentService$AutoSyncLog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/ContentService$AutoSyncLog;

    .line 1928
    iget-object v0, p0, Lcom/android/server/content/ContentService$AutoSyncLog;->log:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/content/ContentService$AutoSyncLog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/ContentService$AutoSyncLog;

    .line 1928
    iget-boolean v0, p0, Lcom/android/server/content/ContentService$AutoSyncLog;->sync:Z

    return v0
.end method
