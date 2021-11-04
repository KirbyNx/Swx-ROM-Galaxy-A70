.class Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableRecord"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

.field token:Landroid/os/IBinder;

.field what:I


# direct methods
.method private constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V
    .registers 2

    .line 903
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
    .param p2, "x1"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;

    .line 903
    invoke-direct {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 911
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died for packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 913
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 914
    return-void
.end method
