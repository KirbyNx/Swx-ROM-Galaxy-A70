.class final Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;
.super Landroid/os/Handler;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KioskHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 279
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 280
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 286
    if-eqz p1, :cond_46

    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "adminuid"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_27

    const/4 v4, 0x2

    if-eq v0, v4, :cond_e

    goto :goto_46

    .line 298
    :cond_e
    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$302(Z)Z

    .line 299
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 300
    .local v0, "disableData":Landroid/os/Bundle;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 301
    .local v2, "adminUid":I
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V
    invoke-static {v3, v5, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$500(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;I)V

    .line 302
    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$302(Z)Z

    .line 303
    goto :goto_46

    .line 289
    .end local v0    # "disableData":Landroid/os/Bundle;
    .end local v2    # "adminUid":I
    :cond_27
    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$302(Z)Z

    .line 290
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 291
    .local v0, "enableData":Landroid/os/Bundle;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 292
    .restart local v2    # "adminUid":I
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "kioskPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$400(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 294
    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$302(Z)Z

    .line 309
    .end local v0    # "enableData":Landroid/os/Bundle;
    .end local v2    # "adminUid":I
    .end local v3    # "kioskPackage":Ljava/lang/String;
    :cond_46
    :goto_46
    return-void
.end method
