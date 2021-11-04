.class Lcom/android/server/vr/UpmsMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "UpmsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/UpmsMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/UpmsMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/vr/UpmsMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/UpmsMonitor;

    .line 22
    iput-object p1, p0, Lcom/android/server/vr/UpmsMonitor$1;->this$0:Lcom/android/server/vr/UpmsMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 27
    const-string/jumbo v0, "reason"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 28
    .local v0, "reason":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received UpsmEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpmsObserver"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v2, p0, Lcom/android/server/vr/UpmsMonitor$1;->this$0:Lcom/android/server/vr/UpmsMonitor;

    # getter for: Lcom/android/server/vr/UpmsMonitor;->mUPSMEnabled:Z
    invoke-static {v2}, Lcom/android/server/vr/UpmsMonitor;->access$000(Lcom/android/server/vr/UpmsMonitor;)Z

    move-result v2

    .line 31
    .local v2, "lastUPSMEnabled":Z
    const/4 v4, 0x2

    if-eq v0, v4, :cond_57

    const/4 v4, 0x3

    if-eq v0, v4, :cond_57

    const/4 v4, 0x4

    if-eq v0, v4, :cond_57

    const/4 v4, 0x5

    if-eq v0, v4, :cond_51

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown reason="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 38
    :cond_51
    iget-object v3, p0, Lcom/android/server/vr/UpmsMonitor$1;->this$0:Lcom/android/server/vr/UpmsMonitor;

    # setter for: Lcom/android/server/vr/UpmsMonitor;->mUPSMEnabled:Z
    invoke-static {v3, v1}, Lcom/android/server/vr/UpmsMonitor;->access$002(Lcom/android/server/vr/UpmsMonitor;Z)Z

    .line 39
    goto :goto_5e

    .line 35
    :cond_57
    iget-object v1, p0, Lcom/android/server/vr/UpmsMonitor$1;->this$0:Lcom/android/server/vr/UpmsMonitor;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/vr/UpmsMonitor;->mUPSMEnabled:Z
    invoke-static {v1, v3}, Lcom/android/server/vr/UpmsMonitor;->access$002(Lcom/android/server/vr/UpmsMonitor;Z)Z

    .line 36
    nop

    .line 45
    :goto_5e
    iget-object v1, p0, Lcom/android/server/vr/UpmsMonitor$1;->this$0:Lcom/android/server/vr/UpmsMonitor;

    # getter for: Lcom/android/server/vr/UpmsMonitor;->mUPSMEnabled:Z
    invoke-static {v1}, Lcom/android/server/vr/UpmsMonitor;->access$000(Lcom/android/server/vr/UpmsMonitor;)Z

    move-result v1

    if-eq v2, v1, :cond_7d

    .line 46
    iget-object v1, p0, Lcom/android/server/vr/UpmsMonitor$1;->this$0:Lcom/android/server/vr/UpmsMonitor;

    # getter for: Lcom/android/server/vr/UpmsMonitor;->mOnUpmsListener:Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;
    invoke-static {v1}, Lcom/android/server/vr/UpmsMonitor;->access$100(Lcom/android/server/vr/UpmsMonitor;)Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;

    move-result-object v1

    if-eqz v1, :cond_7d

    .line 47
    iget-object v1, p0, Lcom/android/server/vr/UpmsMonitor$1;->this$0:Lcom/android/server/vr/UpmsMonitor;

    # getter for: Lcom/android/server/vr/UpmsMonitor;->mOnUpmsListener:Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;
    invoke-static {v1}, Lcom/android/server/vr/UpmsMonitor;->access$100(Lcom/android/server/vr/UpmsMonitor;)Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/vr/UpmsMonitor$1;->this$0:Lcom/android/server/vr/UpmsMonitor;

    # getter for: Lcom/android/server/vr/UpmsMonitor;->mUPSMEnabled:Z
    invoke-static {v3}, Lcom/android/server/vr/UpmsMonitor;->access$000(Lcom/android/server/vr/UpmsMonitor;)Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;->onUpmsStateChanged(Z)V

    .line 50
    :cond_7d
    return-void
.end method
