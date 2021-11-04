.class Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;
.super Landroid/database/ContentObserver;
.source "DatabaseSizeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseSizeContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 64
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 69
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$000(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getDatabaseSize(Landroid/content/Context;)J

    move-result-wide v0

    .line 72
    .local v0, "currentSize":J
    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange(): currentSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$200(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$300(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_4f

    .line 75
    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onChange(): alert triggered"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$000(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastDbSizeWarning(Landroid/content/Context;)V

    .line 77
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z
    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$202(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Z)Z

    .line 80
    :cond_4f
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$400(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6d

    .line 81
    # getter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onChange(): full triggered"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z
    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$202(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Z)Z

    .line 83
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    # invokes: Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->startCompression()V
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->access$500(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)V

    .line 85
    :cond_6d
    return-void
.end method
