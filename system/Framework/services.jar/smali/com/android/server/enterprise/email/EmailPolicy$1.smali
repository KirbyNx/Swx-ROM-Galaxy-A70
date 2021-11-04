.class Lcom/android/server/enterprise/email/EmailPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "EmailPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/EmailPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/EmailPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/EmailPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/email/EmailPolicy;

    .line 465
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy$1;->this$0:Lcom/android/server/enterprise/email/EmailPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 468
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 470
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 471
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailPolicy$1;->this$0:Lcom/android/server/enterprise/email/EmailPolicy;

    # invokes: Lcom/android/server/enterprise/email/EmailPolicy;->onUserRemoved(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/email/EmailPolicy;->access$000(Lcom/android/server/enterprise/email/EmailPolicy;I)V

    .line 473
    .end local v1    # "userId":I
    :cond_18
    return-void
.end method
