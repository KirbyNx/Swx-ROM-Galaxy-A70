.class public abstract Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
.super Ljava/lang/Object;
.source "McfDeviceDiscoverCallback.java"


# static fields
.field public static final SCAN_STOPPED_BY_TIMEOUT:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 3

    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 3

    return-void
.end method

.method public onDiscoveryStarted(I)V
    .registers 2

    return-void
.end method

.method public onDiscoveryStopped(I)V
    .registers 2

    return-void
.end method
