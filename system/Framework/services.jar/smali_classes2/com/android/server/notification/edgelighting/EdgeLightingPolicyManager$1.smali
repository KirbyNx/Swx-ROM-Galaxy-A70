.class Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;
.super Landroid/database/ContentObserver;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 150
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 153
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->access$200(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    # setter for: Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z
    invoke-static {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->access$102(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)Z

    .line 155
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "heads up is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z
    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "enabled"

    goto :goto_27

    :cond_25
    const-string v2, "disabled"

    :goto_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method
