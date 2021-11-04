.class public Lcom/android/server/KnoxCaptureInputFilter;
.super Landroid/view/InputFilter;
.source "KnoxCaptureInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final KNOXCAPTURE_HW_KEY_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final KNOXCAPTURE_HW_KEY_SCAN_INPUT:Ljava/lang/String; = "scanInput"

.field private static final MSG_END_OF_SCAN:I = 0x354

.field private static final MSG_NEXT_KEY_EVENT:I = 0x353

.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_TIME_FOR_LAST_SCAN_CHARACTER:J = 0x64L


# instance fields
.field private activeScanDeviceId:I

.field private activeScanInput:Ljava/lang/StringBuilder;

.field private final context:Landroid/content/Context;

.field private installed:Z

.field private final scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

.field private scannerDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/android/server/KnoxCaptureInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    .line 34
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 52
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter;->context:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScanEventThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v1, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;-><init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;Lcom/android/server/KnoxCaptureInputFilter$1;)V

    iput-object v1, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    .line 56
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanInput:Ljava/lang/StringBuilder;

    .line 58
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 28
    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/KnoxCaptureInputFilter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/KnoxCaptureInputFilter;

    .line 28
    iget v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/KnoxCaptureInputFilter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/KnoxCaptureInputFilter;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/KnoxCaptureInputFilter;I[B)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/KnoxCaptureInputFilter;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/server/KnoxCaptureInputFilter;->updateBarcodeDataFromhw(I[B)V

    return-void
.end method

.method private sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 116
    iget v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 118
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 123
    :cond_b
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    const/16 v1, 0x354

    invoke-virtual {v0, v1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->removeMessages(I)V

    .line 124
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    iget v2, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    if-ne v0, v2, :cond_30

    .line 126
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    const/16 v2, 0x353

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-static {v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    :cond_30
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 131
    return-void
.end method

.method private updateBarcodeDataFromhw(I[B)V
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "scanInput"    # [B

    .line 134
    const-string v0, "content://com.samsung.android.bbc.bbcagent/knoxCapture/updateBarcodeDataFromhw"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "deviceId"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string/jumbo v2, "scanInput"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 139
    iget-object v2, p0, Lcom/android/server/KnoxCaptureInputFilter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    return-void
.end method


# virtual methods
.method public markInputDeviceAsScanner(I)V
    .registers 5
    .param p1, "id"    # I

    .line 62
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 63
    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markInputDeviceAsScanner, inputDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1b
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 66
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_30
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 99
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 100
    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", policyFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_26
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2e

    .line 105
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_4c

    .line 106
    :cond_2e
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_4c

    .line 107
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 108
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-direct {p0, v0}, Lcom/android/server/KnoxCaptureInputFilter;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_4c

    .line 110
    :cond_49
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 113
    :cond_4c
    :goto_4c
    return-void
.end method

.method public onInstalled()V
    .registers 3

    .line 80
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 81
    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    const-string v1, "KnoxCapture input filter installed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->installed:Z

    .line 84
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 85
    return-void
.end method

.method public onUninstalled()V
    .registers 3

    .line 89
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 90
    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    const-string v1, "KnoxCapture input filter uninstalled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->installed:Z

    .line 93
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 94
    return-void
.end method

.method public unmarkInputDeviceAsScanner(I)V
    .registers 5
    .param p1, "id"    # I

    .line 72
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 73
    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unmarkInputDeviceAsScanner, inputDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1b
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method
