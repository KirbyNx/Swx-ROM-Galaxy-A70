.class public Lsamsung/uwb/IUwbCallback$Default;
.super Ljava/lang/Object;
.source "IUwbCallback.java"

# interfaces
.implements Lsamsung/uwb/IUwbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/IUwbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRangingDataReceived(Lsamsung/uwb/RangingData;)V
    .registers 2
    .param p1, "rangingData"    # Lsamsung/uwb/RangingData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public onRframeDataReceived(Lsamsung/uwb/RframeData;)V
    .registers 2
    .param p1, "rframeData"    # Lsamsung/uwb/RframeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public onSessionStatusChanged(II)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
