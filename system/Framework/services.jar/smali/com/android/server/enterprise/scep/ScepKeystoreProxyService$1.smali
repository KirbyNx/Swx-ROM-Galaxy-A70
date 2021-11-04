.class Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;
.super Ljava/lang/Object;
.source "ScepKeystoreProxyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->grantAccessForAKS(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$uidscep:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    .line 573
    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    iput p2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    iput-object p3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$alias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 575
    const/4 v0, 0x0

    .line 577
    .local v0, "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    # getter for: Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->access$000(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    invoke-static {v1, v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v1

    move-object v0, v1

    .line 578
    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 579
    .local v1, "keyChainService":Landroid/security/IKeyChainService;
    iget v2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    iget-object v3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$alias:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1a} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_29
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1a} :catch_22
    .catchall {:try_start_1 .. :try_end_1a} :catchall_20

    .line 589
    .end local v1    # "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v0, :cond_37

    :goto_1c
    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_37

    :catchall_20
    move-exception v1

    goto :goto_38

    .line 586
    :catch_22
    move-exception v1

    .line 587
    .local v1, "e":Ljava/lang/AssertionError;
    :try_start_23
    invoke-virtual {v1}, Ljava/lang/AssertionError;->printStackTrace()V

    .line 589
    .end local v1    # "e":Ljava/lang/AssertionError;
    if-eqz v0, :cond_37

    goto :goto_1c

    .line 583
    :catch_29
    move-exception v1

    .line 585
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 589
    .end local v1    # "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_37

    goto :goto_1c

    .line 580
    :catch_30
    move-exception v1

    .line 582
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_20

    .line 589
    .end local v1    # "e":Ljava/lang/InterruptedException;
    if-eqz v0, :cond_37

    goto :goto_1c

    .line 591
    :cond_37
    :goto_37
    return-void

    .line 589
    :goto_38
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 590
    :cond_3d
    throw v1
.end method
