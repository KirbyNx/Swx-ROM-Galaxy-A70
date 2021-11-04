.class Lcom/android/server/enterprise/restriction/RoamingPolicy$2;
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

    .line 193
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 198
    const/4 v1, 0x0

    const-string v2, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 199
    .local v1, "adapteruserId":I
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RoamingPolicy;->updateSystemUIMonitor(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->access$100(Lcom/android/server/enterprise/restriction/RoamingPolicy;I)V

    .line 201
    .end local v1    # "adapteruserId":I
    :cond_18
    return-void
.end method
