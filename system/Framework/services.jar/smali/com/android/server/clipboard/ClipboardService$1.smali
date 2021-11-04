.class Lcom/android/server/clipboard/ClipboardService$1;
.super Ljava/lang/Object;
.source "ClipboardService.java"

# interfaces
.implements Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/clipboard/ClipboardService;

    .line 228
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostClipboardUpdated(Ljava/lang/String;)V
    .registers 7
    .param p1, "contents"    # Ljava/lang/String;

    .line 231
    new-instance v0, Landroid/content/ClipData;

    const-string/jumbo v1, "text/plain"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "host clipboard"

    invoke-direct {v0, v3, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 235
    .local v0, "clip":Landroid/content/ClipData;
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    # getter for: Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->access$000(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 236
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-static {v3, v4}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V

    .line 238
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_2b

    throw v2
.end method
