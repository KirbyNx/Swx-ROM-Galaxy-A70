.class Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SemExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 134
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 137
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, "userId":I
    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUserSwitchedReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    # invokes: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->userSwitch(I)V
    invoke-static {v1, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$100(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;I)V

    .line 140
    return-void
.end method
