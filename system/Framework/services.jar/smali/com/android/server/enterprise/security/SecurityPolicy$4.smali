.class Lcom/android/server/enterprise/security/SecurityPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 800
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 802
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 805
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    .line 807
    :try_start_f
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z
    invoke-static {v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$902(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z

    .line 808
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_1a
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_f .. :try_end_1a} :catch_1d
    .catchall {:try_start_f .. :try_end_1a} :catchall_1b

    .line 811
    goto :goto_26

    .line 812
    :catchall_1b
    move-exception v2

    goto :goto_28

    .line 809
    :catch_1d
    move-exception v2

    .line 810
    .local v2, "e":Ljava/lang/IllegalMonitorStateException;
    :try_start_1e
    const-string v3, "SecurityPolicy"

    const-string/jumbo v4, "formatStorageCard - IllegalMonitorStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    .end local v2    # "e":Ljava/lang/IllegalMonitorStateException;
    :goto_26
    monitor-exit v1

    goto :goto_2a

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_1b

    throw v2

    .line 814
    :cond_2a
    :goto_2a
    return-void
.end method
