.class public Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;
.super Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub;
.source "BleAdapterCallbackWrapper.java"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

.field public mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/ble/BleAdapterCallback;Ljava/util/function/BiPredicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/mcf/ble/BleAdapterCallback;",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public getBleAdapterCallback()Lcom/samsung/android/mcf/ble/BleAdapterCallback;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/ble/BleAdapterCallback;)Z
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onMcfServiceStateChanged(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 37
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/ble/BleAdapterCallback;->onMcfServiceStateChanged(II)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    .line 40
    :catch_16
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_1a
    :goto_1a
    return-void
.end method
