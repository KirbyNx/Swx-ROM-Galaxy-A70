.class public Lcom/android/server/eas/ExternalAccessoryService;
.super Ljava/lang/Object;
.source "ExternalAccessoryService.java"


# static fields
.field public static final ACTION_SEND_EAS_INFO:Ljava/lang/String; = "com.android.server.eas.SEND_INFO"

.field private static final TAG:Ljava/lang/String; = "ExternalAccessoryService"

.field private static final USB_CCIC_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUsbCcicObserver:Landroid/os/UEventObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/android/server/eas/ExternalAccessoryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/eas/ExternalAccessoryService$1;-><init>(Lcom/android/server/eas/ExternalAccessoryService;)V

    iput-object v0, p0, Lcom/android/server/eas/ExternalAccessoryService;->mUsbCcicObserver:Landroid/os/UEventObserver;

    .line 18
    iput-object p1, p0, Lcom/android/server/eas/ExternalAccessoryService;->mContext:Landroid/content/Context;

    .line 20
    const-string v0, "ExternalAccessoryService"

    const-string/jumbo v1, "startObserving USB_CCIC_UEVENT"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lcom/android/server/eas/ExternalAccessoryService;->mUsbCcicObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/eas/ExternalAccessoryService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/eas/ExternalAccessoryService;

    .line 11
    iget-object v0, p0, Lcom/android/server/eas/ExternalAccessoryService;->mContext:Landroid/content/Context;

    return-object v0
.end method
