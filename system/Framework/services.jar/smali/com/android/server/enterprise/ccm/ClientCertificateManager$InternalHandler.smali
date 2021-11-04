.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;
.super Landroid/os/Handler;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalHandler"
.end annotation


# static fields
.field public static final MSG_CHECK_LICENSE_STATUS:I = 0x2

.field public static final MSG_ON_CONTAINER_LOCKED:I = 0x4

.field public static final MSG_ON_CONTAINER_UNLOCKED:I = 0x5

.field public static final MSG_ON_LICENSE_ACTIVATED:I = 0x7

.field public static final MSG_ON_LICENSE_EXPIRED:I = 0x6

.field public static final MSG_UPDATE_ACM_STATUS:I = 0x3

.field public static final MSG_UPDATE_LOCK_STATUS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 345
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 346
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 347
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 349
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2b

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_2b

    .line 352
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Landroid/content/Intent;

    .line 354
    :cond_2b
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_b0

    goto/16 :goto_af

    .line 382
    :pswitch_34
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->notifyLicenseStatusInternal()Z
    invoke-static {v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Z

    goto/16 :goto_af

    .line 378
    :pswitch_3b
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v1, v4, v2, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    .line 379
    goto :goto_af

    .line 375
    :pswitch_43
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v1, v4, v2, v3, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    .line 376
    goto :goto_af

    .line 372
    :pswitch_4b
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v1, v4, v2, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    .line 373
    goto :goto_af

    .line 368
    :pswitch_53
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_af

    .line 369
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateAccessMethod(Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;I)Z
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;I)Z

    goto :goto_af

    .line 362
    :pswitch_63
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_af

    .line 363
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_CHECK_LICENSE_STATUS>>adminId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLicenseStatus(IILjava/lang/String;)Z

    goto :goto_af

    .line 356
    :pswitch_99
    if-eqz v0, :cond_af

    .line 357
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Initialize mInternalHandler MSG_UPDATE_LOCK_STATUS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v1, v2, v3, v3, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    .line 385
    :cond_af
    :goto_af
    return-void

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_99
        :pswitch_63
        :pswitch_53
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_34
    .end packed-switch
.end method
