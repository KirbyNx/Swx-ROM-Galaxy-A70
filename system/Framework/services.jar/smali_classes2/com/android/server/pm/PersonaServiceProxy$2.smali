.class Lcom/android/server/pm/PersonaServiceProxy$2;
.super Landroid/content/BroadcastReceiver;
.source "PersonaServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaServiceProxy;

    .line 96
    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 102
    .local v1, "userHandle":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast received. Action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersonaManagerService::Proxy"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " started. Finding container service..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersonaManagerService::Proxy"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # invokes: Lcom/android/server/pm/PersonaServiceProxy;->findAndConnectToContainerService(I)V
    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaServiceProxy;->access$100(Lcom/android/server/pm/PersonaServiceProxy;I)V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is enabled COM container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersonaManagerService::Proxy"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/android/server/pm/PersonaServiceProxy;->access$200(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/os/UserManager;

    move-result-object v2

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/android/server/pm/PersonaServiceProxy;->access$200(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    goto :goto_7a

    :cond_79
    const/4 v2, 0x0

    .line 108
    .local v2, "ui":Landroid/content/pm/UserInfo;
    :goto_7a
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/pm/PersonaServiceProxy;->access$300(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/content/Context;

    move-result-object v3

    .line 109
    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    .line 110
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    goto/16 :goto_1a4

    :cond_8b
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_13e

    .line 111
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 112
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed User - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaManagerService::Proxy"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z
    invoke-static {v3}, Lcom/android/server/pm/PersonaServiceProxy;->access$000(Lcom/android/server/pm/PersonaServiceProxy;)Z

    move-result v3

    if-nez v3, :cond_136

    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # invokes: Lcom/android/server/pm/PersonaServiceProxy;->isKnoxProfileExist()Z
    invoke-static {v3}, Lcom/android/server/pm/PersonaServiceProxy;->access$400(Lcom/android/server/pm/PersonaServiceProxy;)Z

    move-result v3

    if-nez v3, :cond_136

    .line 114
    const-string v3, "PersonaManagerService::Proxy"

    const-string v4, "No Knox profile exist on device so stopping all Container service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/pm/PersonaServiceProxy;->access$500(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 117
    :try_start_ce
    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaServiceProxy;->access$600(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_131

    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaServiceProxy;->access$600(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_131

    .line 118
    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaServiceProxy;->access$600(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 119
    .local v4, "it":Ljava/util/Iterator;
    :goto_f0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_128

    .line 120
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 121
    .local v5, "pair":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ContainerServiceInfo;

    .line 122
    .local v6, "info":Lcom/android/server/ContainerServiceInfo;
    nop

    .line 123
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ContainerServiceWrapper;

    .line 124
    .local v7, "service":Lcom/android/server/ContainerServiceWrapper;
    const-string v8, "PersonaManagerService::Proxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stopping Container service - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v7}, Lcom/android/server/ContainerServiceWrapper;->disconnect()Z

    .line 126
    nop

    .end local v5    # "pair":Ljava/util/Map$Entry;
    .end local v6    # "info":Lcom/android/server/ContainerServiceInfo;
    .end local v7    # "service":Lcom/android/server/ContainerServiceWrapper;
    goto :goto_f0

    .line 127
    :cond_128
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/pm/PersonaServiceProxy;->access$600(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 129
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_131
    monitor-exit v3

    goto :goto_1a3

    :catchall_133
    move-exception v4

    monitor-exit v3
    :try_end_135
    .catchall {:try_start_ce .. :try_end_135} :catchall_133

    throw v4

    .line 131
    :cond_136
    const-string v3, "PersonaManagerService::Proxy"

    const-string v4, "Knox profile exist on device so not stopping Container service..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a3

    .line 134
    .end local v2    # "userId":I
    :cond_13e
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a3

    .line 135
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .restart local v2    # "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added User - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaManagerService::Proxy"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 139
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/pm/PersonaServiceProxy;->findAndConnectToContainerService(I)V
    invoke-static {v3, v4}, Lcom/android/server/pm/PersonaServiceProxy;->access$100(Lcom/android/server/pm/PersonaServiceProxy;I)V

    goto :goto_1a4

    .line 141
    :cond_16f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added User - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is a non-knox user, so disable Secure Folder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaManagerService::Proxy"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_18a
    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/pm/PackageManagerService;

    .line 144
    .local v4, "mPm":Lcom/android/server/pm/PackageManagerService;
    const-string v5, "com.samsung.knox.securefolder"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_19d} :catch_19e

    .line 145
    .end local v4    # "mPm":Lcom/android/server/pm/PackageManagerService;
    goto :goto_1a4

    :catch_19e
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a4

    .line 134
    .end local v2    # "userId":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1a3
    :goto_1a3
    nop

    .line 148
    :goto_1a4
    return-void
.end method
