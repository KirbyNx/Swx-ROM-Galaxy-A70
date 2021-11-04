.class Lcom/android/server/enterprise/kioskmode/KioskModeService$7;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerSwitchingUserReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 1101
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$7;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1104
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1105
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$7;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(ZI)Z
    invoke-static {v2, v1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1400(Lcom/android/server/enterprise/kioskmode/KioskModeService;ZI)Z

    .line 1106
    return-void
.end method
