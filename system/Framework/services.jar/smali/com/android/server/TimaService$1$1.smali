.class Lcom/android/server/TimaService$1$1;
.super Ljava/lang/Thread;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TimaService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/TimaService$1;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/TimaService$1;

    .line 2470
    iput-object p1, p0, Lcom/android/server/TimaService$1$1;->this$1:Lcom/android/server/TimaService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2473
    iget-object v0, p0, Lcom/android/server/TimaService$1$1;->this$1:Lcom/android/server/TimaService$1;

    iget-object v0, v0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->setKapBuildProp()V
    invoke-static {v0}, Lcom/android/server/TimaService;->access$500(Lcom/android/server/TimaService;)V

    .line 2475
    iget-object v0, p0, Lcom/android/server/TimaService$1$1;->this$1:Lcom/android/server/TimaService$1;

    iget-object v0, v0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isCCMRedirectionModel()Z
    invoke-static {v0}, Lcom/android/server/TimaService;->access$600(Lcom/android/server/TimaService;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2476
    iget-object v0, p0, Lcom/android/server/TimaService$1$1;->this$1:Lcom/android/server/TimaService$1;

    iget-object v0, v0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->getCCMVersionBoot()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/TimaService;->access$700(Lcom/android/server/TimaService;)Ljava/lang/String;

    .line 2479
    :cond_18
    iget-object v0, p0, Lcom/android/server/TimaService$1$1;->this$1:Lcom/android/server/TimaService$1;

    iget-object v0, v0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->startAttestationBoot()V
    invoke-static {v0}, Lcom/android/server/TimaService;->access$800(Lcom/android/server/TimaService;)V

    .line 2480
    return-void
.end method
