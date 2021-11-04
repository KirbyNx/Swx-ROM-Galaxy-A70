.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;
.super Landroid/os/Handler;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KioskHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/knox/custom/KnoxCustomManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 10883
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10884
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10885
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 10889
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 10890
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # invokes: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->closeLauncherApp()V
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$2200(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    goto :goto_45

    .line 10891
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_31

    .line 10892
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10893
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10894
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10895
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$200(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_44

    .line 10896
    :cond_31
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_44

    .line 10897
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mPhoneStatusBarInit:Z
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1600(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 10898
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # invokes: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->initialiseSystemUi()V
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1700(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    goto :goto_45

    .line 10896
    :cond_44
    :goto_44
    nop

    .line 10901
    :cond_45
    :goto_45
    return-void
.end method
