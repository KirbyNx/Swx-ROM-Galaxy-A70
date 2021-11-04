.class Lcom/android/server/SEAMService$1$1;
.super Ljava/lang/Object;
.source "SEAMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SEAMService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/SEAMService$1;


# direct methods
.method constructor <init>(Lcom/android/server/SEAMService$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/SEAMService$1;

    .line 73
    iput-object p1, p0, Lcom/android/server/SEAMService$1$1;->this$1:Lcom/android/server/SEAMService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 75
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v0

    .line 76
    .local v0, "serviceKeeper":Lcom/android/server/ServiceKeeper;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    move-result v1

    .line 77
    .local v1, "ret":Z
    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_26

    .line 78
    # getter for: Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;
    invoke-static {}, Lcom/android/server/SEAMService;->access$000()Lcom/android/server/SKLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service Keeper Initialized = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SEAMService"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_26
    return-void
.end method
