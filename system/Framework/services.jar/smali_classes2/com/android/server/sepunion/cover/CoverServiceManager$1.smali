.class Lcom/android/server/sepunion/cover/CoverServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 78
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 84
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_b

    .line 85
    return-void

    .line 87
    :cond_b
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "pkgName":Ljava/lang/String;
    if-nez v2, :cond_12

    .line 89
    return-void

    .line 91
    :cond_12
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 92
    .local v3, "added":Z
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 94
    .local v4, "changed":Z
    sget-boolean v5, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v5, :cond_43

    .line 95
    # getter for: Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive : action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pkgName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_43
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    # getter for: Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;
    invoke-static {v5}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$100(Lcom/android/server/sepunion/cover/CoverServiceManager;)Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object v5

    .line 97
    .local v5, "coverState":Lcom/samsung/android/cover/CoverState;
    if-nez v3, :cond_51

    if-eqz v4, :cond_b5

    .line 98
    :cond_51
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 99
    .local v6, "extras":Landroid/os/Bundle;
    const/4 v7, 0x0

    if-nez v4, :cond_6a

    if-eqz v6, :cond_63

    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_63

    goto :goto_6a

    .line 102
    :cond_63
    iget-object v8, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    # invokes: Lcom/android/server/sepunion/cover/CoverServiceManager;->addCoverService(Ljava/lang/String;)Z
    invoke-static {v8, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$300(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result v8

    .local v8, "success":Z
    goto :goto_70

    .line 100
    .end local v8    # "success":Z
    :cond_6a
    :goto_6a
    iget-object v8, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    # invokes: Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverService(Ljava/lang/String;)Z
    invoke-static {v8, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$200(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result v8

    .line 104
    .restart local v8    # "success":Z
    :goto_70
    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_82

    .line 105
    iget-object v9, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v10

    invoke-virtual {v9, v10, v7}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    goto :goto_b5

    .line 106
    :cond_82
    if-eqz v8, :cond_b5

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 108
    iget-object v9, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v10

    const/4 v11, 0x1

    # invokes: Lcom/android/server/sepunion/cover/CoverServiceManager;->getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;
    invoke-static {v9, v10, v11, v7}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$400(Lcom/android/server/sepunion/cover/CoverServiceManager;IZZ)Landroid/content/ComponentName;

    move-result-object v9

    .line 109
    .local v9, "component":Landroid/content/ComponentName;
    if-eqz v9, :cond_ac

    iget-object v10, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    # invokes: Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
    invoke-static {v10, v9}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$500(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v10

    if-nez v10, :cond_ac

    iget-object v10, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 110
    # invokes: Lcom/android/server/sepunion/cover/CoverServiceManager;->containsBindingServiceLocked(Landroid/content/ComponentName;)Z
    invoke-static {v10, v9}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$600(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_ac

    .line 111
    iget-object v10, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    # invokes: Lcom/android/server/sepunion/cover/CoverServiceManager;->removeBindingServiceLocked(Landroid/content/ComponentName;)V
    invoke-static {v10, v9}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$700(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)V

    .line 113
    :cond_ac
    iget-object v10, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v11

    invoke-virtual {v10, v11, v7}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 116
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "success":Z
    .end local v9    # "component":Landroid/content/ComponentName;
    :cond_b5
    :goto_b5
    return-void
.end method
