.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$smiscinputhandler;
.super Landroid/os/Handler;
.source "SemInputDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "smiscinputhandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 517
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;

    .line 517
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$smiscinputhandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 520
    iget v0, p1, Landroid/os/Message;->what:I

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-void
.end method
