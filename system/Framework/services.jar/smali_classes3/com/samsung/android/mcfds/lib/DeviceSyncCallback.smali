.class public abstract Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;
.super Ljava/lang/Object;
.source "DeviceSyncCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceFound(Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;)V
    .registers 2
    .param p1, "device"    # Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    .line 8
    return-void
.end method

.method public onDeviceLost(Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;)V
    .registers 2
    .param p1, "device"    # Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    .line 14
    return-void
.end method

.method public onDeviceUpdated(Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;)V
    .registers 2
    .param p1, "device"    # Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    .line 11
    return-void
.end method
