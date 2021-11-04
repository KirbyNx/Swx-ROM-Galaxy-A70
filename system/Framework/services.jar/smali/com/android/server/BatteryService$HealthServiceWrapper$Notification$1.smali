.class Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    .line 4231
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 4235
    const-string v0, "HealthServiceWrapper"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v1, v1, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mHealthSupplier:Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;
    invoke-static {v1}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$8000(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v2, v2, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$7900(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;->get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v1

    .line 4236
    .local v1, "newService":Landroid/hardware/health/V2_0/IHealth;
    iget-object v2, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v2, v2, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$8100(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/health/V2_0/IHealth;

    .line 4239
    .local v2, "oldService":Landroid/hardware/health/V2_0/IHealth;
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return-void

    .line 4241
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "health: new instance registered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v4, v4, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$7900(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    iget-object v3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v3, v3, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;
    invoke-static {v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$8200(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v4, v4, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$7900(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v1, v4}, Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;->onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_5b} :catch_64
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5b} :catch_64
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_5b} :catch_5c

    .end local v1    # "newService":Landroid/hardware/health/V2_0/IHealth;
    .end local v2    # "oldService":Landroid/hardware/health/V2_0/IHealth;
    goto :goto_93

    .line 4246
    :catch_5c
    move-exception v1

    .line 4247
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "health: NullPointerException"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 4243
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_64
    move-exception v1

    .line 4244
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: Cannot get instance \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v3, v3, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$7900(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4245
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Perhaps no permission?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4244
    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_93
    nop

    .line 4249
    :goto_94
    return-void
.end method
