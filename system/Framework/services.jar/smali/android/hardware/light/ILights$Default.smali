.class public Landroid/hardware/light/ILights$Default;
.super Ljava/lang/Object;
.source "ILights.java"

# interfaces
.implements Landroid/hardware/light/ILights;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/light/ILights;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getLights()[Landroid/hardware/light/HwLight;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public setLightState(ILandroid/hardware/light/HwLightState;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "state"    # Landroid/hardware/light/HwLightState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
