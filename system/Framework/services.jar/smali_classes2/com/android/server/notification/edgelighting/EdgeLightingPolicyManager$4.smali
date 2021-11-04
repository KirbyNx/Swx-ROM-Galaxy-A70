.class Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$4;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 303
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$4;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 307
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$4;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->access$800(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Landroid/app/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    # setter for: Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mLockState:I
    invoke-static {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->access$702(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;I)I

    .line 308
    return-void
.end method
