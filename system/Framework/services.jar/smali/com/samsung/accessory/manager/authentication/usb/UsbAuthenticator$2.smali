.class Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;
.super Ljava/lang/Object;
.source "UsbAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 101
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 104
    # getter for: Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 106
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$302(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;I)I

    .line 107
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$100(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 108
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const-wide/16 v2, 0x0

    # invokes: Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$400(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;ZJ)V

    .line 109
    :cond_29
    return-void
.end method
