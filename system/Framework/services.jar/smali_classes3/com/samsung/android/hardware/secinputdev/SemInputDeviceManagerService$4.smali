.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "SemInputDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    .line 255
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 259
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "mShutdownBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    # getter for: Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->access$100(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 262
    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    # getter for: Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->access$100(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2, v3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;->setTspEnable(IIZ)I

    move-result v1

    .line 263
    .local v1, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableInputDevice: ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3b} :catch_3d

    .line 266
    nop

    .end local v1    # "ret":I
    goto :goto_56

    .line 264
    :catch_3d
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableInputDevice: exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_56
    :goto_56
    return-void
.end method
