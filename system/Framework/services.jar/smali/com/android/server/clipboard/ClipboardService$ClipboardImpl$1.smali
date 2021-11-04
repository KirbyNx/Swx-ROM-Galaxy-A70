.class Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$1;
.super Ljava/lang/Object;
.source "ClipboardService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;


# direct methods
.method constructor <init>(Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    .line 412
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$1;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 415
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$1;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    # getter for: Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->access$500(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x104028c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 417
    return-void
.end method
