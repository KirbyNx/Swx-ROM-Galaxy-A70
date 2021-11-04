.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;
.super Ljava/lang/Object;
.source "ClientCertificateManager.java"

# interfaces
.implements Lcom/android/server/enterprise/ccm/ClientCertificateManager$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "generateCSRDispatcher"
.end annotation


# instance fields
.field CSR:[B

.field attestationRoot:Ljava/lang/String;

.field keyLength:I

.field objectAlias:Ljava/lang/String;

.field owner:Ljava/lang/String;

.field password:Ljava/lang/String;

.field subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

.field userAuthRequired:Z

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p2, "userId"    # I
    .param p3, "objectAlias"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "keyLength"    # I
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "attestationRoot"    # Ljava/lang/String;
    .param p8, "owner"    # Ljava/lang/String;
    .param p9, "userAuthRequired"    # Z

    .line 6328
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6319
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->CSR:[B

    .line 6329
    iput p2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->userId:I

    .line 6330
    iput-object p3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->objectAlias:Ljava/lang/String;

    .line 6331
    iput-object p4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->subject:Ljava/lang/String;

    .line 6332
    iput p5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->keyLength:I

    .line 6333
    iput-object p6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->password:Ljava/lang/String;

    .line 6334
    iput-object p7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->attestationRoot:Ljava/lang/String;

    .line 6335
    iput-object p8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->owner:Ljava/lang/String;

    .line 6336
    iput-boolean p9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->userAuthRequired:Z

    .line 6337
    return-void
.end method


# virtual methods
.method public dispatch()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 6346
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->userId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->UKSdispatch(ILcom/android/server/enterprise/ccm/ClientCertificateManager$Dispatcher;)V
    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/android/server/enterprise/ccm/ClientCertificateManager$Dispatcher;)V

    .line 6347
    return-void
.end method

.method public getCSR()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 6340
    invoke-virtual {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->dispatch()V

    .line 6341
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->CSR:[B

    return-object v0
.end method

.method public process(Landroid/security/IKnoxKeyChainService;)V
    .registers 11
    .param p1, "knoxKeyChainService"    # Landroid/security/IKnoxKeyChainService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 6352
    :try_start_0
    iget v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->userId:I

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->objectAlias:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->subject:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->keyLength:I

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->password:Ljava/lang/String;

    const-string/jumbo v6, "samsung"

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->owner:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->userAuthRequired:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Landroid/security/IKnoxKeyChainService;->UKSgenerateCSR(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$generateCSRDispatcher;->CSR:[B
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    .line 6355
    nop

    .line 6356
    return-void

    .line 6353
    :catch_1a
    move-exception v0

    .line 6354
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method
