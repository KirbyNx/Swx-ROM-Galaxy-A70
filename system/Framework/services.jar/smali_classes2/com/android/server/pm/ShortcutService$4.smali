.class Lcom/android/server/pm/ShortcutService$4;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .line 3515
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3518
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$1300(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3519
    return-void

    .line 3522
    :cond_d
    :try_start_d
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3523
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->handleLocaleChanged()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    .line 3527
    :cond_1e
    goto :goto_27

    .line 3525
    :catch_1f
    move-exception v0

    .line 3526
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v2, "Exception in mReceiver.onReceive"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3528
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    return-void
.end method
