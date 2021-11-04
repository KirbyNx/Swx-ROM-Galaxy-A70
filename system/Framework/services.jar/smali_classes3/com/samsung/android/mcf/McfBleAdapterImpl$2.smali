.class public Lcom/samsung/android/mcf/McfBleAdapterImpl$2;
.super Ljava/lang/Object;
.source "McfBleAdapterImpl.java"

# interfaces
.implements Lcom/samsung/android/mcf/ble/BleScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfBleAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/McfBleAdapterImpl;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFilterBundles(Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Lcom/samsung/android/mcf/ble/BleScanSettings;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v1, v1, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter.size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getFilterBundles"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 256
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_52

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/BleScanFilter;->isOnlyIrkFilter()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 257
    invoke-virtual {p2}, Lcom/samsung/android/mcf/ble/BleScanSettings;->getTimeout()I

    move-result v2

    const/16 v3, 0x7530

    if-gt v2, v3, :cond_4a

    goto :goto_52

    .line 258
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scan with only Irk filter can not run more than 30 secs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    :goto_52
    const/4 v2, 0x0

    .line 260
    invoke-virtual {v1, v2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_5b
    return-object v0
.end method


# virtual methods
.method public startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Lcom/samsung/android/mcf/ble/BleScanSettings;",
            "Lcom/samsung/android/mcf/ble/BleScanCallback;",
            ")Z"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;

    const-string v1, "startScan"

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 219
    iget-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - already started"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1b
    if-nez p1, :cond_29

    if-nez p2, :cond_29

    .line 223
    iget-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string p2, "Ignore - both(screenOn/ScreenOff) filters are null"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 227
    :cond_29
    new-instance v0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;

    invoke-direct {v0, p4}, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ble/BleScanCallback;)V

    .line 228
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_47

    .line 233
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->getFilterBundles(Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v3, "bleScanOnFilter"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_47
    if-eqz p2, :cond_52

    .line 237
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->getFilterBundles(Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "bleScanOffFilter"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 240
    :cond_52
    invoke-virtual {p3, v1}, Lcom/samsung/android/mcf/ble/BleScanSettings;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 241
    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string p2, "bleScanCallback"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 242
    iget-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    const/16 p2, 0x192

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_72

    .line 244
    iget-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_72
    const/4 p1, 0x1

    return p1
.end method

.method public stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .registers 6

    .line 267
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;

    const-string v1, "stopScan"

    if-nez v0, :cond_1b

    .line 269
    iget-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object p1, p1, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v0, "Ignore - not started"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 272
    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v2, v2, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 276
    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "bleScanCallback"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    const/16 v1, 0x193

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    const/4 p1, 0x1

    return p1
.end method
