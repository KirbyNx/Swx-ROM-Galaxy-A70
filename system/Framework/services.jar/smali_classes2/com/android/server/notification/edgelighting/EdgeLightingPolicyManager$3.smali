.class Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
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
.method constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 187
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 190
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    # setter for: Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z
    invoke-static {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->access$602(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)Z

    .line 191
    return-void
.end method
