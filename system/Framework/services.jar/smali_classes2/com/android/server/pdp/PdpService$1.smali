.class Lcom/android/server/pdp/PdpService$1;
.super Landroid/os/HandlerThread;
.source "PdpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pdp/PdpService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pdp/PdpService;


# direct methods
.method constructor <init>(Lcom/android/server/pdp/PdpService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pdp/PdpService;
    .param p2, "name"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    new-instance v1, Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    iget-object v2, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    # getter for: Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Landroid/os/HandlerThread;
    invoke-static {v2}, Lcom/android/server/pdp/PdpService;->access$100(Lcom/android/server/pdp/PdpService;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pdp/PdpService$SvcPdpHandler;-><init>(Lcom/android/server/pdp/PdpService;Landroid/os/Looper;)V

    # setter for: Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;
    invoke-static {v0, v1}, Lcom/android/server/pdp/PdpService;->access$002(Lcom/android/server/pdp/PdpService;Lcom/android/server/pdp/PdpService$SvcPdpHandler;)Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    .line 155
    return-void
.end method
