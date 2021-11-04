.class Lcom/android/server/MasterClearReceiver$2;
.super Ljava/util/TimerTask;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/MasterClearReceiver;

    .line 220
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$2;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 223
    const-string v0, "MasterClear"

    const-string v1, "WipeDataTask timeout, dumpstate will be captured"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v1, Landroid/os/BugreportParams;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Landroid/os/BugreportParams;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;Landroid/content/Context;)V

    .line 225
    return-void
.end method
