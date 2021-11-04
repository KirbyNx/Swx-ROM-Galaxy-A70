.class Lcom/android/server/SEAMService$1;
.super Ljava/lang/Thread;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method constructor <init>(Lcom/android/server/SEAMService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/SEAMService;
    .param p2, "name"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/android/server/SEAMService$1;->this$0:Lcom/android/server/SEAMService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/android/server/SEAMService$1;->this$0:Lcom/android/server/SEAMService;

    # getter for: Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/SEAMService;->access$100(Lcom/android/server/SEAMService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/SEAMService$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/SEAMService$1$1;-><init>(Lcom/android/server/SEAMService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method
