.class Lcom/android/server/bridge/BridgeProxy$1;
.super Ljava/lang/Object;
.source "BridgeProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bridge/BridgeProxy;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 226
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "isExecuteCleauUpService":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$200(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3d

    .line 232
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$300(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 233
    .local v1, "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_3c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, "mPersonaInfo":Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 236
    .local v4, "mPersonaIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 237
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    move-object v3, v5

    .line 238
    if-eqz v3, :cond_21

    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_21

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 239
    goto :goto_21

    .line 240
    :cond_3b
    const/4 v0, 0x1

    .line 244
    .end local v1    # "mPersonaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "mPersonaInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "mPersonaIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_3c
    goto :goto_3e

    .line 245
    :cond_3d
    const/4 v0, 0x1

    .line 247
    :goto_3e
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isExecuteCleauUpService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mDelegateUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 248
    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$200(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v0, :cond_73

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mCreationCase:Z
    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$500(Lcom/android/server/bridge/BridgeProxy;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 250
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$1;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # invokes: Lcom/android/server/bridge/BridgeProxy;->doSyncForAllSyncers(Z)V
    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;Z)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_73} :catch_74

    .line 254
    .end local v0    # "isExecuteCleauUpService":Z
    :cond_73
    goto :goto_78

    .line 252
    :catch_74
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_78
    return-void
.end method
