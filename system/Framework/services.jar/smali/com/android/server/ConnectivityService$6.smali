.class Lcom/android/server/ConnectivityService$6;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->startUsbTetheringWithStaticIpAddress()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 5690
    iput-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 5693
    iget-object v0, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTetherHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$8000(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_c

    .line 5694
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_15

    .line 5696
    :cond_c
    iget-object v0, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTetherHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$8000(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5698
    :goto_15
    return-void
.end method
