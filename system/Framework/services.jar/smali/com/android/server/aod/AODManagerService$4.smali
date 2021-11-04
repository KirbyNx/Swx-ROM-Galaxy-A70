.class Lcom/android/server/aod/AODManagerService$4;
.super Landroid/os/Handler;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/aod/AODManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 246
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_7

    goto :goto_18

    .line 250
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 251
    .local v0, "appLogsBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "logs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 252
    .local v1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->addAODAppLog(Ljava/util/List;)V
    invoke-static {v2, v1}, Lcom/android/server/aod/AODManagerService;->access$1100(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V

    .line 253
    nop

    .line 257
    .end local v0    # "appLogsBundle":Landroid/os/Bundle;
    .end local v1    # "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_18
    return-void
.end method
