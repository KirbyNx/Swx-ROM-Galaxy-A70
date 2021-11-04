.class Lcom/android/server/enterprise/restriction/RoamingPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "RoamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RoamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 154
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 159
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RoamingPolicy;->blockSyncIfRoaming()V
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->access$000(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V

    .line 161
    :cond_11
    return-void
.end method
