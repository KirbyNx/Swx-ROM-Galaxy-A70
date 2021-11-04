.class interface abstract Lcom/android/server/enterprise/ccm/ClientCertificateManager$Dispatcher;
.super Ljava/lang/Object;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Dispatcher"
.end annotation


# virtual methods
.method public abstract dispatch()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract process(Landroid/security/IKnoxKeyChainService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
