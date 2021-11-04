.class Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;
.super Landroid/database/ContentObserver;
.source "DefaultAppFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->registerDefaultIMEContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;


# direct methods
.method constructor <init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 162
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 165
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz v0, :cond_10

    .line 166
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    # getter for: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$200(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onChange - DEFAULT_INPUT_METHOD!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    # getter for: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$300(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    # invokes: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$400(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;I)V

    .line 170
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    # getter for: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$300(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    # getter for: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z
    invoke-static {v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$500(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 171
    # getter for: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderUserId:I
    invoke-static {v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$600(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)I

    move-result v0

    const/16 v1, 0x96

    if-lt v0, v1, :cond_4e

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    # getter for: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderUserId:I
    invoke-static {v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$600(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)I

    move-result v0

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_4e

    .line 172
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    # getter for: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderUserId:I
    invoke-static {v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$600(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)I

    move-result v1

    # invokes: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$400(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;I)V

    .line 174
    :cond_4e
    return-void
.end method
