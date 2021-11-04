.class Lcom/android/server/bridge/BridgeProxy$RunnableCallback;
.super Landroid/os/IRunnableCallback$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2

    .line 1996
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/os/IRunnableCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p2, "x1"    # Lcom/android/server/bridge/BridgeProxy$1;

    .line 1996
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 23
    .param p1, "bdl"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2001
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "action"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "moveToContactPreProcess"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37b

    .line 2002
    const-string/jumbo v0, "targetIdAdded"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2003
    .local v5, "targetIdAdded":Z
    const-string/jumbo v0, "target"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2004
    .local v6, "targetId":I
    const-string v0, "com.sec.knox.moveto.containerId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2006
    .local v7, "containerId":I
    const-string/jumbo v0, "srcContainerId"

    const-string v8, "Contact"

    const-string/jumbo v9, "moveToFor"

    const-string v10, "com.sec.knox.bridge.MOVE_TO_KNOX"

    const/high16 v11, 0x10000000

    const-string v12, "destContainerId"

    const/4 v13, 0x0

    if-eqz v5, :cond_d4

    if-ne v5, v3, :cond_44

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v14

    if-eqz v14, :cond_44

    goto/16 :goto_d4

    .line 2111
    :cond_44
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v14, "onReceive() Move to personal"

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2113
    .local v3, "moveOut":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2114
    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2115
    iget-object v8, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->access$200(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v8

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2116
    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2117
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$200(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 2118
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSecureFolderSwitchActivity:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$2300(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_ba

    .line 2120
    :cond_96
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$1700(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$1700(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContainerAgentSwitchActivity:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$2400(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2121
    :goto_ba
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2123
    :try_start_bd
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v8, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$2200(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v9

    # invokes: Lcom/android/server/bridge/BridgeProxy;->clearIdentityAndStartActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    invoke-static {v0, v8, v3, v9}, Lcom/android/server/bridge/BridgeProxy;->access$2500(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_ce} :catch_cf

    .line 2126
    goto :goto_d3

    .line 2124
    :catch_cf
    move-exception v0

    .line 2125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d3
    return-object v4

    .line 2007
    .end local v3    # "moveOut":Landroid/content/Intent;
    :cond_d4
    :goto_d4
    const/4 v14, 0x0

    .line 2009
    .local v14, "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 2012
    .local v15, "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v11, "user"

    invoke-virtual {v4, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 2013
    .local v4, "um":Landroid/os/UserManager;
    const-string v11, "KNOX"

    .line 2014
    .local v11, "message":Ljava/lang/String;
    const/4 v13, -0x1

    if-ne v7, v13, :cond_13e

    .line 2015
    iget-object v13, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "move_to_knox"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v13, v3}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2016
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v13

    .line 2017
    .local v13, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_100
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_139

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2018
    .local v3, "ui":Landroid/content/pm/UserInfo;
    move/from16 v17, v5

    .end local v5    # "targetIdAdded":Z
    .local v17, "targetIdAdded":Z
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_130

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_130

    .line 2019
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move/from16 v19, v6

    .end local v6    # "targetId":I
    .local v19, "targetId":I
    iget-object v6, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_132

    .line 2018
    .end local v19    # "targetId":I
    .restart local v6    # "targetId":I
    :cond_130
    move/from16 v19, v6

    .line 2021
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    .end local v6    # "targetId":I
    .restart local v19    # "targetId":I
    :goto_132
    move/from16 v5, v17

    move-object/from16 v3, v18

    move/from16 v6, v19

    goto :goto_100

    .line 2017
    .end local v17    # "targetIdAdded":Z
    .end local v19    # "targetId":I
    .restart local v5    # "targetIdAdded":Z
    .restart local v6    # "targetId":I
    :cond_139
    move/from16 v17, v5

    move/from16 v19, v6

    .end local v5    # "targetIdAdded":Z
    .end local v6    # "targetId":I
    .end local v13    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v17    # "targetIdAdded":Z
    .restart local v19    # "targetId":I
    goto :goto_158

    .line 2022
    .end local v17    # "targetIdAdded":Z
    .end local v19    # "targetId":I
    .restart local v5    # "targetIdAdded":Z
    .restart local v6    # "targetId":I
    :cond_13e
    move/from16 v17, v5

    move/from16 v19, v6

    .end local v5    # "targetIdAdded":Z
    .end local v6    # "targetId":I
    .restart local v17    # "targetIdAdded":Z
    .restart local v19    # "targetId":I
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 2023
    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2024
    .restart local v3    # "ui":Landroid/content/pm/UserInfo;
    const-string v11, "Secure Folder"

    .line 2025
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_159

    .line 2022
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_158
    :goto_158
    nop

    .line 2029
    :goto_159
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2030
    .local v3, "moveTo":Landroid/content/Intent;
    iget-object v5, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$200(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2031
    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2032
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2033
    const/16 v0, -0x3e8

    if-ne v7, v0, :cond_1cc

    .line 2035
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Need to Create secure Folder"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v5

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getSecureFolderId(Landroid/content/Context;)I
    invoke-static {v0, v5}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_1c6

    .line 2037
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSecureFolderSwitchActivity:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$2300(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2038
    const-string/jumbo v0, "isSilent"

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2039
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Landroid/os/UserHandle;-><init>(I)V

    # invokes: Lcom/android/server/bridge/BridgeProxy;->clearIdentityAndStartActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    invoke-static {v0, v5, v3, v6}, Lcom/android/server/bridge/BridgeProxy;->access$2500(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    move-object/from16 v20, v3

    move-object/from16 v18, v4

    goto/16 :goto_379

    .line 2036
    :cond_1c6
    move-object/from16 v20, v3

    move-object/from16 v18, v4

    goto/16 :goto_379

    .line 2041
    :cond_1cc
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_259

    .line 2042
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2043
    .local v0, "tempidSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 2044
    .local v5, "mMoveToDestId":I
    :goto_1dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1ed

    .line 2045
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1dc

    .line 2048
    :cond_1ed
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_218

    .line 2049
    iget-object v6, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSecureFolderSwitchActivity:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$2300(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23c

    .line 2051
    :cond_218
    iget-object v6, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1700(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$1700(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContainerAgentSwitchActivity:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$2400(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2053
    :goto_23c
    invoke-virtual {v3, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2054
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2055
    iget-object v6, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$2200(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v9

    # invokes: Lcom/android/server/bridge/BridgeProxy;->clearIdentityAndStartActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    invoke-static {v6, v8, v3, v9}, Lcom/android/server/bridge/BridgeProxy;->access$2500(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2056
    .end local v0    # "tempidSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5    # "mMoveToDestId":I
    move-object/from16 v20, v3

    move-object/from16 v18, v4

    goto/16 :goto_379

    :cond_259
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_375

    .line 2057
    const/4 v0, -0x1

    invoke-virtual {v3, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 2059
    .local v5, "movetoContactIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    .line 2060
    .local v6, "componentToUserID":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    .line 2062
    .local v8, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_279
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    if-eqz v9, :cond_2af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 2068
    .local v9, "uInfo":Landroid/content/pm/UserInfo;
    iget-object v12, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # invokes: Lcom/android/server/bridge/BridgeProxy;->isFirstContainer(Landroid/content/pm/UserInfo;)Z
    invoke-static {v12, v9}, Lcom/android/server/bridge/BridgeProxy;->access$2700(Lcom/android/server/bridge/BridgeProxy;Landroid/content/pm/UserInfo;)Z

    move-result v12

    if-eqz v12, :cond_293

    .line 2069
    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2ae

    .line 2070
    :cond_293
    iget-object v10, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # invokes: Lcom/android/server/bridge/BridgeProxy;->isSecondContainer(Landroid/content/pm/UserInfo;)Z
    invoke-static {v10, v9}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;Landroid/content/pm/UserInfo;)Z

    move-result v10

    if-eqz v10, :cond_2a1

    .line 2071
    const-string v10, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2ae

    .line 2072
    :cond_2a1
    iget-object v10, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # invokes: Lcom/android/server/bridge/BridgeProxy;->isThirdContainer(Landroid/content/pm/UserInfo;)Z
    invoke-static {v10, v9}, Lcom/android/server/bridge/BridgeProxy;->access$2900(Lcom/android/server/bridge/BridgeProxy;Landroid/content/pm/UserInfo;)Z

    move-result v10

    if-eqz v10, :cond_2ae

    .line 2073
    const-string v10, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    .end local v9    # "uInfo":Landroid/content/pm/UserInfo;
    :cond_2ae
    :goto_2ae
    goto :goto_279

    .line 2077
    :cond_2af
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 2078
    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$200(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {v0, v3, v12, v9}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 2079
    .local v9, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_333

    .line 2080
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2ce
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_32e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 2081
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2082
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v16, v0

    new-instance v0, Landroid/content/ComponentName;

    move-object/from16 v18, v4

    .end local v4    # "um":Landroid/os/UserManager;
    .local v18, "um":Landroid/os/UserManager;
    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v13, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    .local v0, "compName":Landroid/content/ComponentName;
    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_325

    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2085
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2086
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v4

    if-eqz v4, :cond_322

    .line 2087
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2088
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2089
    move-object/from16 v20, v3

    .end local v3    # "moveTo":Landroid/content/Intent;
    .local v20, "moveTo":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31e

    .line 2090
    const/4 v3, 0x0

    invoke-interface {v5, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_327

    .line 2092
    :cond_31e
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_327

    .line 2086
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v20    # "moveTo":Landroid/content/Intent;
    .restart local v3    # "moveTo":Landroid/content/Intent;
    :cond_322
    move-object/from16 v20, v3

    .end local v3    # "moveTo":Landroid/content/Intent;
    .restart local v20    # "moveTo":Landroid/content/Intent;
    goto :goto_327

    .line 2084
    .end local v20    # "moveTo":Landroid/content/Intent;
    .restart local v3    # "moveTo":Landroid/content/Intent;
    :cond_325
    move-object/from16 v20, v3

    .line 2094
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v3    # "moveTo":Landroid/content/Intent;
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .restart local v20    # "moveTo":Landroid/content/Intent;
    :goto_327
    move-object/from16 v0, v16

    move-object/from16 v4, v18

    move-object/from16 v3, v20

    goto :goto_2ce

    .line 2080
    .end local v18    # "um":Landroid/os/UserManager;
    .end local v20    # "moveTo":Landroid/content/Intent;
    .restart local v3    # "moveTo":Landroid/content/Intent;
    .local v4, "um":Landroid/os/UserManager;
    :cond_32e
    move-object/from16 v20, v3

    move-object/from16 v18, v4

    .end local v3    # "moveTo":Landroid/content/Intent;
    .end local v4    # "um":Landroid/os/UserManager;
    .restart local v18    # "um":Landroid/os/UserManager;
    .restart local v20    # "moveTo":Landroid/content/Intent;
    goto :goto_337

    .line 2079
    .end local v18    # "um":Landroid/os/UserManager;
    .end local v20    # "moveTo":Landroid/content/Intent;
    .restart local v3    # "moveTo":Landroid/content/Intent;
    .restart local v4    # "um":Landroid/os/UserManager;
    :cond_333
    move-object/from16 v20, v3

    move-object/from16 v18, v4

    .line 2098
    .end local v3    # "moveTo":Landroid/content/Intent;
    .end local v4    # "um":Landroid/os/UserManager;
    .restart local v18    # "um":Landroid/os/UserManager;
    .restart local v20    # "moveTo":Landroid/content/Intent;
    :goto_337
    :try_start_337
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_36f

    .line 2099
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v3, "Move to KNOX"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2101
    .local v0, "chooserInten":Landroid/content/Intent;
    const-string v3, "android.intent.extra.INITIAL_INTENTS"

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2102
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2103
    iget-object v3, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v4, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    sget-object v10, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/bridge/BridgeProxy;->clearIdentityAndStartActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    invoke-static {v3, v4, v0, v10}, Lcom/android/server/bridge/BridgeProxy;->access$2500(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_36f
    .catch Ljava/lang/Exception; {:try_start_337 .. :try_end_36f} :catch_370

    .line 2107
    .end local v0    # "chooserInten":Landroid/content/Intent;
    :cond_36f
    goto :goto_379

    .line 2105
    :catch_370
    move-exception v0

    .line 2106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_379

    .line 2056
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "movetoContactIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v6    # "componentToUserID":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/UserInfo;>;"
    .end local v8    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "um":Landroid/os/UserManager;
    .end local v20    # "moveTo":Landroid/content/Intent;
    .restart local v3    # "moveTo":Landroid/content/Intent;
    .restart local v4    # "um":Landroid/os/UserManager;
    :cond_375
    move-object/from16 v20, v3

    move-object/from16 v18, v4

    .line 2109
    .end local v3    # "moveTo":Landroid/content/Intent;
    .end local v4    # "um":Landroid/os/UserManager;
    .restart local v18    # "um":Landroid/os/UserManager;
    .restart local v20    # "moveTo":Landroid/content/Intent;
    :goto_379
    const/4 v3, 0x0

    return-object v3

    .line 2129
    .end local v7    # "containerId":I
    .end local v11    # "message":Ljava/lang/String;
    .end local v14    # "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v15    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v17    # "targetIdAdded":Z
    .end local v18    # "um":Landroid/os/UserManager;
    .end local v19    # "targetId":I
    .end local v20    # "moveTo":Landroid/content/Intent;
    :cond_37b
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RequestProxy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ee

    .line 2130
    const-string v0, "cmd"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "queryPersonaInfos"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43c

    .line 2131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2133
    .local v0, "resp":Landroid/os/Bundle;
    iget-object v3, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$3900(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v3

    if-eqz v3, :cond_3ed

    .line 2134
    iget-object v3, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$3900(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getSize()I

    move-result v3

    .line 2135
    .local v3, "size":I
    if-lez v3, :cond_3ed

    .line 2136
    new-array v4, v3, [Ljava/lang/String;

    .line 2137
    .local v4, "personaTypes":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 2138
    .local v5, "personaNames":[Ljava/lang/String;
    new-array v6, v3, [I

    .line 2141
    .local v6, "personaIds":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3b6
    if-ge v7, v3, :cond_3db

    .line 2142
    iget-object v8, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;
    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->access$3900(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getItem(I)Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    move-result-object v8

    .line 2143
    .local v8, "info":Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    if-eqz v8, :cond_3d8

    .line 2144
    iget-object v9, v8, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->type:Ljava/lang/String;

    aput-object v9, v4, v7

    .line 2145
    iget v9, v8, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    aput v9, v6, v7

    .line 2146
    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget v10, v8, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getUserInfo(I)Landroid/content/pm/UserInfo;
    invoke-static {v9, v10}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v9, v5, v7

    .line 2141
    :cond_3d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b6

    .line 2154
    .end local v7    # "i":I
    .end local v8    # "info":Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
    :cond_3db
    const-string/jumbo v7, "personaIds"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2155
    const-string/jumbo v7, "personaTypes"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2156
    const-string/jumbo v7, "personaNames"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2161
    .end local v3    # "size":I
    .end local v4    # "personaTypes":[Ljava/lang/String;
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaIds":[I
    :cond_3ed
    return-object v0

    .line 2164
    .end local v0    # "resp":Landroid/os/Bundle;
    :cond_3ee
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "GetExportPolicy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43c

    .line 2165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2166
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "syncerName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2167
    .local v3, "syncerName":Ljava/lang/String;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " get export policy for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    .line 2169
    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$200(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2167
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iget-object v4, v1, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v5, "knox-export-data"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v3, v5}, Lcom/android/server/bridge/BridgeProxy;->access$4000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2171
    .local v4, "policy":Ljava/lang/String;
    const-string/jumbo v5, "policyValue"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    return-object v0

    .line 2174
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "syncerName":Ljava/lang/String;
    .end local v4    # "policy":Ljava/lang/String;
    :cond_43c
    const/4 v3, 0x0

    return-object v3
.end method
