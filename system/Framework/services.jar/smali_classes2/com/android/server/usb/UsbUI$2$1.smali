.class Lcom/android/server/usb/UsbUI$2$1;
.super Ljava/lang/Object;
.source "UsbUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbUI$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbUI$2;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbUI$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/usb/UsbUI$2;

    .line 217
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$2$1;->this$1:Lcom/android/server/usb/UsbUI$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 219
    if-eqz p1, :cond_5

    .line 220
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 222
    :cond_5
    return-void
.end method
