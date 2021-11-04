.class Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;
.super Landroid/os/AsyncTask;
.source "ScepKeystoreProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkKeyAsUserSelectable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final mAlias:Ljava/lang/String;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;Ljava/lang/String;I)V
    .registers 4
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "scepuid"    # I

    .line 326
    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 327
    iput-object p2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mAlias:Ljava/lang/String;

    .line 328
    iput p3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mUid:I

    .line 329
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10
    .param p1, "unused"    # [Ljava/lang/Void;

    .line 333
    const-string v0, " as user-selectable."

    const-string v1, "Failed to mark key "

    const-string v2, "SCEPKeystoreProxyService"

    const/4 v3, 0x0

    .line 335
    .local v3, "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    const/4 v4, 0x0

    :try_start_8
    iget-object v5, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    # getter for: Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->access$000(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mUid:I

    invoke-static {v5, v6}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v5

    move-object v3, v5

    .line 336
    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    .line 337
    .local v5, "keyChainService":Landroid/security/IKeyChainService;
    iget-object v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mAlias:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/security/IKeyChainService;->setUserSelectable(Ljava/lang/String;Z)V

    .line 338
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_23} :catch_48
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_23} :catch_24

    return-object v0

    .line 342
    .end local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_24
    move-exception v5

    .line 343
    .local v5, "e":Ljava/lang/InterruptedException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mAlias:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 345
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 339
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catch_48
    move-exception v5

    .line 340
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->mAlias:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 322
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
