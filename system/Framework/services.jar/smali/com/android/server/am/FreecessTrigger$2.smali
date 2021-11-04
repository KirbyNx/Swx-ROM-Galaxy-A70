.class Lcom/android/server/am/FreecessTrigger$2;
.super Landroid/content/BroadcastReceiver;
.source "FreecessTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/FreecessTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/FreecessTrigger;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/FreecessTrigger;

    .line 191
    iput-object p1, p0, Lcom/android/server/am/FreecessTrigger$2;->this$0:Lcom/android/server/am/FreecessTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 196
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 197
    .local v1, "isReInstall":Z
    if-nez v1, :cond_2f

    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 199
    .local v2, "data":Landroid/net/Uri;
    if-eqz v2, :cond_2f

    .line 200
    const-string v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 201
    .local v3, "uid":I
    if-eq v3, v4, :cond_2f

    .line 202
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/FreecessHandler;->sendRemovePackageMsg(Ljava/lang/String;I)V

    .line 207
    .end local v1    # "isReInstall":Z
    .end local v2    # "data":Landroid/net/Uri;
    .end local v3    # "uid":I
    :cond_2f
    return-void
.end method
