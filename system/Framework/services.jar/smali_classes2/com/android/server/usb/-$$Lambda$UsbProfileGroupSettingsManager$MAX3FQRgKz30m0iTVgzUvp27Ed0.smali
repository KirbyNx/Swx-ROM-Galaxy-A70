.class public final synthetic Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$MAX3FQRgKz30m0iTVgzUvp27Ed0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$MAX3FQRgKz30m0iTVgzUvp27Ed0;->f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$MAX3FQRgKz30m0iTVgzUvp27Ed0;->f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->lambda$scheduleWriteSettingsLocked$0$UsbProfileGroupSettingsManager()V

    return-void
.end method
