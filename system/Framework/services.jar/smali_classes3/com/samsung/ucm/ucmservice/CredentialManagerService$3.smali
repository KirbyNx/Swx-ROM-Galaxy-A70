.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 286
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 289
    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z
    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$800()Z

    move-result v0

    const-string v1, "UcmService"

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_20
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$900(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUCMODEEnabledWithPropFile()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 292
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$600(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    .line 293
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    .line 295
    .local v0, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    if-eqz v0, :cond_70

    :try_start_39
    iget v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_70

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    if-eqz v2, :cond_70

    .line 296
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    .line 297
    const-string v2, "checkUcmOdeDefaultLanguage. remove default language"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v2

    .line 299
    .local v2, "save":Z
    if-nez v2, :cond_70

    .line 300
    const-string v3, "checkUcmOdeDefaultLanguage. failed to save ode prop"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_55} :catch_56

    goto :goto_70

    .line 303
    .end local v2    # "save":Z
    :catch_56
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 305
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_70
    :goto_70
    goto :goto_7f

    .line 306
    .end local v0    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :cond_71
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsVoldCompleteNotified:Z
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 307
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$600(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    goto :goto_80

    .line 306
    :cond_7f
    :goto_7f
    nop

    .line 309
    :goto_80
    return-void
.end method
